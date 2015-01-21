.class public Lcom/powermo/connectivity/services/AndroidServiceRootServer;
.super Lcom/powermo/base/AndroidServiceBase;


# static fields
.field private static final b:Ljava/lang/String;


# instance fields
.field private c:Z

.field private d:Lcom/powermo/connectivity/rpc/RootServer;

.field private e:I

.field private f:I

.field private g:Ljava/lang/String;

.field private h:Z

.field private final i:Lcom/powermo/connectivity/services/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "AndroidServiceRootServer"

    invoke-static {v0}, Lcom/powermo/base/f;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->b:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/powermo/base/AndroidServiceBase;-><init>()V

    iput-boolean v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    iput v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->e:I

    iput v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->f:I

    const-string v0, ""

    iput-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->g:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->h:Z

    new-instance v0, Lcom/powermo/connectivity/services/a;

    invoke-direct {v0, p0}, Lcom/powermo/connectivity/services/a;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)V

    iput-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->i:Lcom/powermo/connectivity/services/a;

    return-void
.end method

.method static synthetic a(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->g:Ljava/lang/String;

    return-object v0
.end method

.method private b(I)V
    .locals 7

    const/high16 v4, 0x20

    const/high16 v3, 0x10

    const/4 v0, 0x0

    iget-object v6, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->i:Lcom/powermo/connectivity/services/a;

    monitor-enter v6

    :try_start_0
    iget-boolean v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    if-eqz v1, :cond_0

    monitor-exit v6

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/powermo/connectivity/rpc/RootServer;

    invoke-direct {v1}, Lcom/powermo/connectivity/rpc/RootServer;-><init>()V

    iput-object v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->j()Z

    move-result v1

    if-nez v1, :cond_1

    const/high16 v0, 0x200

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/usr/idc/input_proxy.idc"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    or-int/2addr v0, v3

    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/dev/uinput"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1}, Ljava/io/File;->canRead()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    new-instance v2, Ljava/io/File;

    and-int v1, v0, v3

    if-eqz v1, :cond_5

    const-string v1, "/data/com.powermo.input.sock.qwerty"

    :goto_1
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v2}, Ljava/io/File;->canWrite()Z

    move-result v1

    if-eqz v1, :cond_6

    or-int/2addr v0, v4

    :cond_4
    :goto_2
    iput v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->f:I

    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->g()Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->f:I

    move v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/powermo/connectivity/rpc/RootServer;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    invoke-virtual {v0}, Lcom/powermo/connectivity/rpc/RootServer;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0

    :cond_5
    :try_start_1
    const-string v1, "/data/com.powermo.input.sock.input_proxy"

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->k()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->h:Z

    if-nez v1, :cond_7

    new-instance v1, Lcom/powermo/connectivity/services/b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powermo/connectivity/services/b;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;B)V

    invoke-virtual {v1}, Lcom/powermo/base/r;->b()Z

    new-instance v1, Lcom/powermo/connectivity/services/c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/powermo/connectivity/services/c;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;B)V

    invoke-virtual {v1}, Lcom/powermo/base/r;->b()Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->h:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_7
    or-int/2addr v0, v4

    goto :goto_2

    :cond_8
    const/high16 v1, 0x100

    or-int/2addr v0, v1

    goto :goto_2
.end method

.method static synthetic b(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->j()Z

    move-result v0

    return v0
.end method

.method static synthetic c(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/services/a;
    .locals 1

    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->i:Lcom/powermo/connectivity/services/a;

    return-object v0
.end method

.method private c(Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/16 v1, 0x1000

    :try_start_0
    new-array v1, v1, [B

    invoke-virtual {p0, p1}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->deleteFile(Ljava/lang/String;)Z

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v2

    invoke-virtual {v0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-gtz v3, :cond_0

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :goto_1
    return-void

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/powermo/connectivity/services/AndroidServiceRootServer;)Lcom/powermo/connectivity/rpc/RootServer;
    .locals 1

    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    return-object v0
.end method

.method static synthetic m()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->o()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private n()V
    .locals 4

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->i()Z

    move-result v0

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->h()I

    move-result v1

    iget-boolean v2, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    if-eq v0, v2, :cond_3

    if-nez v0, :cond_1

    sget-object v2, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->b:Ljava/lang/String;

    const-string v3, "Disabling PMRS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->b(I)V

    iput v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->e:I

    :cond_0
    :goto_1
    return-void

    :cond_1
    sget-object v2, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->b:Ljava/lang/String;

    const-string v3, "Enabling PMRS"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->p()V

    goto :goto_1

    :cond_3
    iget-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->e:I

    if-eq v0, v1, :cond_0

    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->p()V

    invoke-direct {p0, v1}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->b(I)V

    iput v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->e:I

    goto :goto_1
.end method

.method private static o()Ljava/lang/String;
    .locals 2

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    const-string v1, "x86"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "x86"

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "arm"

    goto :goto_0
.end method

.method private p()V
    .locals 3

    iget-object v1, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->i:Lcom/powermo/connectivity/services/a;

    monitor-enter v1

    :try_start_0
    iget-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    if-nez v0, :cond_0

    monitor-exit v1

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    invoke-virtual {v0}, Lcom/powermo/connectivity/rpc/RootServer;->c()V

    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    invoke-virtual {v0}, Lcom/powermo/connectivity/rpc/RootServer;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    const/4 v0, 0x0

    iput v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->f:I

    iget-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->h:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/powermo/connectivity/services/d;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/powermo/connectivity/services/d;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;B)V

    invoke-virtual {v0}, Lcom/powermo/base/r;->b()Z

    new-instance v0, Lcom/powermo/connectivity/services/e;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/powermo/connectivity/services/e;-><init>(Lcom/powermo/connectivity/services/AndroidServiceRootServer;B)V

    invoke-virtual {v0}, Lcom/powermo/base/r;->b()Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->h:Z

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method protected a()Ljava/lang/String;
    .locals 1

    const-string v0, "config.pmrsv1.enable"

    return-object v0
.end method

.method protected a(I)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->n()V

    return-void
.end method

.method protected a(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->n()V

    return-void
.end method

.method protected a(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->n()V

    return-void
.end method

.method protected b()V
    .locals 0

    return-void
.end method

.method protected b(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->n()V

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()Ljava/lang/String;
    .locals 1

    const-string v0, "com.powermo.connectivity.services.AndroidServiceRootServer.WORK"

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->i:Lcom/powermo/connectivity/services/a;

    return-object v0
.end method

.method public onCreate()V
    .locals 2

    invoke-super {p0}, Lcom/powermo/base/AndroidServiceBase;->onCreate()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pm_sainputserver."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->g:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    return-void
.end method

.method public onDestroy()V
    .locals 1

    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->p()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->d:Lcom/powermo/connectivity/rpc/RootServer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->c:Z

    invoke-super {p0}, Lcom/powermo/base/AndroidServiceBase;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    invoke-virtual {p0, p1}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->a(Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/powermo/connectivity/services/AndroidServiceRootServer;->n()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

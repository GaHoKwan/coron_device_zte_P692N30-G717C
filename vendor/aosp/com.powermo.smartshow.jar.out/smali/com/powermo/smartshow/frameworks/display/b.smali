.class final Lcom/powermo/smartshow/frameworks/display/b;
.super Ljava/lang/Object;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

.field private b:I

.field private c:Lcom/powermo/smartshow/frameworks/display/a;

.field private d:I

.field private e:I

.field private f:Ljava/lang/String;

.field private g:I

.field private h:Landroid/view/Surface;

.field private i:I


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Ljava/lang/String;Landroid/view/Surface;IIIII)V
    .locals 1

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/display/b;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/powermo/smartshow/frameworks/display/b;->f:Ljava/lang/String;

    iput p4, p0, Lcom/powermo/smartshow/frameworks/display/b;->e:I

    iput p5, p0, Lcom/powermo/smartshow/frameworks/display/b;->i:I

    iput p6, p0, Lcom/powermo/smartshow/frameworks/display/b;->d:I

    iput p7, p0, Lcom/powermo/smartshow/frameworks/display/b;->b:I

    iput p8, p0, Lcom/powermo/smartshow/frameworks/display/b;->g:I

    iput-object p3, p0, Lcom/powermo/smartshow/frameworks/display/b;->h:Landroid/view/Surface;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->h:Landroid/view/Surface;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/display/b;->a()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 10

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v9

    monitor-enter v9

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->f:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/view/Surface;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v2

    new-instance v0, Lcom/powermo/smartshow/frameworks/display/a;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/display/b;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    iget-object v3, p0, Lcom/powermo/smartshow/frameworks/display/b;->f:Ljava/lang/String;

    iget v4, p0, Lcom/powermo/smartshow/frameworks/display/b;->i:I

    iget v5, p0, Lcom/powermo/smartshow/frameworks/display/b;->d:I

    iget v6, p0, Lcom/powermo/smartshow/frameworks/display/b;->g:I

    int-to-float v6, v6

    iget v7, p0, Lcom/powermo/smartshow/frameworks/display/b;->b:I

    iget-object v8, p0, Lcom/powermo/smartshow/frameworks/display/b;->h:Landroid/view/Surface;

    invoke-direct/range {v0 .. v8}, Lcom/powermo/smartshow/frameworks/display/a;-><init>(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILandroid/view/Surface;)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->c:Lcom/powermo/smartshow/frameworks/display/a;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->c:Lcom/powermo/smartshow/frameworks/display/a;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/b;->e:I

    iput v1, v0, Lcom/powermo/smartshow/frameworks/display/a;->defaultDisplayId:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/display/b;->c:Lcom/powermo/smartshow/frameworks/display/a;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Ljava/io/PrintWriter;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/display/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mWidth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/b;->i:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/b;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDensityDpi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/b;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->c:Lcom/powermo/smartshow/frameworks/display/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->c:Lcom/powermo/smartshow/frameworks/display/a;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/display/a;->a()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/b;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/display/b;->c:Lcom/powermo/smartshow/frameworks/display/a;

    const/4 v3, 0x3

    invoke-static {v0, v2, v3}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->b(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

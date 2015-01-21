.class final Lcom/powermo/smartshow/frameworks/display/a;
.super Lcom/android/server/display/DisplayDevice;


# instance fields
.field final synthetic a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

.field private final b:I

.field private final c:I

.field private d:Lcom/android/server/display/DisplayDeviceInfo;

.field private final e:Ljava/lang/String;

.field private final f:F

.field private g:Landroid/view/Surface;

.field private final h:I


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;IIFILandroid/view/Surface;)V
    .locals 0

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/display/a;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;)V

    iput-object p3, p0, Lcom/powermo/smartshow/frameworks/display/a;->e:Ljava/lang/String;

    iput p4, p0, Lcom/powermo/smartshow/frameworks/display/a;->h:I

    iput p5, p0, Lcom/powermo/smartshow/frameworks/display/a;->c:I

    iput p6, p0, Lcom/powermo/smartshow/frameworks/display/a;->f:F

    iput p7, p0, Lcom/powermo/smartshow/frameworks/display/a;->b:I

    iput-object p8, p0, Lcom/powermo/smartshow/frameworks/display/a;->g:Landroid/view/Surface;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    const-string v0, "RemoteThumbnailControllerDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "clear surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/display/a;->g:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->g:Landroid/view/Surface;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->g:Landroid/view/Surface;

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->a:Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;

    invoke-static {v0}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;)V

    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/display/a;->e:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/a;->h:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/a;->c:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/a;->f:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/a;->b:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/a;->b:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/powermo/smartshow/frameworks/display/a;->b:I

    int-to-float v1, v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v1, 0xf

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->d:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public performTraversalInTransactionLocked()V
    .locals 3

    const-string v0, "RemoteThumbnailControllerDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set surface "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/display/a;->g:Landroid/view/Surface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->g:Landroid/view/Surface;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/a;->g:Landroid/view/Surface;

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/display/a;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/powermo/smartshow/frameworks/display/a;->setSurfaceInTransactionLocked(Landroid/view/Surface;)V

    goto :goto_0
.end method

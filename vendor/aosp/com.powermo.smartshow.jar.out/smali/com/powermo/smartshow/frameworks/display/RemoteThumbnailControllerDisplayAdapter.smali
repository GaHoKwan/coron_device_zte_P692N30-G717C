.class final Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;


# instance fields
.field private final a:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Landroid/os/Handler;)V
    .locals 6

    const-string v5, "RemoteThumbnailControllerDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;)V
    .locals 0

    invoke-virtual {p0}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->sendTraversalRequestLocked()V

    return-void
.end method

.method static synthetic a(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method static synthetic b(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Lcom/android/server/display/DisplayDevice;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method


# virtual methods
.method public addRemoteThumbnailControllerDisplayLocked(Ljava/lang/String;Landroid/view/Surface;III)V
    .locals 9

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/display/b;

    if-eqz v0, :cond_0

    const-string v0, "RemoteThumbnailControllerDisplayAdapter"

    const-string v1, "The remote ThumbnailController display has been created"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/powermo/smartshow/frameworks/display/b;

    const/16 v7, 0xa0

    const/16 v8, 0x3c

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/powermo/smartshow/frameworks/display/b;-><init>(Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;Ljava/lang/String;Landroid/view/Surface;IIIII)V

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThumbnailControllers: size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/Surface;

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/display/b;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/display/b;->a(Ljava/io/PrintWriter;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeRemoteThumbnailControllerDisplayLocked(Landroid/view/Surface;)V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/powermo/smartshow/frameworks/display/b;

    if-nez v0, :cond_0

    const-string v0, "RemoteThumbnailControllerDisplayAdapter"

    const-string v1, "The remote ThumbnailController display doesn\'t exist"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/display/b;->b()V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/display/RemoteThumbnailControllerDisplayAdapter;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

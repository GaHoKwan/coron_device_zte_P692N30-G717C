.class public Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;
.super Landroid/content/SmartShowContext;


# static fields
.field private static a:I

.field private static b:Ljava/lang/String;


# instance fields
.field private c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

.field private d:Lcom/powermo/smartshow/frameworks/m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SmartShowContextProxy"

    sput-object v0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->b:Ljava/lang/String;

    const/16 v0, 0xa

    sput v0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->a:I

    const-string v0, "smartshow"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/content/SmartShowContext;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-static {}, Lcom/powermo/smartshow/frameworks/q;->getDefault()Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    new-instance v0, Lcom/powermo/smartshow/frameworks/m;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->a:I

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {v0, p0, v1}, Lcom/powermo/smartshow/frameworks/m;-><init>(Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;I)V

    iput-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->b:Ljava/lang/String;

    return-object v0
.end method

.method public static native native_symlink(Ljava/lang/String;Ljava/lang/String;)V
.end method


# virtual methods
.method public allowIMEFullscreen()Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    sget v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_ALLOW_IME_FULLSCREEN:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-lez v2, :cond_0

    move v0, v1

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    move v0, v1

    goto :goto_0
.end method

.method public bindAudio(Ljava/lang/String;II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getContextId()I
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextId()I

    move-result v0

    return v0
.end method

.method public getContextId(Landroid/os/IBinder;)I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->getContextId(Landroid/os/IBinder;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDisplayId(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_DISPLAY_ID:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getMode()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    invoke-interface {v0}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->getMode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParameters(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getScreen(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_SCREEN:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getTaskId()I
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getTaskId()I

    move-result v0

    return v0
.end method

.method public getTaskId(I)I
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    sget v1, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_GET_TASK_ID:I

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public perform(IILjava/lang/Object;)I
    .locals 1

    if-eqz p3, :cond_0

    instance-of v0, p3, Ljava/lang/String;

    if-eqz v0, :cond_1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    check-cast p3, Ljava/lang/String;

    invoke-interface {v0, p1, p2, p3}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public popContextAndTaskId()V
    .locals 2

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/m;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/m;->c()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/m;->d()I

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/m;->d()I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/m;->d()I

    move-result v0

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/m;->d()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->setContextAndTaskId(II)V

    goto :goto_0
.end method

.method public pushContextAndTaskId(II)V
    .locals 1

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/m;->a(I)V

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->d:Lcom/powermo/smartshow/frameworks/m;

    invoke-virtual {v0, p2}, Lcom/powermo/smartshow/frameworks/m;->a(I)V

    invoke-virtual {p0, p1, p2}, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->setContextAndTaskId(II)V

    return-void
.end method

.method public setAudioForceLocal(Z)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    sget v3, Lcom/powermo/smartshow/frameworks/SmartShowManager;->PERFORM_AUDIO_FORCE_LOCAL:I

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :goto_0
    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->perform(IILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_1
    return v0

    :cond_0
    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public setContextAndTaskId(II)V
    .locals 1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/Thread;->setContextAndTaskId(II)V

    return-void
.end method

.method public setParameters(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public symlink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p1, p2}, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->native_symlink(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateData([B)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/SmartShowContextProxy;->c:Lcom/powermo/smartshow/frameworks/ISmartShowManager;

    invoke-interface {v0, p1}, Lcom/powermo/smartshow/frameworks/ISmartShowManager;->updateData([B)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

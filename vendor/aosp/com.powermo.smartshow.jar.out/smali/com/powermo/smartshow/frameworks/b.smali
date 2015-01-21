.class public Lcom/powermo/smartshow/frameworks/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/powermo/smartshow/frameworks/ISmartShowDisplayPolicy;


# instance fields
.field a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;


# direct methods
.method public constructor <init>(Lcom/powermo/smartshow/frameworks/SmartShowManagerService;)V
    .locals 0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    return-void
.end method


# virtual methods
.method public a(IILjava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    if-eq p1, p2, :cond_0

    const/16 v0, 0x480

    :cond_0
    return v0
.end method

.method public a(ILjava/lang/Object;)I
    .locals 3

    const/4 v1, 0x0

    if-eqz p2, :cond_4

    instance-of v0, p2, Lcom/android/server/am/a;

    if-eqz v0, :cond_4

    check-cast p2, Lcom/android/server/am/a;

    invoke-virtual {p2}, Lcom/android/server/am/a;->f()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p2, Lcom/android/server/am/a;->b:Z

    if-nez v0, :cond_0

    const-string v0, "com.android.systemui"

    invoke-virtual {p2}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move v0, v1

    :cond_1
    :goto_0
    return v0

    :cond_2
    invoke-virtual {p2}, Lcom/android/server/am/a;->i()I

    move-result p1

    invoke-virtual {p2}, Lcom/android/server/am/a;->g()I

    move-result v0

    if-nez p1, :cond_3

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v2}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    invoke-virtual {p0, v0, p2}, Lcom/powermo/smartshow/frameworks/b;->c(ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v2, v2, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->t:Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;

    invoke-virtual {v2, v0, v1}, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->getSpecialDisplayId(IZ)I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v0

    if-eqz v0, :cond_5

    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->c(I)I

    move-result v0

    goto :goto_0

    :cond_5
    sget v0, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-ge p1, v0, :cond_7

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d(I)Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    move-result-object v0

    :cond_6
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getDisplayId()I

    move-result v0

    goto :goto_0

    :cond_7
    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    const/4 v0, 0x0

    if-ne p1, v2, :cond_6

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-virtual {v0, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d(I)Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    move-result-object v0

    goto :goto_1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/android/server/am/a;

    if-eqz v1, :cond_0

    check-cast p1, Lcom/android/server/am/a;

    iget-boolean v1, p1, Lcom/android/server/am/a;->b:Z

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.powermo.smartbar"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 1

    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public b(ILjava/lang/Object;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    instance-of v1, p2, Lcom/android/server/am/a;

    if-eqz v1, :cond_2

    check-cast p2, Lcom/android/server/am/a;

    invoke-virtual {p2}, Lcom/android/server/am/a;->f()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p2, Lcom/android/server/am/a;->b:Z

    if-nez v1, :cond_0

    const-string v1, "com.android.systemui"

    invoke-virtual {p2}, Lcom/android/server/am/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p2}, Lcom/android/server/am/a;->i()I

    move-result p1

    :cond_2
    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v1, v1, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/ad;->k()Z

    move-result v1

    if-eqz v1, :cond_3

    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-ge p1, v1, :cond_3

    iget-object v0, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    iget-object v0, v0, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->q:Lcom/powermo/smartshow/frameworks/ad;

    invoke-virtual {v0, p1}, Lcom/powermo/smartshow/frameworks/ad;->d(I)I

    move-result v0

    goto :goto_0

    :cond_3
    sget v1, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    if-ge p1, v1, :cond_5

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->LOCAL_DEVICE_ID:I

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d(I)Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    move-result-object v1

    :cond_4
    :goto_1
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;->getDisplayId()I

    move-result v0

    goto :goto_0

    :cond_5
    sget v2, Lcom/powermo/smartshow/frameworks/FullSmartShowContextImpl;->MAX_LOCAL_SCREEN_COUNT:I

    const/4 v1, 0x0

    if-ne p1, v2, :cond_4

    iget-object v1, p0, Lcom/powermo/smartshow/frameworks/b;->a:Lcom/powermo/smartshow/frameworks/SmartShowManagerService;

    sget v2, Lcom/powermo/smartshow/frameworks/SmartShowManager;->DEFAULT_EXT_DEVICE_ID:I

    invoke-virtual {v1, v2}, Lcom/powermo/smartshow/frameworks/SmartShowManagerService;->d(I)Lcom/powermo/smartshow/frameworks/SmartShowDeviceInfo;

    move-result-object v1

    goto :goto_1
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public c(ILjava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/android/server/am/a;

    if-eqz v1, :cond_0

    check-cast p2, Lcom/android/server/am/a;

    invoke-virtual {p2}, Lcom/android/server/am/a;->g()I

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_1

    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_2

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public d(ILjava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(Ljava/lang/Object;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

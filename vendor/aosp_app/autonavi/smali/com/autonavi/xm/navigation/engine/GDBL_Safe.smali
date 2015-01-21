.class public Lcom/autonavi/xm/navigation/engine/GDBL_Safe;
.super Ljava/lang/Object;


# static fields
.field public static final MAX_CLASS_NAME_LEN:I = 0x40

.field private static mGDBL_Safe:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final declared-synchronized getInstance()Lcom/autonavi/xm/navigation/engine/GDBL_Safe;
    .locals 2

    const-class v1, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->mGDBL_Safe:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    invoke-direct {v0}, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;-><init>()V

    sput-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->mGDBL_Safe:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;

    :cond_0
    sget-object v0, Lcom/autonavi/xm/navigation/engine/GDBL_Safe;->mGDBL_Safe:Lcom/autonavi/xm/navigation/engine/GDBL_Safe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method Clearup()Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method public GDBL_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_AddUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_ClearUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_DelUserSafeInfo(II)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_DelUserSafeInfo(II)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_EditUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_EditUserSafeInfo(Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfo;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_GetUserSafeInfoList(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    invoke-static {p1, p2}, Lcom/autonavi/xm/navigation/engine/NativeNaviMid;->GDMID_GetUserSafeInfoList(Lcom/autonavi/xm/navigation/server/safe/GSafeCategory;[Lcom/autonavi/xm/navigation/server/safe/GUserSafeInfoList;)Lcom/autonavi/xm/navigation/server/GStatus;

    move-result-object v0

    return-object v0
.end method

.method public GDBL_SetUserSafePath(Ljava/lang/String;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

.method Startup(Landroid/os/Looper;)Lcom/autonavi/xm/navigation/server/GStatus;
    .locals 1

    sget-object v0, Lcom/autonavi/xm/navigation/server/GStatus;->GD_ERR_OK:Lcom/autonavi/xm/navigation/server/GStatus;

    return-object v0
.end method

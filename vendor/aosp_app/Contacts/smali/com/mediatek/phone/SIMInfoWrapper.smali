.class public Lcom/mediatek/phone/SIMInfoWrapper;
.super Ljava/lang/Object;
.source "SIMInfoWrapper.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "SIMInfoWrapper"

.field private static mAllSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static mInsertedSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsNullResult:Z

.field private static sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;


# instance fields
.field private mAllSimInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mInsertedSimInfoMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNeedToInitSimInfo:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimIdSlotIdPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

.field private mSlotIdSimIdPairs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 23
    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 24
    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 443
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/phone/SIMInfoWrapper;->sIsNullResult:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 27
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    .line 31
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    .line 422
    new-instance v0, Lcom/mediatek/phone/SIMInfoWrapper$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/SIMInfoWrapper$1;-><init>(Lcom/mediatek/phone/SIMInfoWrapper;)V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    .line 101
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    .line 102
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 18
    invoke-static {p0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I
    .locals 4
    .parameter "item"

    .prologue
    .line 105
    if-eqz p1, :cond_0

    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 106
    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v0, v0

    .line 112
    :goto_0
    return v0

    .line 109
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getCheckedSimId]Wrong simId is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-nez p1, :cond_1

    const-wide/16 v0, -0x1

    :goto_1
    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 112
    const/4 v0, -0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-wide v0, p1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    goto :goto_1
.end method

.method public static declared-synchronized getDefault()Lcom/mediatek/phone/SIMInfoWrapper;
    .locals 3

    .prologue
    .line 124
    const-class v1, Lcom/mediatek/phone/SIMInfoWrapper;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/mediatek/phone/SIMInfoWrapper;->sIsNullResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 125
    const/4 v0, 0x0

    .line 143
    :goto_0
    monitor-exit v1

    return-object v0

    .line 127
    :cond_0
    :try_start_1
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    if-nez v0, :cond_1

    .line 128
    new-instance v0, Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-direct {v0}, Lcom/mediatek/phone/SIMInfoWrapper;-><init>()V

    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 130
    :cond_1
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    iget-boolean v0, v0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsNeedToInitSimInfo:Z

    if-eqz v0, :cond_2

    .line 131
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    invoke-direct {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->initSimInfo()V

    .line 134
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 136
    const-string v0, "getDefault() initSimInfo failed"

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 138
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsNeedToInitSimInfo:Z

    .line 143
    :cond_2
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private initSimInfo()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 385
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 386
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 388
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_0

    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-nez v3, :cond_2

    .line 389
    :cond_0
    const-string v3, "[SIMInfoWrapper] mSimInfoList OR mInsertedSimInfoList is null"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 411
    :cond_1
    return-void

    .line 396
    :cond_2
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 397
    .local v1, item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 398
    .local v2, simId:I
    if-eq v2, v6, :cond_3

    .line 399
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 404
    .end local v1           #item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2           #simId:I
    :cond_4
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 405
    .restart local v1       #item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 406
    .restart local v2       #simId:I
    if-eq v2, v6, :cond_5

    .line 407
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 437
    const-string v0, "SIMInfoWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    return-void
.end method

.method public static setNull(Z)V
    .locals 1
    .parameter "testMode"

    .prologue
    .line 445
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->sSIMInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    .line 446
    sput-boolean p0, Lcom/mediatek/phone/SIMInfoWrapper;->sIsNullResult:Z

    .line 447
    return-void
.end method


# virtual methods
.method public getAllSimCount()I
    .locals 1

    .prologue
    .line 297
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 298
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 300
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedSimColorById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 265
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 266
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto :goto_0
.end method

.method public getInsertedSimCount()I
    .locals 1

    .prologue
    .line 310
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 311
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 313
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getInsertedSimDisplayNameById(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 276
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 277
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getInsertedSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 2
    .parameter "id"

    .prologue
    .line 255
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    return-object v0
.end method

.method public getInsertedSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getInsertedSimInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 188
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getInsertedSimSlotById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 287
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 288
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    goto :goto_0
.end method

.method public getSimBackgroundDarkResByColorId(I)I
    .locals 2
    .parameter "colorId"

    .prologue
    .line 359
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimBackgroundDarkResByColorId() colorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 360
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 361
    :cond_0
    const/4 p1, 0x0

    .line 363
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundDarkRes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimBackgroundLightResByColorId(I)I
    .locals 2
    .parameter "colorId"

    .prologue
    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimBackgroundLightResByColorId() colorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 368
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 369
    :cond_0
    const/4 p1, 0x0

    .line 371
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimBackgroundResByColorId(I)I
    .locals 2
    .parameter "colorId"

    .prologue
    .line 351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getSimBackgroundResByColorId() colorId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 352
    if-ltz p1, :cond_0

    const/4 v0, 0x3

    if-le p1, v0, :cond_1

    .line 353
    :cond_0
    const/4 p1, 0x0

    .line 355
    :cond_1
    sget-object v0, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundRes:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSimColorById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 222
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 223
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    goto :goto_0
.end method

.method public getSimDisplayNameById(I)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 233
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 234
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    goto :goto_0
.end method

.method public getSimDisplayNameBySlotId(I)Ljava/lang/String;
    .locals 2
    .parameter "slotId"

    .prologue
    .line 336
    const/4 v1, 0x0

    .line 337
    .local v1, simDisplayName:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimIdBySlotId(I)I

    move-result v0

    .line 338
    .local v0, i:I
    invoke-virtual {p0, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v1

    .line 339
    return-object v1
.end method

.method public getSimIdBySlotId(I)I
    .locals 3
    .parameter "slotId"

    .prologue
    .line 325
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 326
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getSimInfoById(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 2
    .parameter "id"

    .prologue
    .line 198
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    return-object v0
.end method

.method public getSimInfoBySlot(I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .locals 3
    .parameter "slot"

    .prologue
    .line 202
    const/4 v1, 0x0

    .line 204
    .local v1, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    sget-object v2, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 205
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    sget-object v2, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 206
    sget-object v2, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 207
    .restart local v1       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    iget v2, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    if-ne v2, p1, :cond_0

    move-object v2, v1

    .line 212
    .end local v0           #i:I
    :goto_1
    return-object v2

    .line 205
    .restart local v0       #i:I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 212
    .end local v0           #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getSimInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    sget-object v0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method public getSimInfoMap()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    return-object v0
.end method

.method public getSimSlotById(I)I
    .locals 3
    .parameter "id"

    .prologue
    .line 244
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 245
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    iget v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    goto :goto_0
.end method

.method public getSlotIdBySimId(I)I
    .locals 3
    .parameter "simId"

    .prologue
    .line 319
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 320
    .local v0, i:Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 375
    iput-object p1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    .line 376
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 377
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SIM_SETTING_INFO_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 378
    const-string v1, "android.intent.action.SIM_INFO_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 379
    const-string v1, "android.intent.action.SIM_NAME_UPDATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 380
    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 381
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mIsNeedToInitSimInfo:Z

    .line 382
    return-void
.end method

.method public registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 344
    return-void
.end method

.method public release()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 420
    :cond_0
    return-void
.end method

.method public unregisterForSimInfoUpdate(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 347
    iget-object v0, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 348
    return-void
.end method

.method public updateSimInfoCache()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    .line 39
    const-string v3, "updateSimInfoCache()"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 41
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_2

    .line 42
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getAllSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    .line 43
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_4

    .line 45
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    .line 46
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    .line 47
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 48
    .local v1, item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 49
    .local v2, simId:I
    if-eq v2, v6, :cond_0

    .line 50
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mAllSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimIdSlotIdPairs:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 55
    .end local v1           #item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2           #simId:I
    :cond_1
    const-string v3, "[updateSimInfo] update mAllSimInfoList"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 65
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_6

    .line 66
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    .line 67
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    if-eqz v3, :cond_7

    .line 69
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    .line 70
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    .line 71
    sget-object v3, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    .line 72
    .restart local v1       #item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-direct {p0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getCheckedSimId(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;)I

    move-result v2

    .line 73
    .restart local v2       #simId:I
    if-eq v2, v6, :cond_3

    .line 74
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mInsertedSimInfoMap:Ljava/util/HashMap;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSlotIdSimIdPairs:Ljava/util/HashMap;

    iget v4, v1, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 59
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #item:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v2           #simId:I
    :cond_4
    const-string v3, "[updateSimInfo] updated mAllSimInfoList is null"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 89
    :goto_2
    return-void

    .line 79
    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_5
    const-string v3, "[updateSimInfo] update mInsertedSimInfoList"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    .line 88
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_6
    iget-object v3, p0, Lcom/mediatek/phone/SIMInfoWrapper;->mSimInfoUpdateRegistrantList:Landroid/os/RegistrantList;

    invoke-virtual {v3}, Landroid/os/RegistrantList;->notifyRegistrants()V

    goto :goto_2

    .line 83
    :cond_7
    const-string v3, "[updateSimInfo] updated mInsertedSimInfoList is null"

    invoke-static {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

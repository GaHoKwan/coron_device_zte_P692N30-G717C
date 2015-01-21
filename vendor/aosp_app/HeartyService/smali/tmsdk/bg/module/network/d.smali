.class Ltmsdk/bg/module/network/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltmsdk/bg/module/network/INetworkChangeCallBack;
.implements Ltmsdk/bg/module/network/INetworkMonitor;


# instance fields
.field private mStartDate:Ljava/util/Date;

.field private mTotalForMonth:J

.field private mUsedForDay:J

.field private mUsedForMonth:J

.field private vA:Ltmsdk/bg/module/network/NetDataEntityFactory;

.field private vB:Ltmsdk/bg/module/network/INetworkInfoDao;

.field private vC:Ltmsdk/bg/module/network/NetDataEntity;

.field private vD:I

.field private vE:[B

.field private vF:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ltmsdk/bg/module/network/INetworkChangeCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private vG:Z

.field private vH:Z


# direct methods
.method public constructor <init>(Ltmsdk/bg/module/network/NetDataEntityFactory;Ltmsdk/bg/module/network/INetworkInfoDao;)V
    .locals 4
    .parameter "factory"
    .parameter "dao"

    .prologue
    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mTotalForMonth:J

    .line 27
    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    .line 28
    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    .line 30
    const/4 v1, -0x1

    iput v1, p0, Ltmsdk/bg/module/network/d;->vD:I

    .line 32
    new-array v1, v3, [B

    iput-object v1, p0, Ltmsdk/bg/module/network/d;->vE:[B

    .line 33
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Ltmsdk/bg/module/network/d;->vF:Ljava/util/HashSet;

    .line 34
    iput-boolean v3, p0, Ltmsdk/bg/module/network/d;->vG:Z

    .line 35
    const/4 v1, 0x1

    iput-boolean v1, p0, Ltmsdk/bg/module/network/d;->vH:Z

    .line 38
    iput-object p1, p0, Ltmsdk/bg/module/network/d;->vA:Ltmsdk/bg/module/network/NetDataEntityFactory;

    .line 39
    iput-object p2, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    .line 42
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v1}, Ltmsdk/bg/module/network/INetworkInfoDao;->getTodayNetworkInfoEntity()Ltmsdk/common/module/network/NetworkInfoEntity;

    move-result-object v0

    .line 43
    .local v0, todayinfo:Ltmsdk/common/module/network/NetworkInfoEntity;
    iget-object v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    iput-object v1, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    .line 44
    iget-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mTotalForMonth:J

    .line 45
    iget-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    .line 46
    iget-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    .line 47
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v1}, Ltmsdk/bg/module/network/INetworkInfoDao;->getClosingDayForMonth()I

    move-result v1

    iput v1, p0, Ltmsdk/bg/module/network/d;->vD:I

    .line 48
    return-void
.end method

.method private eu()Ltmsdk/common/module/network/NetworkInfoEntity;
    .locals 7

    .prologue
    .line 56
    new-instance v0, Ltmsdk/common/module/network/NetworkInfoEntity;

    invoke-direct {v0}, Ltmsdk/common/module/network/NetworkInfoEntity;-><init>()V

    .line 58
    .local v0, info:Ltmsdk/common/module/network/NetworkInfoEntity;
    iget-object v2, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    monitor-enter v2

    .line 60
    :try_start_0
    iget-wide v3, p0, Ltmsdk/bg/module/network/d;->mTotalForMonth:J

    iput-wide v3, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mTotalForMonth:J

    .line 61
    iget-wide v3, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    iput-wide v3, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForMonth:J

    .line 62
    iget-wide v3, p0, Ltmsdk/bg/module/network/d;->mTotalForMonth:J

    iget-wide v5, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    sub-long/2addr v3, v5

    iput-wide v3, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mRetialForMonth:J

    .line 63
    iget-wide v3, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    iput-wide v3, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    .line 64
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    iput-object v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    .line 65
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v1, v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->setTodayNetworkInfoEntity(Ltmsdk/common/module/network/NetworkInfoEntity;)V

    .line 69
    return-object v0

    .line 65
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addCallback(Ltmsdk/bg/module/network/INetworkChangeCallBack;)I
    .locals 2
    .parameter "callback"

    .prologue
    .line 177
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vE:[B

    monitor-enter v1

    .line 178
    if-eqz p1, :cond_0

    .line 179
    :try_start_0
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vF:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 181
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :cond_1
    const/4 v0, -0x1

    goto :goto_0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clearAllLogs()V
    .locals 4

    .prologue
    .line 151
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    monitor-enter v1

    .line 152
    const-wide/16 v2, 0x0

    :try_start_0
    iput-wide v2, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    .line 153
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    .line 154
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    .line 155
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vA:Ltmsdk/bg/module/network/NetDataEntityFactory;

    invoke-interface {v0}, Ltmsdk/bg/module/network/NetDataEntityFactory;->getNetDataEntity()Ltmsdk/bg/module/network/NetDataEntity;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    .line 156
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    iget-object v2, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    invoke-interface {v0, v2}, Ltmsdk/bg/module/network/INetworkInfoDao;->setLastNetDataEntity(Ltmsdk/bg/module/network/NetDataEntity;)V

    .line 157
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->resetToDayNetworkInfoEntity()V

    .line 158
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->clearAll()V

    .line 159
    monitor-exit v1

    .line 161
    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected ev()V
    .locals 14

    .prologue
    const-wide/16 v12, 0x0

    .line 77
    invoke-virtual {p0}, Ltmsdk/bg/module/network/d;->notifyConfigChange()V

    .line 80
    iget-object v8, p0, Ltmsdk/bg/module/network/d;->vA:Ltmsdk/bg/module/network/NetDataEntityFactory;

    invoke-interface {v8}, Ltmsdk/bg/module/network/NetDataEntityFactory;->getNetDataEntity()Ltmsdk/bg/module/network/NetDataEntity;

    move-result-object v0

    .line 83
    .local v0, current_netdata:Ltmsdk/bg/module/network/NetDataEntity;
    iget-wide v8, v0, Ltmsdk/bg/module/network/NetDataEntity;->mReceiver:J

    cmp-long v8, v8, v12

    if-lez v8, :cond_3

    .line 89
    iget-wide v8, v0, Ltmsdk/bg/module/network/NetDataEntity;->mReceiver:J

    iget-wide v10, v0, Ltmsdk/bg/module/network/NetDataEntity;->mTranslate:J

    add-long v1, v8, v10

    .line 90
    .local v1, current_total:J
    iget-object v8, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    iget-wide v8, v8, Ltmsdk/bg/module/network/NetDataEntity;->mReceiver:J

    iget-object v10, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    iget-wide v10, v10, Ltmsdk/bg/module/network/NetDataEntity;->mTranslate:J

    add-long v6, v8, v10

    .line 92
    .local v6, last_total:J
    iget-object v9, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    monitor-enter v9

    .line 94
    const-wide/16 v10, -0x1

    cmp-long v8, v6, v10

    if-eqz v8, :cond_0

    cmp-long v8, v6, v12

    if-nez v8, :cond_1

    .line 95
    :cond_0
    move-wide v6, v1

    .line 98
    :cond_1
    sub-long v3, v1, v6

    .line 99
    .local v3, deltal_value:J
    cmp-long v8, v3, v12

    if-gez v8, :cond_2

    move-wide v3, v1

    .line 101
    :cond_2
    :try_start_0
    iget-wide v10, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    add-long/2addr v10, v3

    iput-wide v10, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    .line 102
    iget-wide v10, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    add-long/2addr v10, v3

    iput-wide v10, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    .line 105
    iput-object v0, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    .line 106
    iget-object v8, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    iget-object v10, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    invoke-interface {v8, v10}, Ltmsdk/bg/module/network/INetworkInfoDao;->setLastNetDataEntity(Ltmsdk/bg/module/network/NetDataEntity;)V

    .line 107
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 111
    .end local v1           #current_total:J
    .end local v3           #deltal_value:J
    .end local v6           #last_total:J
    :cond_3
    invoke-direct {p0}, Ltmsdk/bg/module/network/d;->eu()Ltmsdk/common/module/network/NetworkInfoEntity;

    move-result-object v5

    .line 112
    .local v5, info:Ltmsdk/common/module/network/NetworkInfoEntity;
    invoke-virtual {p0, v5}, Ltmsdk/bg/module/network/d;->onNormalChanged(Ltmsdk/common/module/network/NetworkInfoEntity;)V

    .line 113
    return-void

    .line 107
    .end local v5           #info:Ltmsdk/common/module/network/NetworkInfoEntity;
    .restart local v1       #current_total:J
    .restart local v3       #deltal_value:J
    .restart local v6       #last_total:J
    :catchall_0
    move-exception v8

    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8
.end method

.method protected ew()V
    .locals 5

    .prologue
    .line 120
    iget-object v2, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    monitor-enter v2

    .line 122
    :try_start_0
    new-instance v0, Ltmsdk/common/module/network/NetworkInfoEntity;

    invoke-direct {v0}, Ltmsdk/common/module/network/NetworkInfoEntity;-><init>()V

    .line 123
    .local v0, info:Ltmsdk/common/module/network/NetworkInfoEntity;
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    iput-object v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mStartDate:Ljava/util/Date;

    .line 124
    iget-wide v3, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    iput-wide v3, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    .line 125
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v1, v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->insert(Ltmsdk/common/module/network/NetworkInfoEntity;)V

    .line 128
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    .line 129
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    .line 130
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v1}, Ltmsdk/bg/module/network/INetworkInfoDao;->resetToDayNetworkInfoEntity()V

    .line 133
    invoke-virtual {p0}, Ltmsdk/bg/module/network/d;->onDayChanged()V

    .line 134
    monitor-exit v2

    .line 135
    return-void

    .line 134
    .end local v0           #info:Ltmsdk/common/module/network/NetworkInfoEntity;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected ex()V
    .locals 3

    .prologue
    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    .line 142
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    iget-wide v1, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    invoke-interface {v0, v1, v2}, Ltmsdk/bg/module/network/INetworkInfoDao;->setUsedForMonth(J)V

    .line 145
    invoke-virtual {p0}, Ltmsdk/bg/module/network/d;->onClosingDateReached()V

    .line 146
    return-void
.end method

.method public ey()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    const/4 v5, 0x2

    .line 232
    iget-boolean v4, p0, Ltmsdk/bg/module/network/d;->vG:Z

    if-eqz v4, :cond_2

    .line 233
    new-instance v1, Ljava/util/GregorianCalendar;

    invoke-direct {v1}, Ljava/util/GregorianCalendar;-><init>()V

    .line 234
    .local v1, current_date:Ljava/util/GregorianCalendar;
    new-instance v3, Ljava/util/GregorianCalendar;

    invoke-direct {v3}, Ljava/util/GregorianCalendar;-><init>()V

    .line 235
    .local v3, last_date:Ljava/util/GregorianCalendar;
    iget-object v4, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    .line 237
    iget v4, p0, Ltmsdk/bg/module/network/d;->vD:I

    invoke-static {v1, v4}, Ltmsdkobf/js;->a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v0

    .line 238
    .local v0, current_closing_date:Ljava/util/GregorianCalendar;
    iget v4, p0, Ltmsdk/bg/module/network/d;->vD:I

    invoke-static {v3, v4}, Ltmsdkobf/js;->a(Ljava/util/GregorianCalendar;I)Ljava/util/GregorianCalendar;

    move-result-object v2

    .line 240
    .local v2, last_closing_date:Ljava/util/GregorianCalendar;
    invoke-virtual {v0, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v2, v5}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_0

    .line 241
    invoke-virtual {p0}, Ltmsdk/bg/module/network/d;->ex()V

    .line 244
    :cond_0
    invoke-virtual {v3, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v1, v6}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 245
    invoke-virtual {p0}, Ltmsdk/bg/module/network/d;->ew()V

    .line 249
    :cond_1
    invoke-virtual {p0}, Ltmsdk/bg/module/network/d;->ev()V

    .line 251
    .end local v0           #current_closing_date:Ljava/util/GregorianCalendar;
    .end local v1           #current_date:Ljava/util/GregorianCalendar;
    .end local v2           #last_closing_date:Ljava/util/GregorianCalendar;
    .end local v3           #last_date:Ljava/util/GregorianCalendar;
    :cond_2
    return-void
.end method

.method public ez()V
    .locals 3

    .prologue
    .line 257
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    iget-object v2, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    invoke-interface {v1, v2}, Ltmsdk/bg/module/network/INetworkInfoDao;->getSystemTimeChange(Ljava/util/Date;)Ltmsdk/common/module/network/NetworkInfoEntity;

    move-result-object v0

    .line 259
    .local v0, newData:Ltmsdk/common/module/network/NetworkInfoEntity;
    if-eqz v0, :cond_0

    .line 260
    iget-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mTotalForMonth:J

    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mTotalForMonth:J

    .line 261
    iget-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForMonth:J

    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    .line 262
    iget-wide v1, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    iput-wide v1, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    .line 265
    :cond_0
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    iput-object v1, p0, Ltmsdk/bg/module/network/d;->mStartDate:Ljava/util/Date;

    .line 267
    invoke-direct {p0}, Ltmsdk/bg/module/network/d;->eu()Ltmsdk/common/module/network/NetworkInfoEntity;

    .line 268
    return-void
.end method

.method public getAllLogs()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ltmsdk/common/module/network/NetworkInfoEntity;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v1}, Ltmsdk/bg/module/network/INetworkInfoDao;->getAll()Ljava/util/ArrayList;

    move-result-object v0

    .line 168
    .local v0, logs:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ltmsdk/common/module/network/NetworkInfoEntity;>;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 169
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 172
    :cond_0
    return-object v0
.end method

.method public getRefreshState()Z
    .locals 1

    .prologue
    .line 341
    iget-boolean v0, p0, Ltmsdk/bg/module/network/d;->vH:Z

    return v0
.end method

.method public notifyConfigChange()V
    .locals 4

    .prologue
    .line 216
    iget-boolean v0, p0, Ltmsdk/bg/module/network/d;->vG:Z

    if-eqz v0, :cond_0

    .line 218
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    monitor-enter v1

    .line 219
    :try_start_0
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->getClosingDayForMonth()I

    move-result v0

    iput v0, p0, Ltmsdk/bg/module/network/d;->vD:I

    .line 220
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->getTotalForMonth()J

    move-result-wide v2

    iput-wide v2, p0, Ltmsdk/bg/module/network/d;->mTotalForMonth:J

    .line 221
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->getUsedForMonth()J

    move-result-wide v2

    iput-wide v2, p0, Ltmsdk/bg/module/network/d;->mUsedForMonth:J

    .line 222
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->getTodayNetworkInfoEntity()Ltmsdk/common/module/network/NetworkInfoEntity;

    move-result-object v0

    iget-wide v2, v0, Ltmsdk/common/module/network/NetworkInfoEntity;->mUsedForDay:J

    iput-wide v2, p0, Ltmsdk/bg/module/network/d;->mUsedForDay:J

    .line 223
    monitor-exit v1

    .line 226
    :cond_0
    return-void

    .line 223
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onClosingDateReached()V
    .locals 6

    .prologue
    .line 306
    iget-boolean v4, p0, Ltmsdk/bg/module/network/d;->vH:Z

    if-eqz v4, :cond_0

    .line 307
    const/4 v2, 0x0

    .line 308
    .local v2, callbacks:Ljava/util/HashSet;,"Ljava/util/HashSet<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    iget-object v5, p0, Ltmsdk/bg/module/network/d;->vE:[B

    monitor-enter v5

    .line 309
    :try_start_0
    iget-object v4, p0, Ltmsdk/bg/module/network/d;->vF:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    .line 310
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    if-eqz v2, :cond_0

    .line 312
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/INetworkChangeCallBack;

    .line 313
    .local v1, callback:Ltmsdk/bg/module/network/INetworkChangeCallBack;
    invoke-interface {v1}, Ltmsdk/bg/module/network/INetworkChangeCallBack;->onClosingDateReached()V

    goto :goto_0

    .line 310
    .end local v1           #callback:Ltmsdk/bg/module/network/INetworkChangeCallBack;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 317
    .end local v2           #callbacks:Ljava/util/HashSet;,"Ljava/util/HashSet<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    :cond_0
    return-void
.end method

.method public onDayChanged()V
    .locals 6

    .prologue
    .line 321
    iget-boolean v4, p0, Ltmsdk/bg/module/network/d;->vH:Z

    if-eqz v4, :cond_0

    .line 322
    const/4 v2, 0x0

    .line 323
    .local v2, callbacks:Ljava/util/HashSet;,"Ljava/util/HashSet<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    iget-object v5, p0, Ltmsdk/bg/module/network/d;->vE:[B

    monitor-enter v5

    .line 324
    :try_start_0
    iget-object v4, p0, Ltmsdk/bg/module/network/d;->vF:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    .line 325
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 326
    if-eqz v2, :cond_0

    .line 327
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/INetworkChangeCallBack;

    .line 328
    .local v1, callback:Ltmsdk/bg/module/network/INetworkChangeCallBack;
    invoke-interface {v1}, Ltmsdk/bg/module/network/INetworkChangeCallBack;->onDayChanged()V

    goto :goto_0

    .line 325
    .end local v1           #callback:Ltmsdk/bg/module/network/INetworkChangeCallBack;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 332
    .end local v2           #callbacks:Ljava/util/HashSet;,"Ljava/util/HashSet<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    :cond_0
    return-void
.end method

.method public onNormalChanged(Ltmsdk/common/module/network/NetworkInfoEntity;)V
    .locals 6
    .parameter "info"

    .prologue
    .line 291
    iget-boolean v4, p0, Ltmsdk/bg/module/network/d;->vH:Z

    if-eqz v4, :cond_0

    .line 292
    const/4 v2, 0x0

    .line 293
    .local v2, callbacks:Ljava/util/HashSet;,"Ljava/util/HashSet<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    iget-object v5, p0, Ltmsdk/bg/module/network/d;->vE:[B

    monitor-enter v5

    .line 294
    :try_start_0
    iget-object v4, p0, Ltmsdk/bg/module/network/d;->vF:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/HashSet;

    move-object v2, v0

    .line 295
    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 296
    if-eqz v2, :cond_0

    .line 297
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ltmsdk/bg/module/network/INetworkChangeCallBack;

    .line 298
    .local v1, callback:Ltmsdk/bg/module/network/INetworkChangeCallBack;
    invoke-interface {v1, p1}, Ltmsdk/bg/module/network/INetworkChangeCallBack;->onNormalChanged(Ltmsdk/common/module/network/NetworkInfoEntity;)V

    goto :goto_0

    .line 295
    .end local v1           #callback:Ltmsdk/bg/module/network/INetworkChangeCallBack;
    .end local v3           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4

    .line 302
    .end local v2           #callbacks:Ljava/util/HashSet;,"Ljava/util/HashSet<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    :cond_0
    return-void
.end method

.method public removeCallback(I)Z
    .locals 4
    .parameter "handle"

    .prologue
    .line 198
    iget-object v3, p0, Ltmsdk/bg/module/network/d;->vE:[B

    monitor-enter v3

    .line 199
    const/4 v1, 0x0

    .line 200
    .local v1, result:Z
    :try_start_0
    iget-object v2, p0, Ltmsdk/bg/module/network/d;->vF:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 202
    .local v0, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 203
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ltmsdk/bg/module/network/INetworkChangeCallBack;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 204
    const/4 v1, 0x1

    .line 205
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 210
    :cond_1
    monitor-exit v3

    return v1

    .line 211
    .end local v0           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Ltmsdk/bg/module/network/INetworkChangeCallBack;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public removeCallback(Ltmsdk/bg/module/network/INetworkChangeCallBack;)Z
    .locals 2
    .parameter "callback"

    .prologue
    .line 187
    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vE:[B

    monitor-enter v1

    .line 188
    if-eqz p1, :cond_0

    .line 189
    :try_start_0
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vF:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    .line 191
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setRefreshState(Z)V
    .locals 0
    .parameter "state"

    .prologue
    .line 336
    iput-boolean p1, p0, Ltmsdk/bg/module/network/d;->vH:Z

    .line 337
    return-void
.end method

.method public w(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 274
    iput-boolean p1, p0, Ltmsdk/bg/module/network/d;->vG:Z

    .line 276
    iget-boolean v0, p0, Ltmsdk/bg/module/network/d;->vG:Z

    if-eqz v0, :cond_2

    .line 277
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    invoke-interface {v0}, Ltmsdk/bg/module/network/INetworkInfoDao;->getLastNetDataEntity()Ltmsdk/bg/module/network/NetDataEntity;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    .line 279
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    iget-wide v0, v0, Ltmsdk/bg/module/network/NetDataEntity;->mReceiver:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 280
    :cond_0
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vA:Ltmsdk/bg/module/network/NetDataEntityFactory;

    invoke-interface {v0}, Ltmsdk/bg/module/network/NetDataEntityFactory;->getNetDataEntity()Ltmsdk/bg/module/network/NetDataEntity;

    move-result-object v0

    iput-object v0, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    .line 281
    iget-object v0, p0, Ltmsdk/bg/module/network/d;->vB:Ltmsdk/bg/module/network/INetworkInfoDao;

    iget-object v1, p0, Ltmsdk/bg/module/network/d;->vC:Ltmsdk/bg/module/network/NetDataEntity;

    invoke-interface {v0, v1}, Ltmsdk/bg/module/network/INetworkInfoDao;->setLastNetDataEntity(Ltmsdk/bg/module/network/NetDataEntity;)V

    .line 287
    :cond_1
    :goto_0
    return-void

    .line 285
    :cond_2
    invoke-direct {p0}, Ltmsdk/bg/module/network/d;->eu()Ltmsdk/common/module/network/NetworkInfoEntity;

    goto :goto_0
.end method

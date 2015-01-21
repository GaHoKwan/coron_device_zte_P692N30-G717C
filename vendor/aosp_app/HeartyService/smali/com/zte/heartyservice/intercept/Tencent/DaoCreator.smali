.class public abstract Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;
.super Ljava/lang/Object;
.source "DaoCreator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    .locals 2

    .prologue
    .line 52
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;-><init>(I)V

    return-object v0
.end method

.method public static createCallLogDao()Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
    .locals 2

    .prologue
    .line 74
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;-><init>(I)V

    return-object v0
.end method

.method public static createConfigDao()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;
    .locals 1

    .prologue
    .line 16
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/ConfigDao;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    .locals 2

    .prologue
    .line 106
    const-class v0, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static createSMSDao()Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;

    const-string v1, "smslog"

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;-><init>(I)V

    return-object v0
.end method

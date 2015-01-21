.class public Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
.super Ljava/lang/Object;
.source "ContactCache.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "ContactCache"

.field private static _instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;


# instance fields
.field private has_load:Z

.field private mBlackContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

.field private mLastContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

.field private mSecureContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

.field private mSysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

.field private mWhiteContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->has_load:Z

    return-void
.end method

.method public static declared-synchronized DestoryInstance()V
    .locals 3

    .prologue
    .line 37
    const-class v1, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    if-eqz v0, :cond_1

    .line 38
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    iget-boolean v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->has_load:Z

    if-eqz v0, :cond_0

    .line 39
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mBlackContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->free()V

    .line 40
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mSecureContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->free()V

    .line 41
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mSysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->free()V

    .line 42
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    iget-object v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mWhiteContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->free()V

    .line 43
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    const/4 v2, 0x0

    iput-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->has_load:Z

    .line 45
    :cond_0
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    .line 46
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    :cond_1
    monitor-exit v1

    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getCacheByDao(Lcom/zte/heartyservice/intercept/Tencent/ContactDao;)Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    .locals 11
    .parameter "contactdao"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 51
    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    invoke-direct {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;-><init>()V

    .line 52
    .local v2, map:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    invoke-virtual {p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getAll()Ljava/util/List;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 53
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iget-object v4, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->phonenum:Ljava/lang/String;

    .line 54
    .local v4, number:Ljava/lang/String;
    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->name:Ljava/lang/String;

    .line 55
    .local v3, name:Ljava/lang/String;
    iget-boolean v9, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v9, :cond_2

    move v5, v7

    .line 56
    .local v5, ringStatus:I
    :goto_1
    iget-boolean v9, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v9, :cond_3

    move v6, v7

    .line 58
    .local v6, smsStatus:I
    :goto_2
    if-nez v3, :cond_0

    const-string v3, ""

    .line 59
    :cond_0
    iget v9, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v9, :cond_1

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 61
    :cond_1
    invoke-virtual {v2, v4, v3}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v5           #ringStatus:I
    .end local v6           #smsStatus:I
    :cond_2
    move v5, v8

    .line 55
    goto :goto_1

    .restart local v5       #ringStatus:I
    :cond_3
    move v6, v8

    .line 56
    goto :goto_2

    .line 63
    .end local v0           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #number:Ljava/lang/String;
    .end local v5           #ringStatus:I
    :cond_4
    return-object v2
.end method

.method public static declared-synchronized getInstance()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    .locals 2

    .prologue
    .line 29
    const-class v1, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    if-nez v0, :cond_0

    .line 31
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    invoke-direct {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    .line 33
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 29
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private prepare()V
    .locals 2

    .prologue
    .line 123
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    iget-boolean v0, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->has_load:Z

    if-nez v0, :cond_0

    .line 124
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->_instance:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->has_load:Z

    .line 125
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadSysListCache()V

    .line 126
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadWhiteListCache()V

    .line 127
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadBlackListCache()V

    .line 129
    invoke-virtual {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadLastCallLogCache()V

    .line 131
    :cond_0
    return-void
.end method


# virtual methods
.method getBlackContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->prepare()V

    .line 146
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mBlackContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    return-object v0
.end method

.method getLastCallLogMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mLastContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    return-object v0
.end method

.method getSuperContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    .locals 1

    .prologue
    .line 150
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->prepare()V

    .line 151
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mSecureContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    return-object v0
.end method

.method public getSysContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    .locals 1

    .prologue
    .line 135
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->prepare()V

    .line 136
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mSysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    return-object v0
.end method

.method getWhiteContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->prepare()V

    .line 141
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mWhiteContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    return-object v0
.end method

.method public loadBlackListCache()V
    .locals 1

    .prologue
    .line 81
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getCacheByDao(Lcom/zte/heartyservice/intercept/Tencent/ContactDao;)Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mBlackContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    .line 83
    return-void
.end method

.method public loadLastCallLogCache()V
    .locals 0

    .prologue
    .line 116
    return-void
.end method

.method public loadSysListCache()V
    .locals 7

    .prologue
    .line 99
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mSysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    .line 100
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 102
    new-instance v4, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    invoke-direct {v4}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;-><init>()V

    iput-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mSysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    .line 103
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v3

    .line 104
    .local v3, sysdao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;
    invoke-virtual {v3}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getAllContact()Ljava/util/List;

    move-result-object v1

    .line 106
    .local v1, contacts:Ljava/util/List;,"Ljava/util/List<Ltmsdk/common/module/aresengine/ContactEntity;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ltmsdk/common/module/aresengine/ContactEntity;

    .line 107
    .local v0, contact:Ltmsdk/common/module/aresengine/ContactEntity;
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mSysContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    iget-object v5, v0, Ltmsdk/common/module/aresengine/ContactEntity;->phonenum:Ljava/lang/String;

    iget-object v6, v0, Ltmsdk/common/module/aresengine/ContactEntity;->name:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    .end local v0           #contact:Ltmsdk/common/module/aresengine/ContactEntity;
    :cond_0
    return-void
.end method

.method public loadWhiteListCache()V
    .locals 1

    .prologue
    .line 72
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getCacheByDao(Lcom/zte/heartyservice/intercept/Tencent/ContactDao;)Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->mWhiteContactMap:Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    .line 74
    return-void
.end method

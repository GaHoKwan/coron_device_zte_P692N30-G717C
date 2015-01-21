.class public Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;
.super Ljava/lang/Object;
.source "LastCallLogDao.java"

# interfaces
.implements Ltmsdk/common/module/aresengine/ILastCallLogDao;


# static fields
.field private static mInstance:Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;


# instance fields
.field private final KEY:Ljava/lang/String;

.field private final MAX_SIZE:I

.field private final NAME:Ljava/lang/String;

.field private mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private mContext:Landroid/content/Context;

.field private mSize:I

.field private mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

.field private mTmpData:Ljava/lang/String;

.field private mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

.field private readDB:Landroid/content/SharedPreferences;

.field private writeDB:Landroid/content/SharedPreferences$Editor;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/16 v0, 0x32

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->MAX_SIZE:I

    .line 22
    const-string v0, "LastCallLogCache"

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->NAME:Ljava/lang/String;

    .line 23
    const-string v0, "CallLogCache"

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->KEY:Ljava/lang/String;

    .line 31
    iput v2, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    .line 39
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 40
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    .line 42
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mContext:Landroid/content/Context;

    const-string v1, "LastCallLogCache"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->readDB:Landroid/content/SharedPreferences;

    .line 43
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->readDB:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->writeDB:Landroid/content/SharedPreferences$Editor;

    .line 45
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->initData()V

    .line 46
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getData()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mTmpData:Ljava/lang/String;

    .line 47
    return-void
.end method

.method private delete()V
    .locals 5

    .prologue
    .line 157
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->readDB:Landroid/content/SharedPreferences;

    const-string v3, "CallLogCache"

    const-string v4, ""

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, data:Ljava/lang/String;
    const/16 v2, 0x7c

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 159
    .local v1, index:I
    if-lez v1, :cond_0

    .line 160
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->setData(Ljava/lang/String;)V

    .line 163
    :cond_0
    return-void
.end method

.method private getData()Ljava/lang/String;
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->readDB:Landroid/content/SharedPreferences;

    const-string v1, "CallLogCache"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 124
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->removePrex(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getInstance()Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;
    .locals 3

    .prologue
    .line 50
    const-class v1, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mInstance:Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;

    if-nez v0, :cond_0

    .line 51
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mInstance:Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;

    .line 52
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mInstance:Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getSize()I
    .locals 5

    .prologue
    const/16 v4, 0x7c

    .line 179
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getData()Ljava/lang/String;

    move-result-object v0

    .line 180
    .local v0, data:Ljava/lang/String;
    const/4 v2, 0x0

    .line 182
    .local v2, size:I
    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 183
    const/4 v2, 0x1

    .line 192
    :goto_0
    return v2

    .line 185
    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 186
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v4, :cond_1

    .line 187
    add-int/lit8 v2, v2, 0x1

    .line 185
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 189
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private getStandarNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "number"

    .prologue
    .line 114
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->checkValidate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 57
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getData()Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 58
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    const-string v6, "type=2"

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getCallLogByWhere(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 59
    .local v1, calllogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 60
    .local v4, sb:Ljava/lang/StringBuffer;
    iput v7, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    .line 62
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .local v2, i:I
    :goto_0
    const/4 v5, -0x1

    if-le v2, v5, :cond_1

    .line 63
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .line 64
    .local v0, calllog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    iget-object v3, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    .line 66
    .local v3, number:Ljava/lang/String;
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getStandarNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 67
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v6, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v6, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    iget-object v6, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v5, v6}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->contains(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 72
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x7c

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    .line 62
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 78
    .end local v0           #calllog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    .end local v3           #number:Ljava/lang/String;
    :cond_1
    iget v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    if-lez v5, :cond_2

    .line 79
    invoke-virtual {v4, v7}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 80
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->setData(Ljava/lang/String;)V

    .line 85
    .end local v1           #calllogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    .end local v2           #i:I
    .end local v4           #sb:Ljava/lang/StringBuffer;
    :cond_2
    :goto_1
    return-void

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getSize()I

    move-result v5

    iput v5, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    goto :goto_1
.end method

.method private insert(Ljava/lang/String;)V
    .locals 2
    .parameter "number"

    .prologue
    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->setData(Ljava/lang/String;)V

    .line 130
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    add-int/lit8 v0, v0, 0x1

    const/16 v1, 0x32

    if-gt v0, v1, :cond_0

    .line 131
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSize:I

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->delete()V

    goto :goto_0
.end method

.method private setData(Ljava/lang/String;)V
    .locals 2
    .parameter "data"

    .prologue
    .line 174
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mTmpData:Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->writeDB:Landroid/content/SharedPreferences$Editor;

    const-string v1, "CallLogCache"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 176
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    const/4 v0, 0x0

    .line 95
    if-nez p1, :cond_1

    .line 103
    :cond_0
    :goto_0
    return v0

    .line 99
    :cond_1
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getStandarNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    if-eqz p1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mTmpData:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    goto :goto_0
.end method

.method public update(Ltmsdk/common/module/aresengine/CallLogEntity;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 200
    .local v0, number:Ljava/lang/String;
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v1, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getStandarNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mWhiteContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v2, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mBlackContactDao:Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    iget-object v2, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    iget-object v2, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 206
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/LastCallLogDao;->insert(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v1

    goto :goto_0
.end method

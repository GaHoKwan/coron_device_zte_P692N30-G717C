.class public final Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$EntityConverter;
.super Ljava/lang/Object;
.source "ZTEAresEngineFactor.java"

# interfaces
.implements Ltmsdk/common/module/aresengine/IEntityConverter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EntityConverter"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getEntityName(Ltmsdk/common/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;
    .locals 4
    .parameter "entity"
    .parameter "isSecure"

    .prologue
    const/4 v3, 0x2

    .line 235
    const/4 v0, 0x0

    .line 236
    .local v0, name:Ljava/lang/String;
    iget-object v1, p0, Ltmsdk/common/module/aresengine/TelephonyEntity;->phonenum:Ljava/lang/String;

    .line 238
    .local v1, phoneNum:Ljava/lang/String;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_4

    .line 240
    if-eqz p1, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 241
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createWhiteListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createBlackListDao()Lcom/zte/heartyservice/intercept/Tencent/ContactDao;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ne v2, v3, :cond_5

    .line 243
    :cond_2
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    move-result-object v2

    invoke-virtual {v2}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getSysContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 244
    :cond_3
    const/4 v0, 0x0

    .line 252
    :cond_4
    :goto_0
    return-object v0

    .line 247
    :cond_5
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getBlackListName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public convert(Ltmsdk/common/module/aresengine/CallLogEntity;)Ltmsdk/common/module/aresengine/CallLogEntity;
    .locals 5
    .parameter "entity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ">(",
            "Ltmsdk/common/module/aresengine/CallLogEntity;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 270
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-direct {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;-><init>(Ltmsdk/common/module/aresengine/CallLogEntity;)V

    .line 271
    .local v0, callog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    invoke-static {p1, v2}, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$EntityConverter;->getEntityName(Ltmsdk/common/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->name:Ljava/lang/String;

    .line 272
    iput v2, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->read_extend:I

    .line 274
    iget v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-wide v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 275
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p1, Ltmsdk/common/module/aresengine/CallLogEntity;->date:J

    sub-long/2addr v1, v3

    iput-wide v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    .line 276
    iget-wide v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    double-to-long v1, v1

    iput-wide v1, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->duration:J

    .line 278
    :cond_0
    return-object v0
.end method

.method public convert(Ltmsdk/common/module/aresengine/SmsEntity;)Ltmsdk/common/module/aresengine/SmsEntity;
    .locals 3
    .parameter "entity"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ">(",
            "Ltmsdk/common/module/aresengine/SmsEntity;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    invoke-direct {v0, p1}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;-><init>(Ltmsdk/common/module/aresengine/SmsEntity;)V

    .line 259
    .local v0, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    const/4 v1, -0x1

    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->id:I

    .line 260
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/zte/heartyservice/intercept/Tencent/ZTEAresEngineFactor$EntityConverter;->getEntityName(Ltmsdk/common/module/aresengine/TelephonyEntity;Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->name:Ljava/lang/String;

    .line 262
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    .line 264
    iget v1, p1, Ltmsdk/common/module/aresengine/SmsEntity;->type:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    iput v1, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    .line 265
    return-object v0

    .line 264
    :cond_0
    iget v1, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    goto :goto_0
.end method

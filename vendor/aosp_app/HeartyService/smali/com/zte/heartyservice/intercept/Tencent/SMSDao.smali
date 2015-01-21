.class public Lcom/zte/heartyservice/intercept/Tencent/SMSDao;
.super Ljava/lang/Object;
.source "SMSDao.java"

# interfaces
.implements Ltmsdk/common/module/aresengine/ISmsDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltmsdk/common/module/aresengine/ISmsDao",
        "<",
        "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
        ">;"
    }
.end annotation


# static fields
.field private static SMS_DRAFT_PREFS:Ljava/lang/String;


# instance fields
.field private dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

.field private mContext:Landroid/content/Context;

.field private mSetting:Landroid/content/SharedPreferences;

.field private mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

.field private tableName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-string v0, "sms_draft_prefs"

    sput-object v0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->SMS_DRAFT_PREFS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .parameter "tableName"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mContext:Landroid/content/Context;

    .line 51
    iput-object p1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    .line 53
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    .line 55
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->SMS_DRAFT_PREFS:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSetting:Landroid/content/SharedPreferences;

    .line 56
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getInstance()Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    .line 57
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;)Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 27
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    return-object v0
.end method

.method private deleteByID(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 218
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 219
    .local v0, count:I
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 220
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public clearAll()Z
    .locals 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->deleteTable(Ljava/lang/String;)I

    .line 380
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public clearSmsDraft()Z
    .locals 1

    .prologue
    .line 520
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSetting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public delete(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 461
    iget v1, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->id:I

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->deleteByID(I)Z

    move-result v0

    .line 467
    .local v0, isDeleted:Z
    return v0
.end method

.method public delete(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 230
    .local p1, smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    const/4 v1, 0x0

    .line 231
    .local v1, isDeleted:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 232
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 233
    .local v4, sql_where:Ljava/lang/StringBuffer;
    const-string v5, " IN ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 235
    .local v3, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget v6, v3, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->id:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 237
    .end local v3           #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_0
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 238
    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 240
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, sms_sql_where:Ljava/lang/String;
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v6, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v2, v7}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    const/4 v1, 0x1

    .line 250
    :goto_1
    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v5}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 255
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sms_sql_where:Ljava/lang/String;
    .end local v4           #sql_where:Ljava/lang/StringBuffer;
    :goto_2
    return v1

    .line 249
    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #sms_sql_where:Ljava/lang/String;
    .restart local v4       #sql_where:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    .line 252
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v2           #sms_sql_where:Ljava/lang/String;
    .end local v4           #sql_where:Ljava/lang/StringBuffer;
    :cond_2
    const/4 v1, 0x1

    goto :goto_2
.end method

.method public deleteSmsDraft(Ljava/lang/String;)Z
    .locals 2
    .parameter "number"

    .prologue
    .line 511
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSetting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public getAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 265
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 266
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 267
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 268
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v1

    .line 276
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    if-eqz v0, :cond_0

    .line 277
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 279
    return-object v1
.end method

.method public getAllNoRead()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "read_extend"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "=0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 307
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 308
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 309
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v1

    .line 317
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    if-eqz v0, :cond_0

    .line 318
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 319
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 320
    return-object v1
.end method

.method public getByAddress(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "address"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;"
        }
    .end annotation

    .prologue
    .line 391
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 393
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_1

    .line 394
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "address"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 395
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 396
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 397
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v1

    .line 405
    if-eqz v0, :cond_0

    .line 406
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 407
    :cond_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 410
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #sql:Ljava/lang/String;
    :cond_1
    return-object v1
.end method

.method public getByID(I)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .locals 5
    .parameter "id"

    .prologue
    .line 177
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 178
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 179
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v1, 0x0

    .line 181
    .local v1, smsLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 182
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->getLogFromCursor(Landroid/database/Cursor;Z)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    move-result-object v1

    .line 206
    :goto_0
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 207
    return-object v1

    .line 184
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method public getSmsDraft(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "number"

    .prologue
    .line 500
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSetting:Landroid/content/SharedPreferences;

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSmsNum()I
    .locals 5

    .prologue
    .line 288
    const/4 v1, 0x0

    .line 289
    .local v1, num:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT count(*) FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 290
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 292
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 293
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 295
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 296
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 298
    return v1
.end method

.method public getSmsNum(JJ)I
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 334
    const/4 v1, 0x0

    .line 335
    .local v1, num:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT count(*) FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ">="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "<"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 336
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 337
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 338
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 340
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 341
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 342
    return v1
.end method

.method public declared-synchronized getUnReadCount()I
    .locals 10

    .prologue
    const/4 v8, 0x0

    .line 449
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "id"

    aput-object v4, v2, v3

    const-string v3, "read_extend=0 and type=1"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 450
    .local v9, cursor:Landroid/database/Cursor;
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 451
    .local v8, count:I
    :cond_0
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 452
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    monitor-exit p0

    return v8

    .line 449
    .end local v8           #count:I
    .end local v9           #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public insert(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)J
    .locals 6
    .parameter "msgLog"

    .prologue
    .line 66
    const/4 v3, 0x0

    invoke-static {p1, v3}, Lcom/zte/heartyservice/intercept/Tencent/SMSUtil;->generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Z)Landroid/content/ContentValues;

    move-result-object v0

    .line 67
    .local v0, contentValues:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v4, v5, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 79
    .local v1, count:J
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 80
    return-wide v1
.end method

.method public insert(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Ltmsdk/common/module/aresengine/FilterResult;)J
    .locals 2
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 525
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic insert(Ltmsdk/common/module/aresengine/SmsEntity;Ltmsdk/common/module/aresengine/FilterResult;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 27
    check-cast p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;Ltmsdk/common/module/aresengine/FilterResult;)J

    move-result-wide v0

    return-wide v0
.end method

.method public insert(Ljava/util/List;)Z
    .locals 3
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 90
    .local p1, smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;

    invoke-direct {v2, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/SMSDao;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->execTransaction(Lcom/zte/heartyservice/intercept/Tencent/SimpleCallback;)Z

    move-result v0

    .line 113
    .local v0, isInserted:Z
    return v0
.end method

.method public recover(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z
    .locals 7
    .parameter "smslog"

    .prologue
    .line 124
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    iget-object v4, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getLastSMSAtInBox(Ljava/lang/String;)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    move-result-object v0

    .line 125
    .local v0, lastLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    const/4 v2, 0x1

    .line 127
    .local v2, result:Z
    invoke-virtual {p1}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, msg_body:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a0220

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .end local v1           #msg_body:Ljava/lang/String;
    :cond_0
    invoke-virtual {p1, v1}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->setBody(Ljava/lang/String;)V

    .line 129
    const/4 v3, 0x0

    iput v3, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    .line 131
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v3, p1}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->delete(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 132
    :cond_1
    const/4 v2, 0x0

    .line 137
    :cond_2
    :goto_0
    return v2

    .line 133
    :cond_3
    if-eqz v0, :cond_2

    iget-wide v3, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    iget-wide v5, p1, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_2

    .line 134
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->remove(Ltmsdk/common/module/aresengine/SmsEntity;)Z

    .line 135
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v3, v0}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public recover(Ljava/util/List;)Z
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, smslogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    const/4 v2, 0x0

    .line 147
    const/4 v4, 0x1

    .line 148
    .local v4, result:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_2

    const/4 v7, 0x0

    invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    move-object v0, v7

    .line 150
    .local v0, firstlog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :goto_0
    if-eqz v0, :cond_0

    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    iget-object v8, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->phonenum:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->getLastSMSAtInBox(Ljava/lang/String;)Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    move-result-object v2

    .line 152
    .local v2, lastLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_0
    const/4 v5, 0x0

    .line 154
    .local v5, smsIndex:I
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    .line 155
    .local v6, smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    invoke-virtual {v6}, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->getBody()Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, msg_body:Ljava/lang/String;
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0a0220

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v7, 0x4

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .end local v3           #msg_body:Ljava/lang/String;
    :cond_1
    iput-object v3, v6, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->body:Ljava/lang/String;

    .line 158
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;

    iget v7, v7, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read_extend:I

    iput v7, v6, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->read:I

    goto :goto_1

    .end local v0           #firstlog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #lastLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .end local v5           #smsIndex:I
    .end local v6           #smslog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    :cond_2
    move-object v0, v2

    .line 148
    goto :goto_0

    .line 161
    .restart local v0       #firstlog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #lastLog:Lcom/zte/heartyservice/intercept/Tencent/SmsLog;
    .restart local v5       #smsIndex:I
    :cond_3
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v7, p1}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->insertSMS(Ljava/util/List;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->delete(Ljava/util/List;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 162
    :cond_4
    const/4 v4, 0x0

    .line 167
    :cond_5
    :goto_2
    return v4

    .line 163
    :cond_6
    if-eqz v2, :cond_5

    iget-wide v7, v2, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    iget-wide v9, v0, Lcom/zte/heartyservice/intercept/Tencent/SmsLog;->date:J

    cmp-long v7, v7, v9

    if-lez v7, :cond_5

    .line 164
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v7, v2}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->remove(Ltmsdk/common/module/aresengine/SmsEntity;)Z

    .line 165
    iget-object v7, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSysDao:Lcom/zte/heartyservice/intercept/Tencent/SysDao;

    invoke-virtual {v7, v2}, Lcom/zte/heartyservice/intercept/Tencent/SysDao;->insert(Ltmsdk/common/module/aresengine/SmsEntity;)Landroid/net/Uri;

    goto :goto_2
.end method

.method public recoverByAdress(Ljava/lang/String;)Z
    .locals 1
    .parameter "address"

    .prologue
    .line 420
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->getByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->recover(Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method public saveSmsDraft(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "number"
    .parameter "text"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->mSetting:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getIndentityNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v0

    return v0
.end method

.method public setAllToBeRead()V
    .locals 3

    .prologue
    .line 438
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "read_extend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 439
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->noneQuery(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 441
    return-void
.end method

.method public setToBeReadByID(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 429
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->tableName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " set "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "read_extend"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "=1 where "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 430
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->noneQuery(Ljava/lang/String;)V

    .line 431
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/SMSDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 432
    return-void
.end method

.method public update(Lcom/zte/heartyservice/intercept/Tencent/SmsLog;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 457
    const/4 v0, 0x0

    return v0
.end method

.method public update(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/SmsLog;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/SmsLog;>;"
    const/4 v0, 0x0

    return v0
.end method

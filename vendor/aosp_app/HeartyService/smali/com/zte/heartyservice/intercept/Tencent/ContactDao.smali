.class public Lcom/zte/heartyservice/intercept/Tencent/ContactDao;
.super Ljava/lang/Object;
.source "ContactDao.java"

# interfaces
.implements Ltmsdk/common/module/aresengine/IContactDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltmsdk/common/module/aresengine/IContactDao",
        "<",
        "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_BLACK:I = 0x0

.field public static final TYPE_WHITE:I = 0x1


# instance fields
.field private final TAG:Ljava/lang/String;

.field private dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

.field private tableName:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    const-string v0, "ContactDao"

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->TAG:Ljava/lang/String;

    .line 21
    const-string v0, "contactlist"

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    .line 27
    iput p1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    .line 28
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    .line 29
    return-void
.end method

.method public static addToList(ILjava/lang/String;Ljava/lang/String;I)J
    .locals 6
    .parameter "type"
    .parameter "telephone"
    .parameter "name"
    .parameter "rule"

    .prologue
    .line 281
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 282
    const-wide/16 v2, -0x1

    .line 288
    :goto_0
    return-wide v2

    .line 284
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->generateContentValues(ILjava/lang/String;Ljava/lang/String;I)Landroid/content/ContentValues;

    move-result-object v0

    .line 285
    .local v0, contentValues:Landroid/content/ContentValues;
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v1

    .line 286
    .local v1, helper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    const-string v4, "contactlist"

    const-string v5, "id"

    invoke-virtual {v1, v4, v5, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    .line 287
    .local v2, id:J
    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    goto :goto_0
.end method

.method private deleteByID(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 40
    const/4 v0, 0x1

    .line 41
    .local v0, result:Z
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

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

    move-result v1

    if-lez v1, :cond_0

    .line 42
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reLoadCache()V

    .line 46
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 47
    return v0

    .line 44
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static deleteFromList(ILjava/lang/String;)Z
    .locals 5
    .parameter "type"
    .parameter "telephone"

    .prologue
    const/4 v1, 0x0

    .line 268
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 277
    :goto_0
    return v1

    .line 272
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v0

    .line 273
    .local v0, helper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    const-string v2, "contactlist"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    .line 276
    .local v1, ret:Z
    :cond_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    goto :goto_0
.end method

.method public static getBlackListName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "inputtext"

    .prologue
    .line 441
    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static isInList(ILjava/lang/String;)Z
    .locals 3
    .parameter "type"
    .parameter "telephone"

    .prologue
    .line 251
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    move-result-object v0

    .line 252
    .local v0, contactCache:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    const/4 v1, 0x0

    .line 253
    .local v1, name:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 261
    :goto_0
    if-eqz v1, :cond_0

    .line 262
    const/4 v2, 0x1

    .line 264
    :goto_1
    return v2

    .line 255
    :pswitch_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getBlackContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    goto :goto_0

    .line 258
    :pswitch_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getWhiteContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 253
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private reLoadCache()V
    .locals 2

    .prologue
    .line 307
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    move-result-object v0

    .line 308
    .local v0, contactCache:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    iget v1, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    packed-switch v1, :pswitch_data_0

    .line 322
    :goto_0
    return-void

    .line 310
    :pswitch_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadBlackListCache()V

    goto :goto_0

    .line 314
    :pswitch_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadWhiteListCache()V

    goto :goto_0

    .line 308
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static reloadCacheList(I)V
    .locals 1
    .parameter "type"

    .prologue
    .line 292
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    move-result-object v0

    .line 293
    .local v0, contactCache:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    packed-switch p0, :pswitch_data_0

    .line 301
    :goto_0
    return-void

    .line 295
    :pswitch_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadBlackListCache()V

    goto :goto_0

    .line 298
    :pswitch_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->loadWhiteListCache()V

    goto :goto_0

    .line 293
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 2
    .parameter "telephone"

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getByNumber(Ljava/lang/String;)Lcom/zte/heartyservice/intercept/Tencent/Contact;

    move-result-object v0

    .line 222
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    if-eqz v0, :cond_0

    .line 223
    const/4 v1, 0x1

    .line 225
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public contains(Ljava/lang/String;I)Z
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 488
    const/4 v1, 0x0

    .line 489
    .local v1, r:Z
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->getByNumber(Ljava/lang/String;)Lcom/zte/heartyservice/intercept/Tencent/Contact;

    move-result-object v0

    .line 490
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    if-eqz v0, :cond_0

    .line 493
    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    if-nez v2, :cond_1

    .line 495
    packed-switch p2, :pswitch_data_0

    .line 510
    :cond_0
    :goto_0
    return v1

    .line 497
    :pswitch_0
    iget-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForCalling:Z

    if-eqz v2, :cond_0

    .line 498
    const/4 v1, 0x1

    goto :goto_0

    .line 501
    :pswitch_1
    iget-boolean v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->enableForSMS:Z

    if-eqz v2, :cond_0

    .line 502
    const/4 v1, 0x1

    goto :goto_0

    .line 505
    :cond_1
    iget v2, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 507
    const/4 v1, 0x1

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public delete(Lcom/zte/heartyservice/intercept/Tencent/Contact;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 386
    iget v1, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->id:I

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->deleteByID(I)Z

    move-result v0

    .line 401
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
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 406
    .local p1, entities:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    const/4 v2, 0x0

    .line 407
    .local v2, isDeleted:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 408
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 409
    .local v3, sql_where:Ljava/lang/StringBuffer;
    const-string v4, "id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 411
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;

    .line 412
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/zte/heartyservice/intercept/Tencent/Contact;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 414
    .end local v0           #contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 415
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 416
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x1

    .line 432
    :goto_1
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v4}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 437
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sql_where:Ljava/lang/StringBuffer;
    :goto_2
    return v2

    .line 416
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #sql_where:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 434
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sql_where:Ljava/lang/StringBuffer;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public deleteByPhoneAndType(Ljava/lang/String;I)Z
    .locals 6
    .parameter "num"
    .parameter "type"

    .prologue
    .line 56
    const/4 v0, 0x1

    .line 57
    .local v0, result:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number=\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 58
    .local v1, s:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " and "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "type"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_0

    .line 59
    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reLoadCache()V

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 64
    return v0

    .line 61
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/Contact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ORDER BY id DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 75
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 76
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->getContactsFromCursor(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v1

    .line 77
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/Contact;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 78
    return-object v1
.end method

.method public getByID(I)Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .locals 5
    .parameter "id"

    .prologue
    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 87
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->getContactFromCursor(Landroid/database/Cursor;)Lcom/zte/heartyservice/intercept/Tencent/Contact;

    move-result-object v0

    .line 88
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 89
    return-object v0
.end method

.method public getByNumber(Ljava/lang/String;)Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .locals 5
    .parameter "number"

    .prologue
    .line 191
    if-nez p1, :cond_0

    .line 192
    const/4 v0, 0x0

    .line 199
    :goto_0
    return-object v0

    .line 194
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/PhoneNumberUtil;->getSQLEqual(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 196
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 197
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->getContactFromCursor(Landroid/database/Cursor;)Lcom/zte/heartyservice/intercept/Tencent/Contact;

    move-result-object v0

    .line 198
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    goto :goto_0
.end method

.method public getByNumberLike(Ljava/lang/String;)Lcom/zte/heartyservice/intercept/Tencent/Contact;
    .locals 5
    .parameter "number"

    .prologue
    .line 208
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " LIKE \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 209
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 210
    .local v1, cursor:Landroid/database/Cursor;
    invoke-static {v1}, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->getContactFromCursor(Landroid/database/Cursor;)Lcom/zte/heartyservice/intercept/Tencent/Contact;

    move-result-object v0

    .line 211
    .local v0, contact:Lcom/zte/heartyservice/intercept/Tencent/Contact;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 212
    return-object v0
.end method

.method public getCount()I
    .locals 5

    .prologue
    .line 174
    const/4 v2, 0x0

    .line 175
    .local v2, total:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT COUNT(*) FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 176
    .local v1, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 177
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 180
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 181
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 182
    return v2
.end method

.method public getName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "telephone"

    .prologue
    .line 234
    invoke-static {}, Lcom/zte/heartyservice/intercept/Tencent/DaoCreator;->createContactCache()Lcom/zte/heartyservice/intercept/Tencent/ContactCache;

    move-result-object v0

    .line 235
    .local v0, contactCache:Lcom/zte/heartyservice/intercept/Tencent/ContactCache;
    const/4 v1, 0x0

    .line 236
    .local v1, name:Ljava/lang/String;
    iget v2, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    packed-switch v2, :pswitch_data_0

    .line 247
    :goto_0
    return-object v1

    .line 238
    :pswitch_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getBlackContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 239
    goto :goto_0

    .line 241
    :pswitch_1
    invoke-virtual {v0}, Lcom/zte/heartyservice/intercept/Tencent/ContactCache;->getWhiteContactMap()Lcom/zte/heartyservice/intercept/Tencent/ContactMap;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactMap;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 236
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    return v0
.end method

.method public insert(Lcom/zte/heartyservice/intercept/Tencent/Contact;)J
    .locals 6
    .parameter "contact"

    .prologue
    .line 98
    iget v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->type:I

    iput v3, p1, Lcom/zte/heartyservice/intercept/Tencent/Contact;->type:I

    .line 99
    invoke-static {p1}, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/Contact;)Landroid/content/ContentValues;

    move-result-object v0

    .line 100
    .local v0, contentValues:Landroid/content/ContentValues;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->tableName:Ljava/lang/String;

    const-string v5, "id"

    invoke-virtual {v3, v4, v5, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    .line 114
    .local v1, id:J
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 115
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_0

    invoke-direct {p0}, Lcom/zte/heartyservice/intercept/Tencent/ContactDao;->reLoadCache()V

    .line 116
    :cond_0
    return-wide v1
.end method

.class public Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;
.super Ljava/lang/Object;
.source "CallLogDao.java"

# interfaces
.implements Ltmsdk/common/module/aresengine/ICallLogDao;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltmsdk/common/module/aresengine/ICallLogDao",
        "<",
        "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "id DESC"


# instance fields
.field private dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

.field private privateFlag:I

.field private tableName:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "privateFlag"

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "pimcalllog"

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    .line 32
    iput p1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I

    .line 33
    invoke-static {}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->getInstance()Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I

    return v0
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;)Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 23
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    return-object v0
.end method

.method private deleteByID(I)Z
    .locals 5
    .parameter "id"

    .prologue
    .line 67
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

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

    .line 68
    .local v0, count:I
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 69
    if-lez v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)Z
    .locals 2
    .parameter "entity"

    .prologue
    .line 308
    iget v1, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->id:I

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->deleteByID(I)Z

    move-result v0

    .line 314
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
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 73
    .local p1, calllogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    const/4 v2, 0x0

    .line 74
    .local v2, isDeleted:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 75
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 76
    .local v3, sql_where:Ljava/lang/StringBuffer;
    const-string v4, "id IN ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .line 78
    .local v0, calllog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->id:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 80
    .end local v0           #calllog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 81
    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v5, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_1

    const/4 v2, 0x1

    .line 90
    :goto_1
    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v4}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 94
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sql_where:Ljava/lang/StringBuffer;
    :goto_2
    return v2

    .line 82
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v3       #sql_where:Ljava/lang/StringBuffer;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 92
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v3           #sql_where:Ljava/lang/StringBuffer;
    :cond_2
    const/4 v2, 0x1

    goto :goto_2
.end method

.method public getAll()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "privateflag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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

    .line 103
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 104
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v1

    .line 105
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 106
    return-object v1
.end method

.method public getAllNoRead()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 254
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

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

    .line 255
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 256
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v1

    .line 257
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 258
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
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    const/16 v3, 0x2a

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_0

    .line 229
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "privateflag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I

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

    const-string v4, " ORDER BY "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "id DESC"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 231
    .local v0, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->getLogsFromCursor(Landroid/database/Cursor;Z)Ljava/util/List;

    move-result-object v1

    .line 232
    .local v1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 237
    .end local v0           #cursor:Landroid/database/Cursor;
    .end local v2           #query:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 234
    .end local v1           #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .restart local v1       #list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    goto :goto_0
.end method

.method public getByID(I)Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    .locals 5
    .parameter "id"

    .prologue
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT * FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 155
    .local v2, sql:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 156
    .local v1, cursor:Landroid/database/Cursor;
    const/4 v3, 0x0

    invoke-static {v1, v3}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->getLogFromCursor(Landroid/database/Cursor;Z)Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    move-result-object v0

    .line 157
    .local v0, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 158
    return-object v0
.end method

.method public getCallLogNum()I
    .locals 5

    .prologue
    .line 114
    const/4 v1, 0x0

    .line 115
    .local v1, num:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT count(*) FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "privateflag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 117
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 118
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 120
    :cond_0
    if-eqz v0, :cond_1

    .line 121
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 123
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 124
    return v1
.end method

.method public getCallLogNum(JJ)I
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    .line 135
    const/4 v1, 0x0

    .line 136
    .local v1, num:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SELECT count(*) FROM "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " WHERE "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "privateflag"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

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

    .line 137
    .local v2, query:Ljava/lang/String;
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 138
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 139
    const/4 v3, 0x0

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 141
    :cond_0
    if-eqz v0, :cond_1

    .line 142
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v3}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 145
    return v1
.end method

.method public insert(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)J
    .locals 14
    .parameter "callLog"

    .prologue
    .line 167
    iget v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->privateFlag:I

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->generateContentValues(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;IZ)Landroid/content/ContentValues;

    move-result-object v8

    .line 168
    .local v8, contentValues:Landroid/content/ContentValues;
    iget-object v0, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 169
    const/4 v11, 0x0

    .line 171
    .local v11, cur:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    const/4 v2, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "number=\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->date:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 174
    if-eqz v11, :cond_1

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    const-string v0, "id"

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 176
    .local v12, id:J
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 180
    if-eqz v11, :cond_0

    .line 181
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 193
    .end local v11           #cur:Landroid/database/Cursor;
    .end local v12           #id:J
    :cond_0
    :goto_0
    return-wide v12

    .line 180
    .restart local v11       #cur:Landroid/database/Cursor;
    :cond_1
    if-eqz v11, :cond_2

    .line 181
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 186
    .end local v11           #cur:Landroid/database/Cursor;
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

    const-string v2, "id"

    invoke-virtual {v0, v1, v2, v8}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v9

    .line 187
    .local v9, count:J
    iget-object v0, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    move-wide v12, v9

    .line 193
    goto :goto_0

    .line 180
    .end local v9           #count:J
    .restart local v11       #cur:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v11, :cond_3

    .line 181
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public insert(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;Ltmsdk/common/module/aresengine/FilterResult;)J
    .locals 4
    .parameter "arg0"
    .parameter "arg1"

    .prologue
    .line 370
    move-object v0, p1

    .line 372
    .local v0, callLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->tmpCallLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    if-eqz v1, :cond_1

    .line 373
    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    sget-object v2, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->tmpCallLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    iget-object v2, v2, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->phonenum:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 374
    sget-object v1, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->tmpCallLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    iget v1, v1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    iput v1, p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    .line 376
    :cond_0
    const/4 v1, 0x0

    sput-object v1, Lcom/zte/heartyservice/intercept/Tencent/EventsMonitor;->tmpCallLog:Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .line 378
    :cond_1
    const-string v1, "CallLogDao"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "liuji debug call insert subscription:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;->subscription:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)J

    move-result-wide v1

    return-wide v1
.end method

.method public bridge synthetic insert(Ltmsdk/common/module/aresengine/CallLogEntity;Ltmsdk/common/module/aresengine/FilterResult;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    check-cast p1, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->insert(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;Ltmsdk/common/module/aresengine/FilterResult;)J

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
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, calllogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    new-instance v2, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;

    invoke-direct {v2, p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao$1;-><init>(Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->execTransaction(Lcom/zte/heartyservice/intercept/Tencent/SimpleCallback;)Z

    move-result v0

    .line 218
    .local v0, isInserted:Z
    return v0
.end method

.method public insertCallLog(Ljava/util/List;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, calllogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    const/4 v4, 0x1

    .line 282
    const/4 v2, 0x0

    .line 284
    .local v2, result:Z
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 285
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v0, v3, [Landroid/content/ContentValues;

    .line 286
    .local v0, contentValues:[Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 287
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zte/heartyservice/intercept/Tencent/CallLogx;

    invoke-static {v3, v4, v4}, Lcom/zte/heartyservice/intercept/Tencent/CallLogUtil;->generateContentValuesForSystem(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;IZ)Landroid/content/ContentValues;

    move-result-object v3

    aput-object v3, v0, v1

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 289
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/zte/heartyservice/intercept/Tencent/ContactUtil;->CALL_LOG_URI:Landroid/net/Uri;

    invoke-virtual {v3, v5, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v3

    if-lez v3, :cond_1

    move v2, v4

    .line 294
    .end local v0           #contentValues:[Landroid/content/ContentValues;
    .end local v1           #i:I
    :goto_1
    return v2

    .line 289
    .restart local v0       #contentValues:[Landroid/content/ContentValues;
    .restart local v1       #i:I
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 291
    .end local v0           #contentValues:[Landroid/content/ContentValues;
    .end local v1           #i:I
    :cond_2
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public recover(Lcom/zte/heartyservice/intercept/Tencent/CallLogx;)Z
    .locals 2
    .parameter "callLog"

    .prologue
    .line 267
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 268
    .local v0, logs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->recover(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public recover(Ljava/util/List;)Z
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/intercept/Tencent/CallLogx;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, callLogs:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->insertCallLog(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->delete(Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public recoverByAddress(Ljava/lang/String;)Z
    .locals 2
    .parameter "address"

    .prologue
    .line 303
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->getByAddress(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 304
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/intercept/Tencent/CallLogx;>;"
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->recover(Ljava/util/List;)Z

    move-result v1

    return v1
.end method

.method public setAllToBeRead()V
    .locals 3

    .prologue
    .line 245
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->tableName:Ljava/lang/String;

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

    .line 246
    .local v0, sql:Ljava/lang/String;
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1, v0}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->noneQuery(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/zte/heartyservice/intercept/Tencent/CallLogDao;->dbHelper:Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;

    invoke-virtual {v1}, Lcom/zte/heartyservice/antivirus/Tencent/DBHelper;->close()V

    .line 248
    return-void
.end method

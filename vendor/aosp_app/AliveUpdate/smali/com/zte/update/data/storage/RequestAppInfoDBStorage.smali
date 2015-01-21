.class public Lcom/zte/update/data/storage/RequestAppInfoDBStorage;
.super Lcom/zte/update/data/storage/DataBaseStorage;
.source "RequestAppInfoDBStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/data/storage/RequestAppInfoDBStorage$1;,
        Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/update/data/storage/DataBaseStorage",
        "<",
        "Lcom/zte/update/data/RequestAppInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COLUMN_TYPES:[Ljava/lang/String; = null

.field public static final TABLE_NAME:Ljava/lang/String; = "request_info"

.field private static instance:Lcom/zte/update/data/storage/RequestAppInfoDBStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 162
    invoke-static {}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->getColumnTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->COLUMN_TYPES:[Ljava/lang/String;

    .line 164
    invoke-static {}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->getColunms()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 169
    invoke-direct {p0}, Lcom/zte/update/data/storage/DataBaseStorage;-><init>()V

    .line 170
    return-void
.end method

.method public static getInstance()Lcom/zte/update/data/storage/RequestAppInfoDBStorage;
    .locals 1

    .prologue
    .line 173
    sget-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/RequestAppInfoDBStorage;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;

    invoke-direct {v0}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;-><init>()V

    sput-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/RequestAppInfoDBStorage;

    .line 175
    sget-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/RequestAppInfoDBStorage;

    invoke-virtual {v0}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->initColumnIndex()V

    .line 177
    :cond_0
    sget-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/RequestAppInfoDBStorage;

    return-object v0
.end method


# virtual methods
.method protected createData(Landroid/database/Cursor;)Lcom/zte/update/data/RequestAppInfo;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 211
    new-instance v0, Lcom/zte/update/data/RequestAppInfo;

    invoke-direct {v0}, Lcom/zte/update/data/RequestAppInfo;-><init>()V

    .line 212
    .local v0, appInfo:Lcom/zte/update/data/RequestAppInfo;
    invoke-static {v0, p1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->setValues(Lcom/zte/update/data/RequestAppInfo;Landroid/database/Cursor;)V

    .line 213
    invoke-virtual {p0, v0}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->getMainKeyValue(Lcom/zte/update/data/RequestAppInfo;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/update/data/RequestAppInfo;->setMainKey(Ljava/lang/Object;)V

    .line 214
    return-object v0
.end method

.method protected bridge synthetic createData(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->createData(Landroid/database/Cursor;)Lcom/zte/update/data/RequestAppInfo;

    move-result-object v0

    return-object v0
.end method

.method protected geMainKeyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    invoke-static {}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->getMainKeyColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBindArgs(Lcom/zte/update/data/RequestAppInfo;)[Ljava/lang/Object;
    .locals 1
    .parameter "t"

    .prologue
    .line 199
    invoke-static {p1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->getValues(Lcom/zte/update/data/RequestAppInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getBindArgs(Lcom/zte/update/data/RequestAppInfo;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 5
    .parameter "info"
    .parameter "columns"

    .prologue
    .line 229
    array-length v4, p2

    new-array v3, v4, [Ljava/lang/Object;

    .line 230
    .local v3, objects:[Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v4, p2

    if-ge v1, v4, :cond_0

    .line 231
    aget-object v2, p2, v1

    .line 232
    .local v2, key:Ljava/lang/String;
    invoke-static {v2}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->valueOf(Ljava/lang/String;)Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;

    move-result-object v0

    .line 233
    .local v0, col:Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
    invoke-virtual {v0, p1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->getValue(Lcom/zte/update/data/RequestAppInfo;)Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    .line 230
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 237
    .end local v0           #col:Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
    .end local v2           #key:Ljava/lang/String;
    :cond_0
    return-object v3
.end method

.method protected bridge synthetic getBindArgs(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/zte/update/data/RequestAppInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->getBindArgs(Lcom/zte/update/data/RequestAppInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getBindArgs(Ljava/lang/Object;[Ljava/lang/String;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 17
    check-cast p1, Lcom/zte/update/data/RequestAppInfo;

    .end local p1
    invoke-virtual {p0, p1, p2}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->getBindArgs(Lcom/zte/update/data/RequestAppInfo;[Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getColumnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 189
    sget-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->COLUMN_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method protected getColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method protected getColumnsExcept([Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .parameter "keys"

    .prologue
    .line 243
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 244
    .local v3, except:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v2, columns:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->values()[Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;

    move-result-object v7

    .line 247
    .local v7, set:[Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
    move-object v0, v7

    .local v0, arr$:[Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
    array-length v6, v0

    .local v6, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v6, :cond_1

    aget-object v1, v0, v4

    .line 248
    .local v1, col:Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
    invoke-virtual {v1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->name()Ljava/lang/String;

    move-result-object v5

    .line 249
    .local v5, keyname:Ljava/lang/String;
    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 250
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 253
    .end local v1           #col:Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;
    .end local v5           #keyname:Ljava/lang/String;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v2, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    return-object v8
.end method

.method public getMainKeyValue(Lcom/zte/update/data/RequestAppInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "t"

    .prologue
    .line 225
    invoke-static {p1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->getMainKeyColumnValue(Lcom/zte/update/data/RequestAppInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 17
    check-cast p1, Lcom/zte/update/data/RequestAppInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->getMainKeyValue(Lcom/zte/update/data/RequestAppInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 184
    const-string v0, "request_info"

    return-object v0
.end method

.method protected initColumnIndex()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 204
    const-string v1, "request_info"

    invoke-virtual {p0, v1, v2, v2}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 205
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage$ColumnEnums;->initColumnIndex(Landroid/database/Cursor;)V

    .line 206
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 207
    return-void
.end method

.method public update(Lcom/zte/update/data/RequestAppInfo;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 8
    .parameter "info"
    .parameter "keys"
    .parameter "values"

    .prologue
    .line 290
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 291
    .local v0, convalues:Landroid/content/ContentValues;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 292
    aget-object v2, p2, v1

    aget-object v3, p3, v1

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 294
    :cond_0
    iget-object v2, p0, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->db:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->getTableName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "app_name=?"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    invoke-virtual {p1}, Lcom/zte/update/data/RequestAppInfo;->getAppName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v0, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 296
    return-void
.end method

.method public bridge synthetic update(Ljava/lang/Object;[Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 17
    check-cast p1, Lcom/zte/update/data/RequestAppInfo;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Lcom/zte/update/data/storage/RequestAppInfoDBStorage;->update(Lcom/zte/update/data/RequestAppInfo;[Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

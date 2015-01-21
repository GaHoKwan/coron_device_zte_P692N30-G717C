.class public Lcom/zte/update/data/storage/CacheAppInfoDBStorage;
.super Lcom/zte/update/data/storage/DataBaseStorage;
.source "CacheAppInfoDBStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/data/storage/CacheAppInfoDBStorage$1;,
        Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/update/data/storage/DataBaseStorage",
        "<",
        "Lcom/zte/update/data/CacheAppInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COLUMN_TYPES:[Ljava/lang/String; = null

.field private static final TABLE_NAME:Ljava/lang/String; = "cache_app_infos"

.field private static instance:Lcom/zte/update/data/storage/CacheAppInfoDBStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 169
    invoke-static {}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;->getColumnTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->COLUMN_TYPES:[Ljava/lang/String;

    .line 171
    invoke-static {}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;->getColunms()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 177
    invoke-direct {p0}, Lcom/zte/update/data/storage/DataBaseStorage;-><init>()V

    .line 178
    return-void
.end method

.method public static getInstance()Lcom/zte/update/data/storage/CacheAppInfoDBStorage;
    .locals 1

    .prologue
    .line 181
    sget-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/CacheAppInfoDBStorage;

    if-nez v0, :cond_0

    .line 182
    new-instance v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;

    invoke-direct {v0}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;-><init>()V

    sput-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/CacheAppInfoDBStorage;

    .line 183
    sget-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/CacheAppInfoDBStorage;

    invoke-virtual {v0}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->initColumnIndex()V

    .line 185
    :cond_0
    sget-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->instance:Lcom/zte/update/data/storage/CacheAppInfoDBStorage;

    return-object v0
.end method


# virtual methods
.method protected createData(Landroid/database/Cursor;)Lcom/zte/update/data/CacheAppInfo;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 222
    new-instance v0, Lcom/zte/update/data/CacheAppInfo;

    invoke-direct {v0}, Lcom/zte/update/data/CacheAppInfo;-><init>()V

    .line 223
    .local v0, info:Lcom/zte/update/data/CacheAppInfo;
    invoke-static {v0, p1}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;->setValues(Lcom/zte/update/data/CacheAppInfo;Landroid/database/Cursor;)V

    .line 225
    invoke-virtual {p0, v0}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->getMainKeyValue(Lcom/zte/update/data/CacheAppInfo;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/update/data/CacheAppInfo;->setMainKey(Ljava/lang/Object;)V

    .line 227
    return-object v0
.end method

.method protected bridge synthetic createData(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->createData(Landroid/database/Cursor;)Lcom/zte/update/data/CacheAppInfo;

    move-result-object v0

    return-object v0
.end method

.method protected geMainKeyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    invoke-static {}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;->getMainKeyColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBindArgs(Lcom/zte/update/data/CacheAppInfo;)[Ljava/lang/Object;
    .locals 1
    .parameter "t"

    .prologue
    .line 210
    invoke-static {p1}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;->getValues(Lcom/zte/update/data/CacheAppInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getBindArgs(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/zte/update/data/CacheAppInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->getBindArgs(Lcom/zte/update/data/CacheAppInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getColumnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 197
    sget-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->COLUMN_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method protected getColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    sget-object v0, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getMainKeyValue(Lcom/zte/update/data/CacheAppInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "info"

    .prologue
    .line 237
    invoke-static {p1}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;->getMainKeyColumnValue(Lcom/zte/update/data/CacheAppInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/zte/update/data/CacheAppInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->getMainKeyValue(Lcom/zte/update/data/CacheAppInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 192
    const-string v0, "cache_app_infos"

    return-object v0
.end method

.method protected initColumnIndex()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 215
    const-string v1, "cache_app_infos"

    invoke-virtual {p0, v1, v2, v2}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 216
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/zte/update/data/storage/CacheAppInfoDBStorage$ColumnEnums;->initColumnIndex(Landroid/database/Cursor;)V

    .line 217
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 218
    return-void
.end method

.class public Lcom/zte/update/data/storage/DownloadInfoDBStorage;
.super Lcom/zte/update/data/storage/DataBaseStorage;
.source "DownloadInfoDBStorage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/update/data/storage/DownloadInfoDBStorage$1;,
        Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/zte/update/data/storage/DataBaseStorage",
        "<",
        "Lcom/zte/update/data/DownloadInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static final COLUMNS:[Ljava/lang/String; = null

.field private static final COLUMN_TYPES:[Ljava/lang/String; = null

.field private static final TABLE_NAME:Ljava/lang/String; = "download_infos"

.field static instance:Lcom/zte/update/data/storage/DownloadInfoDBStorage;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getColumnTypes()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->COLUMN_TYPES:[Ljava/lang/String;

    .line 158
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getColunms()[Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->COLUMNS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/zte/update/data/storage/DataBaseStorage;-><init>()V

    .line 9
    return-void
.end method

.method public static getInstance()Lcom/zte/update/data/storage/DownloadInfoDBStorage;
    .locals 1

    .prologue
    .line 164
    sget-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->instance:Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    invoke-direct {v0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;-><init>()V

    sput-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->instance:Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    .line 166
    sget-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->instance:Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    invoke-virtual {v0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->initColumnIndex()V

    .line 168
    :cond_0
    sget-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->instance:Lcom/zte/update/data/storage/DownloadInfoDBStorage;

    return-object v0
.end method


# virtual methods
.method protected createData(Landroid/database/Cursor;)Lcom/zte/update/data/DownloadInfo;
    .locals 2
    .parameter "cursor"

    .prologue
    .line 202
    new-instance v0, Lcom/zte/update/data/DownloadInfo;

    invoke-direct {v0}, Lcom/zte/update/data/DownloadInfo;-><init>()V

    .line 203
    .local v0, info:Lcom/zte/update/data/DownloadInfo;
    invoke-static {v0, p1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->setValues(Lcom/zte/update/data/DownloadInfo;Landroid/database/Cursor;)V

    .line 204
    invoke-virtual {p0, v0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->getMainKeyValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/zte/update/data/DownloadInfo;->setMainKey(Ljava/lang/Object;)V

    .line 205
    return-object v0
.end method

.method protected bridge synthetic createData(Landroid/database/Cursor;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->createData(Landroid/database/Cursor;)Lcom/zte/update/data/DownloadInfo;

    move-result-object v0

    return-object v0
.end method

.method protected geMainKeyColumnName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 211
    invoke-static {}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getMainKeyColumnName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getBindArgs(Lcom/zte/update/data/DownloadInfo;)[Ljava/lang/Object;
    .locals 1
    .parameter "t"

    .prologue
    .line 188
    invoke-static {p1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getValues(Lcom/zte/update/data/DownloadInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic getBindArgs(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/zte/update/data/DownloadInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->getBindArgs(Lcom/zte/update/data/DownloadInfo;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getColumnTypes()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 178
    sget-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->COLUMN_TYPES:[Ljava/lang/String;

    return-object v0
.end method

.method protected getColumns()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    sget-object v0, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getMainKeyValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;
    .locals 1
    .parameter "t"

    .prologue
    .line 216
    invoke-static {p1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->getMainKeyColumnValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMainKeyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 7
    check-cast p1, Lcom/zte/update/data/DownloadInfo;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->getMainKeyValue(Lcom/zte/update/data/DownloadInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    const-string v0, "download_infos"

    return-object v0
.end method

.method protected initColumnIndex()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    const-string v1, "download_infos"

    invoke-virtual {p0, v1, v2, v2}, Lcom/zte/update/data/storage/DownloadInfoDBStorage;->query(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/Object;)Landroid/database/Cursor;

    move-result-object v0

    .line 195
    .local v0, cursor:Landroid/database/Cursor;
    invoke-static {v0}, Lcom/zte/update/data/storage/DownloadInfoDBStorage$ColumnEnums;->initColumnIndex(Landroid/database/Cursor;)V

    .line 196
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 197
    return-void
.end method

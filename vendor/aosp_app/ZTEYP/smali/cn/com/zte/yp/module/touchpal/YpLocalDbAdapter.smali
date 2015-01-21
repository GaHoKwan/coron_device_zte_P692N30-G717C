.class public Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;
.super Ljava/lang/Object;
.source "YpLocalDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final DATABASE_NAME:Ljava/lang/String; = "yplocal.db"

.field private static final DATABASE_VERSION:I = 0x2

.field private static final DATA_SOURCE:Ljava/lang/String; = "datasource"

.field private static final ID:Ljava/lang/String; = "id"

.field private static final LOCATION:Ljava/lang/String; = "location"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final NUMBER:Ljava/lang/String; = "number"

.field private static final PHOTO:Ljava/lang/String; = "photo"

.field private static final TABLE_NAME:Ljava/lang/String; = "local_data"


# instance fields
.field private insertList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentValues;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->insertList:Ljava/util/List;

    .line 39
    iput-object p1, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->mContext:Landroid/content/Context;

    .line 40
    new-instance v0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;

    iget-object v1, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->mOpenHelper:Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;

    .line 41
    return-void
.end method

.method private checkYpDataExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z
    .locals 5
    .parameter "db"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "select count(*) from local_data where number =\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\';"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 112
    .local v1, tableCursor:Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 113
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getShort(I)S

    move-result v0

    .line 114
    .local v0, count:S
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 115
    if-nez v0, :cond_0

    .line 118
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public applyBatchInsert()V
    .locals 5

    .prologue
    .line 127
    iget-object v3, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->mOpenHelper:Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;

    invoke-virtual {v3}, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 129
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 130
    iget-object v3, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->insertList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 131
    .local v2, value:Landroid/content/ContentValues;
    const-string v3, "local_data"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    goto :goto_0

    .line 133
    .end local v2           #value:Landroid/content/ContentValues;
    :cond_0
    iget-object v3, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->insertList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 135
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 137
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 138
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 139
    return-void
.end method

.method public insertBussinessCard2Buffer(Lcn/com/zte/yp/YpContact;)I
    .locals 5
    .parameter "ypContact"

    .prologue
    .line 89
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "insertCityZone2Buffer "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcn/com/zte/yp/YpContact;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 90
    iget-object v3, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->mOpenHelper:Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;

    invoke-virtual {v3}, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 91
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    invoke-virtual {p1}, Lcn/com/zte/yp/YpContact;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->checkYpDataExist(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Z

    move-result v1

    .line 92
    .local v1, exist:Z
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 93
    if-eqz v1, :cond_0

    .line 94
    const-string v3, "db already contain this ypContact.Drop it."

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 95
    const/4 v3, 0x0

    .line 105
    :goto_0
    return v3

    .line 98
    :cond_0
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "number"

    invoke-virtual {p1}, Lcn/com/zte/yp/YpContact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v3, "name"

    invoke-virtual {p1}, Lcn/com/zte/yp/YpContact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v3, "datasource"

    invoke-virtual {p1}, Lcn/com/zte/yp/YpContact;->getDatasource()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v3, "location"

    invoke-virtual {p1}, Lcn/com/zte/yp/YpContact;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v3, "photo"

    invoke-virtual {p1}, Lcn/com/zte/yp/YpContact;->getPhoto()[B

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    .line 104
    iget-object v3, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->insertList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v3, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->insertList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0
.end method

.method public queryLocalData([Ljava/lang/String;)[Lcn/com/zte/yp/YpContact;
    .locals 11
    .parameter "numbers"

    .prologue
    .line 68
    array-length v0, p1

    new-array v9, v0, [Lcn/com/zte/yp/YpContact;

    .line 69
    .local v9, ypcs:[Lcn/com/zte/yp/YpContact;
    iget-object v0, p0, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter;->mOpenHelper:Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;

    invoke-virtual {v0}, Lcn/com/zte/yp/module/touchpal/YpLocalDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v7

    .line 70
    .local v7, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "select number,name,datasource,location,photo from local_data where number =\'"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v10, p1, v8

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v10, "\';"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v10, 0x0

    invoke-virtual {v7, v0, v10}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 73
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 74
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 75
    const-string v0, "number"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, phone:Ljava/lang/String;
    const-string v0, "name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, name:Ljava/lang/String;
    const-string v0, "datasource"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, datasource:Ljava/lang/String;
    const-string v0, "location"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 79
    .local v5, location:Ljava/lang/String;
    const-string v0, "photo"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    .line 80
    .local v3, photo:[B
    new-instance v0, Lcn/com/zte/yp/YpContact;

    invoke-direct/range {v0 .. v5}, Lcn/com/zte/yp/YpContact;-><init>(Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)V

    aput-object v0, v9, v8

    .line 82
    .end local v1           #phone:Ljava/lang/String;
    .end local v2           #name:Ljava/lang/String;
    .end local v3           #photo:[B
    .end local v4           #datasource:Ljava/lang/String;
    .end local v5           #location:Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 70
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 84
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    invoke-virtual {v7}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 85
    return-object v9
.end method

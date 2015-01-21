.class public Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;
.super Ljava/lang/Object;
.source "ZteNltDbAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$1;,
        Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$OptEntry;,
        Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;
    }
.end annotation


# static fields
.field private static final AS:Ljava/lang/String; = " as "

.field private static final CARD_TYPE_FIXEDPHONE:Ljava/lang/String; = "\'fixedphone\'"

.field private static final CARD_TYPE_MOBILEPHONE:Ljava/lang/String; = "\'mobilephone\'"

.field private static final CART_TYPE_INTERNATIONAL:Ljava/lang/String; = "\'intlphone\'"

.field private static final CITY_ZONE_CITY:Ljava/lang/String; = "city_zone.city"

.field private static final CITY_ZONE_ZONE:Ljava/lang/String; = "city_zone.zone"

.field private static final DATABASE_VERSION:I = 0x2


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOpenHelper:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;

    iget-object v1, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->mOpenHelper:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;

    .line 46
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->checkDbFile(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private checkDbFile(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 55
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/data/cn.com.zte.yp/databases/"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 56
    .local v1, dir:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 57
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 59
    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/data/data/cn.com.zte.yp/databases/numberinfo.db"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v0, dbFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 61
    const v2, 0x7f050002

    invoke-static {p1, v2, v0}, Lcn/com/zte/nlt/utils/FileUtil;->copyRawToFiles(Landroid/content/Context;ILjava/io/File;)V

    .line 63
    :cond_1
    return-void
.end method

.method private copyCusor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 8
    .parameter "srcCursor"

    .prologue
    const/4 v6, 0x0

    .line 270
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-nez v7, :cond_2

    :cond_0
    move-object v2, v6

    .line 304
    :cond_1
    return-object v2

    .line 273
    :cond_2
    new-instance v2, Landroid/database/MatrixCursor;

    invoke-interface {p1}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 274
    .local v2, destCursor:Landroid/database/MatrixCursor;
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 275
    invoke-interface {p1}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 276
    .local v1, count:I
    new-array v5, v1, [Ljava/lang/Object;

    .line 277
    .local v5, values:[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v1, :cond_5

    .line 278
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getType(I)I

    move-result v4

    .line 279
    .local v4, type:I
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 281
    .local v0, columName:Ljava/lang/String;
    const-string v7, "cardtype"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "cityname"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 282
    :cond_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    aput-object v7, v5, v3

    .line 277
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_4
    packed-switch v4, :pswitch_data_0

    .line 298
    aput-object v6, v5, v3

    goto :goto_2

    .line 286
    :pswitch_0
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v3

    goto :goto_2

    .line 289
    :pswitch_1
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    goto :goto_2

    .line 292
    :pswitch_2
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v7

    aput-object v7, v5, v3

    goto :goto_2

    .line 295
    :pswitch_3
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getFloat(I)F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    aput-object v7, v5, v3

    goto :goto_2

    .line 302
    .end local v0           #columName:Ljava/lang/String;
    .end local v4           #type:I
    :cond_5
    invoke-virtual {v2, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private getCelPhoneNumberTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "prefix"

    .prologue
    const/4 v2, 0x3

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "location_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v1, v2, :cond_0

    .end local p1
    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .restart local p1
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private queryCellPhone(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 13
    .parameter "table"
    .parameter "prefix"

    .prologue
    const/4 v12, 0x0

    .line 235
    iget-object v3, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->mOpenHelper:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;

    invoke-virtual {v3}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 237
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " as location,city_zone"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 238
    .local v1, tables:Ljava/lang/String;
    const/4 v3, 0x4

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "location.begin as phonenum"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\'mobilephone\' as cardtype"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "city_zone.city as cityname"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "city_zone.zone as areacode"

    aput-object v4, v2, v3

    .line 240
    .local v2, columns:[Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuffer;

    invoke-direct {v11}, Ljava/lang/StringBuffer;-><init>()V

    .line 241
    .local v11, sbselection:Ljava/lang/StringBuffer;
    const-string v3, "location.begin<="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 242
    invoke-virtual {v11, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 243
    const-string v3, " and "

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 244
    const-string v3, "location.end>="

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 245
    invoke-virtual {v11, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 246
    const-string v3, " and location.city=city_zone.id"

    invoke-virtual {v11, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 247
    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v8

    .line 248
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 258
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v10, v12

    .line 260
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v11           #sbselection:Ljava/lang/StringBuffer;
    :goto_0
    return-object v10

    .line 251
    .restart local v1       #tables:Ljava/lang/String;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v11       #sbselection:Ljava/lang/StringBuffer;
    :cond_0
    :try_start_1
    invoke-direct {p0, v8}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->copyCusor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v10

    .line 252
    .local v10, retCursor:Landroid/database/Cursor;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_0

    .line 254
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v10           #retCursor:Landroid/database/Cursor;
    .end local v11           #sbselection:Ljava/lang/StringBuffer;
    :catch_0
    move-exception v9

    .line 255
    .local v9, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 258
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v10, v12

    .line 260
    goto :goto_0

    .line 258
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method private queryCellPhoneZoneInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;
    .locals 5
    .parameter "npInfo"

    .prologue
    .line 224
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->getCelPhoneNumberTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 225
    .local v1, table:Ljava/lang/String;
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->queryCellPhone(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 226
    .local v0, cursor:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 228
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->getCelPhoneNumberTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->queryCellPhone(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 231
    :cond_0
    return-object v0
.end method

.method private queryInternationalInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;
    .locals 14
    .parameter "npInfo"

    .prologue
    .line 154
    iget-object v4, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->mOpenHelper:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;

    invoke-virtual {v4}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 155
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 157
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "international"

    .line 158
    .local v1, tables:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "country as cityname"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "\'intlphone\' as cardtype"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "zone as areacode"

    aput-object v5, v2, v4

    .line 160
    .local v2, columns:[Ljava/lang/String;
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getPrefix()Ljava/lang/String;

    move-result-object v12

    .line 161
    .local v12, number:Ljava/lang/String;
    const/4 v11, 0x1

    .local v11, i:I
    :goto_0
    const/4 v4, 0x4

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    if-gt v11, v4, :cond_1

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v12, v5, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 163
    .local v3, sbselection:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 164
    if-eqz v9, :cond_0

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_0

    .line 165
    invoke-direct {p0, v9}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->copyCusor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v13

    .line 166
    .local v13, retCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 177
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #sbselection:Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #number:Ljava/lang/String;
    .end local v13           #retCursor:Landroid/database/Cursor;
    :goto_1
    return-object v13

    .line 169
    .restart local v1       #tables:Ljava/lang/String;
    .restart local v2       #columns:[Ljava/lang/String;
    .restart local v3       #sbselection:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v12       #number:Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 161
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 175
    .end local v3           #sbselection:Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v11           #i:I
    .end local v12           #number:Ljava/lang/String;
    :goto_2
    move-object v13, v9

    .line 177
    goto :goto_1

    .line 171
    :catch_0
    move-exception v10

    .line 172
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 175
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_2

    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method private queryPhoneZoneInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;
    .locals 12
    .parameter "npInfo"

    .prologue
    .line 187
    iget-object v4, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->mOpenHelper:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;

    invoke-virtual {v4}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 188
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 190
    .local v9, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "city_zone"

    .line 191
    .local v1, tables:Ljava/lang/String;
    const/4 v4, 0x3

    new-array v2, v4, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "city as cityname"

    aput-object v5, v2, v4

    const/4 v4, 0x1

    const-string v5, "\'fixedphone\' as cardtype"

    aput-object v5, v2, v4

    const/4 v4, 0x2

    const-string v5, "zone as areacode"

    aput-object v5, v2, v4

    .line 193
    .local v2, columns:[Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "zone=\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getPrefix()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, sbselection:Ljava/lang/String;
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 195
    invoke-direct {p0, v9}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->copyCusor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v11

    .line 196
    .local v11, retCursor:Landroid/database/Cursor;
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 202
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 204
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    .end local v3           #sbselection:Ljava/lang/String;
    .end local v11           #retCursor:Landroid/database/Cursor;
    :goto_0
    return-object v11

    .line 198
    :catch_0
    move-exception v10

    .line 199
    .local v10, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 202
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    move-object v11, v9

    .line 204
    goto :goto_0

    .line 202
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v4
.end method

.method public static removeDbFile()V
    .locals 1

    .prologue
    .line 70
    const-string v0, "/data/data/cn.com.zte.yp/databases/numberinfo.db"

    invoke-static {v0}, Lcn/com/zte/nlt/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 71
    const-string v0, "/data/data/cn.com.zte.yp/databases/numberinfo.db"

    invoke-static {v0}, Lcn/com/zte/nlt/utils/FileUtil;->deleteFile(Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getDbVersion()Ljava/lang/String;
    .locals 12

    .prologue
    .line 123
    iget-object v3, p0, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->mOpenHelper:Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;

    invoke-virtual {v3}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$DatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 124
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    const/4 v9, 0x0

    .line 125
    .local v9, cursor:Landroid/database/Cursor;
    const-string v11, ""

    .line 127
    .local v11, version:Ljava/lang/String;
    :try_start_0
    const-string v1, "version"

    .line 128
    .local v1, tables:Ljava/lang/String;
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "value"

    aput-object v4, v2, v3

    .line 129
    .local v2, columns:[Ljava/lang/String;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 130
    if-nez v9, :cond_0

    .line 131
    const-string v3, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 144
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    :goto_0
    return-object v3

    .line 133
    .restart local v1       #tables:Ljava/lang/String;
    .restart local v2       #columns:[Ljava/lang/String;
    :cond_0
    :try_start_1
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 134
    const-string v3, "value"

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v9, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 136
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 143
    .end local v1           #tables:Ljava/lang/String;
    .end local v2           #columns:[Ljava/lang/String;
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NLT dbVersion is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    move-object v3, v11

    .line 144
    goto :goto_0

    .line 137
    :catch_0
    move-exception v10

    .line 138
    .local v10, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 141
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    throw v3
.end method

.method public queryNumberRegionInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;
    .locals 3
    .parameter "npInfo"

    .prologue
    .line 101
    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, cursor:Landroid/database/Cursor;
    sget-object v1, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter$1;->$SwitchMap$cn$com$zte$nlt$NltConst$NumberType:[I

    invoke-virtual {p1}, Lcn/com/zte/nlt/module/NumberPrefixInfo;->getType()Lcn/com/zte/nlt/NltConst$NumberType;

    move-result-object v2

    invoke-virtual {v2}, Lcn/com/zte/nlt/NltConst$NumberType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 119
    :goto_0
    return-object v0

    .line 105
    :pswitch_0
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->queryCellPhoneZoneInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 106
    goto :goto_0

    .line 108
    :pswitch_1
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->queryPhoneZoneInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 109
    goto :goto_0

    .line 111
    :pswitch_2
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/module/zte/ZteNltDbAdapter;->queryInternationalInfo(Lcn/com/zte/nlt/module/NumberPrefixInfo;)Landroid/database/Cursor;

    move-result-object v0

    .line 112
    goto :goto_0

    .line 114
    :pswitch_3
    const-string v1, "phone number is error. do not search."

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

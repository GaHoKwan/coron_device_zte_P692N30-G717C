.class public Lcn/com/zte/yp/provider/YpProvider;
.super Landroid/content/ContentProvider;
.source "YpProvider.java"


# static fields
.field public static final ID_YP_ENABLED:I = 0x0

.field public static final ID_YP_ONLINE:I = 0x2

.field public static final ID_YP_SEARCH:I = 0x1

.field public static final ID_YP_SWITCH:I = 0x3

.field private static enabledColumns:[Ljava/lang/String;

.field private static switchColumns:[Ljava/lang/String;

.field public static final uriMatcher:Landroid/content/UriMatcher;

.field private static ypColumns:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 44
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "enabled"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/yp/provider/YpProvider;->enabledColumns:[Ljava/lang/String;

    .line 45
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "switch"

    aput-object v1, v0, v3

    sput-object v0, Lcn/com/zte/yp/provider/YpProvider;->switchColumns:[Ljava/lang/String;

    .line 46
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "name"

    aput-object v1, v0, v4

    const-string v1, "photo"

    aput-object v1, v0, v5

    const-string v1, "datasource"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "extraPhoto"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/zte/yp/provider/YpProvider;->ypColumns:[Ljava/lang/String;

    .line 53
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/com/zte/yp/provider/YpProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 54
    sget-object v0, Lcn/com/zte/yp/provider/YpProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.com.zte.yp"

    const-string v2, "enabled"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 55
    sget-object v0, Lcn/com/zte/yp/provider/YpProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.com.zte.yp"

    const-string v2, "yp"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 56
    sget-object v0, Lcn/com/zte/yp/provider/YpProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.com.zte.yp"

    const-string v2, "online"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 57
    sget-object v0, Lcn/com/zte/yp/provider/YpProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "cn.com.zte.yp"

    const-string v2, "switch"

    invoke-virtual {v0, v1, v2, v6}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private checkYpEnabled()Landroid/database/Cursor;
    .locals 4

    .prologue
    .line 217
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Lcn/com/zte/yp/provider/YpProvider;->enabledColumns:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 218
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/module/ModuleFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/zte/yp/module/ModuleFactory;->isEnabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 219
    return-object v0
.end method

.method private convertYpc2Cursor([Lcn/com/zte/yp/YpContact;)Landroid/database/Cursor;
    .locals 6
    .parameter "ypcs"

    .prologue
    const/4 v2, 0x0

    .line 303
    if-nez p1, :cond_0

    move-object v0, v2

    .line 324
    :goto_0
    return-object v0

    .line 306
    :cond_0
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcn/com/zte/yp/provider/YpProvider;->ypColumns:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 307
    .local v0, cursor:Landroid/database/MatrixCursor;
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    array-length v3, p1

    if-ge v1, v3, :cond_4

    .line 309
    aget-object v3, p1, v1

    if-eqz v3, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcn/com/zte/yp/YpContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcn/com/zte/yp/YpContact;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 310
    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcn/com/zte/yp/YpContact;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 312
    aget-object v3, p1, v1

    invoke-virtual {v3}, Lcn/com/zte/yp/YpContact;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 313
    aget-object v3, p1, v1

    invoke-virtual {v3, v2}, Lcn/com/zte/yp/YpContact;->setDatasource(Ljava/lang/String;)V

    .line 315
    :cond_2
    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcn/com/zte/yp/YpContact;->getNumber()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcn/com/zte/yp/YpContact;->getName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcn/com/zte/yp/YpContact;->getPhoto()[B

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcn/com/zte/yp/YpContact;->getDatasource()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcn/com/zte/yp/YpContact;->getLocation()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aget-object v5, p1, v1

    invoke-virtual {v5}, Lcn/com/zte/yp/YpContact;->getExtraData()[B

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 307
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 319
    :cond_4
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->getCount()I

    move-result v3

    if-nez v3, :cond_5

    .line 320
    const-string v3, "return null"

    invoke-static {v3}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    move-object v0, v2

    .line 321
    goto/16 :goto_0

    .line 323
    :cond_5
    const-string v2, "return cusor"

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private getSwitchValue()Landroid/database/Cursor;
    .locals 5

    .prologue
    .line 189
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v3, Lcn/com/zte/yp/provider/YpProvider;->switchColumns:[Ljava/lang/String;

    invoke-direct {v0, v3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 190
    .local v0, cursor:Landroid/database/MatrixCursor;
    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcn/com/zte/yp/module/ModuleFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;

    move-result-object v3

    invoke-virtual {v3}, Lcn/com/zte/yp/module/ModuleFactory;->getYpModuleInstance()Lcn/com/zte/yp/YpModule;

    move-result-object v1

    .line 191
    .local v1, ypModule:Lcn/com/zte/yp/YpModule;
    const-string v2, "close"

    .line 192
    .local v2, ypSwitch:Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 193
    invoke-virtual {v1}, Lcn/com/zte/yp/YpModule;->getSwitch()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    const-string v2, "open"

    .line 197
    :cond_0
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    invoke-virtual {v0, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 198
    return-object v0
.end method

.method private getSwitchValue(Landroid/content/ContentValues;)Ljava/lang/String;
    .locals 7
    .parameter "values"

    .prologue
    .line 168
    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v4

    .line 169
    .local v4, valueSet:Ljava/util/Set;,"Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v5

    const/4 v6, 0x1

    if-lt v5, v6, :cond_1

    .line 170
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 171
    .local v1, it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 172
    .local v2, key:Ljava/lang/String;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 173
    .local v3, value:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 174
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "switch"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 180
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #it:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #value:Ljava/lang/String;
    :goto_0
    return-object v3

    .line 179
    :cond_1
    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    .line 180
    const-string v3, ""

    goto :goto_0
.end method

.method public static queryNumberLocationEnabled(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    .line 329
    const/4 v8, 0x0

    .line 330
    .local v8, enabled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 331
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "LOCATION_DISPLAY_ENABLED"

    aput-object v3, v2, v1

    .line 332
    .local v2, ipNumberArray:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 334
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "content://zte.com.cn.providers.numberlocatorprovider/get_value"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 336
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 337
    const-string v1, "LOCATION_DISPLAY_ENABLED"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 338
    .local v9, value:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "name=LOCATION_DISPLAY_ENABLED,value="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 339
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 340
    const/4 v8, 0x1

    .line 347
    .end local v9           #value:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 351
    :cond_1
    :goto_0
    return v8

    .line 343
    :catch_0
    move-exception v7

    .line 344
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 347
    if-eqz v6, :cond_1

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 347
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 348
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private searchYpLocal(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 224
    const/4 v0, 0x0

    .line 225
    .local v0, onlyYp:Z
    if-nez p2, :cond_1

    .line 256
    :cond_0
    :goto_0
    return-object v3

    .line 229
    :cond_1
    if-nez p1, :cond_2

    .line 230
    const-string p1, "number"

    .line 231
    const/4 v0, 0x0

    .line 233
    :cond_2
    const-string v4, "numberYp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 234
    const/4 v0, 0x1

    .line 235
    const-string p1, "number"

    .line 237
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchYpLocal:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",context="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/module/ModuleFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/zte/yp/module/ModuleFactory;->getYpModuleInstance()Lcn/com/zte/yp/YpModule;

    move-result-object v1

    .line 240
    .local v1, yp:Lcn/com/zte/yp/YpModule;
    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Lcn/com/zte/yp/YpModule;->isEnabled()Z

    move-result v4

    if-nez v4, :cond_4

    .line 244
    const-string v4, "YpModule is not enabled. return null"

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_4
    const/4 v2, 0x0

    .line 248
    .local v2, ypcs:[Lcn/com/zte/yp/YpContact;
    const-string v3, "name"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 249
    aget-object v3, p2, v6

    invoke-virtual {v1, v3}, Lcn/com/zte/yp/YpModule;->queryYpContactByName(Ljava/lang/String;)[Lcn/com/zte/yp/YpContact;

    move-result-object v2

    .line 256
    :goto_1
    invoke-direct {p0, v2}, Lcn/com/zte/yp/provider/YpProvider;->convertYpc2Cursor([Lcn/com/zte/yp/YpContact;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    .line 250
    :cond_5
    const-string v3, "number"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 251
    invoke-virtual {v1, p2, v0}, Lcn/com/zte/yp/YpModule;->queryBusinessCardByNumberFromLocal([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;

    move-result-object v2

    goto :goto_1

    .line 254
    :cond_6
    invoke-virtual {v1, p2, v0}, Lcn/com/zte/yp/YpModule;->queryBusinessCardByNumberFromLocal([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;

    move-result-object v2

    goto :goto_1
.end method

.method private searchYpOnline(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    .locals 7
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    .line 267
    const/4 v0, 0x0

    .line 268
    .local v0, onlyYp:Z
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 293
    :cond_0
    :goto_0
    return-object v3

    .line 272
    :cond_1
    const-string v4, "numberYp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 273
    const/4 v0, 0x1

    .line 274
    const-string p1, "number"

    .line 276
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchYpOnline:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p2, v6

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcn/com/zte/yp/module/ModuleFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;

    move-result-object v4

    invoke-virtual {v4}, Lcn/com/zte/yp/module/ModuleFactory;->getYpModuleInstance()Lcn/com/zte/yp/YpModule;

    move-result-object v1

    .line 278
    .local v1, yp:Lcn/com/zte/yp/YpModule;
    if-eqz v1, :cond_0

    .line 281
    const/4 v2, 0x0

    .line 282
    .local v2, ypcs:[Lcn/com/zte/yp/YpContact;
    const-string v4, "name"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 284
    aget-object v3, p2, v6

    invoke-virtual {v1, v3}, Lcn/com/zte/yp/YpModule;->queryYpContactByName(Ljava/lang/String;)[Lcn/com/zte/yp/YpContact;

    move-result-object v2

    .line 293
    :goto_1
    invoke-direct {p0, v2}, Lcn/com/zte/yp/provider/YpProvider;->convertYpc2Cursor([Lcn/com/zte/yp/YpContact;)Landroid/database/Cursor;

    move-result-object v3

    goto :goto_0

    .line 285
    :cond_3
    const-string v4, "number"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 287
    invoke-virtual {v1, p2, v0}, Lcn/com/zte/yp/YpModule;->queryYpContactByNumber([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;

    move-result-object v2

    goto :goto_1
.end method

.method private setSwitchValue(Ljava/lang/String;)I
    .locals 2
    .parameter "ypSwitch"

    .prologue
    .line 207
    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/module/ModuleFactory;->getInstance(Landroid/content/Context;)Lcn/com/zte/yp/module/ModuleFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcn/com/zte/yp/module/ModuleFactory;->getYpModuleInstance()Lcn/com/zte/yp/YpModule;

    move-result-object v0

    .line 208
    .local v0, ypModule:Lcn/com/zte/yp/YpModule;
    invoke-virtual {v0, p1}, Lcn/com/zte/yp/YpModule;->setSwitch(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private updateSwitchValue(Landroid/content/ContentValues;)I
    .locals 3
    .parameter "values"

    .prologue
    .line 162
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSwitchValue.value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0, p1}, Lcn/com/zte/yp/provider/YpProvider;->getSwitchValue(Landroid/content/ContentValues;)Ljava/lang/String;

    move-result-object v0

    .line 164
    .local v0, ypSwitch:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcn/com/zte/yp/provider/YpProvider;->setSwitchValue(Ljava/lang/String;)I

    move-result v1

    return v1
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"

    .prologue
    const/4 v0, 0x0

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 118
    sget-object v1, Lcn/com/zte/yp/provider/YpProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 120
    :pswitch_0
    invoke-direct {p0}, Lcn/com/zte/yp/provider/YpProvider;->checkYpEnabled()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 122
    :pswitch_1
    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/provider/YpProvider;->queryNumberLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    invoke-direct {p0, p3, p4}, Lcn/com/zte/yp/provider/YpProvider;->searchYpLocal(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 127
    :pswitch_2
    invoke-virtual {p0}, Lcn/com/zte/yp/provider/YpProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/yp/provider/YpProvider;->queryNumberLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 130
    invoke-direct {p0, p3, p4}, Lcn/com/zte/yp/provider/YpProvider;->searchYpOnline(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 132
    :pswitch_3
    invoke-direct {p0}, Lcn/com/zte/yp/provider/YpProvider;->getSwitchValue()Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update.uri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 152
    sget-object v0, Lcn/com/zte/yp/provider/YpProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 158
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 154
    :pswitch_0
    invoke-direct {p0, p2}, Lcn/com/zte/yp/provider/YpProvider;->updateSwitchValue(Landroid/content/ContentValues;)I

    move-result v0

    goto :goto_0

    .line 152
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

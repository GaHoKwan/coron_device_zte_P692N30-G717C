.class public Lcom/android/phone/NumberLocationQuery;
.super Ljava/lang/Object;
.source "NumberLocationQuery.java"


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "zte.com.cn.providers.numberlocatorprovider"

.field private static final AUTHORITY_URI:Landroid/net/Uri; = null

.field private static final QUERY_CONFIG_URI:Landroid/net/Uri; = null

.field private static final QUERY_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "BusinessCard"

.field private static final UPDATE_CONFIG_URI:Landroid/net/Uri;

.field private static mContext:Landroid/content/Context;

.field private static mSettingsKeyArray:[Ljava/lang/String;

.field private static sInstance:Lcom/android/phone/NumberLocationQuery;


# instance fields
.field private mCachedLocation:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 23
    const-string v0, "content://zte.com.cn.providers.numberlocatorprovider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NumberLocationQuery;->AUTHORITY_URI:Landroid/net/Uri;

    .line 24
    sget-object v0, Lcom/android/phone/NumberLocationQuery;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "location"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NumberLocationQuery;->QUERY_URI:Landroid/net/Uri;

    .line 25
    sget-object v0, Lcom/android/phone/NumberLocationQuery;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "get_value"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NumberLocationQuery;->QUERY_CONFIG_URI:Landroid/net/Uri;

    .line 26
    sget-object v0, Lcom/android/phone/NumberLocationQuery;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "put_value"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NumberLocationQuery;->UPDATE_CONFIG_URI:Landroid/net/Uri;

    .line 27
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "SMART_IP_DIAL_ENABLED"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "IP_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "LOCAL_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PHONE_NUMBER"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "LOCATION_DISPLAY_ENABLED"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/NumberLocationQuery;->mSettingsKeyArray:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/phone/NumberLocationQuery;->mCachedLocation:Ljava/util/HashMap;

    .line 38
    return-void
.end method

.method private getCityName(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"

    .prologue
    .line 175
    sget-object v2, Lcom/android/phone/NumberLocationQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 176
    .local v0, content:Landroid/content/ContentResolver;
    const/4 v1, 0x0

    .line 177
    .local v1, numlocatorUri:Landroid/net/Uri;
    const/4 v8, 0x0

    .line 178
    .local v8, cursor:Landroid/database/Cursor;
    const-string v6, ""

    .line 180
    .local v6, cityname:Ljava/lang/String;
    :try_start_0
    sget-object v2, Lcom/android/phone/NumberLocationQuery;->QUERY_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 181
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 182
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 183
    const-string v2, "cityname"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 184
    .local v7, citynameColumn:I
    new-instance v2, Ljava/lang/String;

    invoke-interface {v8, v7}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 185
    const-string v2, "BusinessCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CityName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    .end local v7           #citynameColumn:I
    :cond_0
    if-eqz v8, :cond_1

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 195
    :cond_1
    :goto_0
    return-object v6

    .line 187
    :catch_0
    move-exception v9

    .line 188
    .local v9, e:Ljava/lang/Exception;
    :try_start_1
    const-string v2, "BusinessCard"

    const-string v3, "getCityName error"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v9}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    if-eqz v8, :cond_1

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 191
    .end local v9           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_2

    .line 192
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method public static instance()Lcom/android/phone/NumberLocationQuery;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/android/phone/NumberLocationQuery;->sInstance:Lcom/android/phone/NumberLocationQuery;

    if-nez v0, :cond_0

    .line 42
    new-instance v0, Lcom/android/phone/NumberLocationQuery;

    invoke-direct {v0}, Lcom/android/phone/NumberLocationQuery;-><init>()V

    sput-object v0, Lcom/android/phone/NumberLocationQuery;->sInstance:Lcom/android/phone/NumberLocationQuery;

    .line 43
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    sput-object v0, Lcom/android/phone/NumberLocationQuery;->mContext:Landroid/content/Context;

    .line 45
    :cond_0
    sget-object v0, Lcom/android/phone/NumberLocationQuery;->sInstance:Lcom/android/phone/NumberLocationQuery;

    return-object v0
.end method

.method private resolveContentProvider()Z
    .locals 6

    .prologue
    .line 83
    const/4 v0, 0x0

    .line 84
    .local v0, isExist:Z
    const-string v3, "zte.com.cn.providers.numberlocatorprovider"

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v1, v0

    .line 97
    .end local v0           #isExist:Z
    .local v1, isExist:I
    :goto_0
    return v1

    .line 88
    .end local v1           #isExist:I
    .restart local v0       #isExist:Z
    :cond_0
    sget-object v3, Lcom/android/phone/NumberLocationQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "zte.com.cn.providers.numberlocatorprovider"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v2

    .line 91
    .local v2, providerInfo:Landroid/content/pm/ProviderInfo;
    if-eqz v2, :cond_1

    .line 92
    const-string v3, "BusinessCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resolveContentProvider:name="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Landroid/content/pm/PackageItemInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    const/4 v0, 0x1

    :goto_1
    move v1, v0

    .line 97
    .restart local v1       #isExist:I
    goto :goto_0

    .line 95
    .end local v1           #isExist:I
    :cond_1
    const-string v3, "BusinessCard"

    const-string v4, "have no provider to process it"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method


# virtual methods
.method public isNumberLocationEnabled()Z
    .locals 10

    .prologue
    .line 105
    const-string v2, "content://zte.com.cn.providers.numberlocatorprovider/get_value"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 106
    .local v1, url:Landroid/net/Uri;
    const/4 v9, 0x0

    .line 107
    .local v9, enabled:Z
    const/4 v6, 0x0

    .line 109
    .local v6, cursor:Landroid/database/Cursor;
    sget-object v2, Lcom/android/phone/NumberLocationQuery;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v2, 0x1

    :try_start_0
    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "LOCATION_DISPLAY_ENABLED"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 113
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    const-string v8, ""

    .line 115
    .local v8, enableVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 116
    const-string v2, "BusinessCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enableVal= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 118
    const-string v2, "1"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_2

    .line 119
    const/4 v9, 0x1

    .line 128
    .end local v8           #enableVal:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v6, :cond_1

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 132
    :cond_1
    :goto_1
    return v9

    .line 121
    .restart local v8       #enableVal:Ljava/lang/String;
    :cond_2
    const/4 v9, 0x0

    goto :goto_0

    .line 125
    .end local v8           #enableVal:Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 126
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    if-eqz v6, :cond_1

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 128
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_3

    .line 129
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method public queryNumberLocation(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 57
    sput-object p1, Lcom/android/phone/NumberLocationQuery;->mContext:Landroid/content/Context;

    .line 59
    const-string v2, "BusinessCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNumberLocation number="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object v2, p0, Lcom/android/phone/NumberLocationQuery;->mCachedLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    iget-object v2, p0, Lcom/android/phone/NumberLocationQuery;->mCachedLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 63
    .local v1, location:Ljava/lang/String;
    const-string v2, "BusinessCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryNumberLocationAsync return immeidally="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    .end local v1           #location:Ljava/lang/String;
    :goto_0
    return-object v1

    .line 66
    :cond_0
    const-string v0, ""

    .line 67
    .local v0, cityName:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/phone/NumberLocationQuery;->resolveContentProvider()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 68
    invoke-virtual {p0}, Lcom/android/phone/NumberLocationQuery;->isNumberLocationEnabled()Z

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 69
    invoke-direct {p0, p2}, Lcom/android/phone/NumberLocationQuery;->getCityName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    iget-object v2, p0, Lcom/android/phone/NumberLocationQuery;->mCachedLocation:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 71
    iget-object v2, p0, Lcom/android/phone/NumberLocationQuery;->mCachedLocation:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    const-string v2, "BusinessCard"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isNumberLocationEnabled,cityName is"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move-object v1, v0

    .line 76
    goto :goto_0
.end method

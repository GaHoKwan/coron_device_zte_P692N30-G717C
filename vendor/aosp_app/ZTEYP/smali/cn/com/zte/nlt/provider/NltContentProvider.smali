.class public Lcn/com/zte/nlt/provider/NltContentProvider;
.super Landroid/content/ContentProvider;
.source "NltContentProvider.java"


# static fields
.field private static final AUTHORITIES:Ljava/lang/String; = "zte.com.cn.providers.numberlocatorprovider"

.field public static final ID_ALLROWS:I = 0x2

.field public static final ID_GET_VALUE:I = 0x4

.field public static final ID_PUT_VALUE:I = 0x5

.field public static final ID_SINGLE_ROW:I = 0x3

.field public static final ID_UPDATE_DB:I = 0x6

.field public static final uriMatcher:Landroid/content/UriMatcher;


# instance fields
.field private nrtModule:Lcn/com/zte/nlt/module/NltModule;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    .line 40
    sget-object v0, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v2, "location"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 41
    sget-object v0, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v2, "location/*"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 42
    sget-object v0, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v2, "get_value"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 43
    sget-object v0, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v2, "put_value"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 44
    sget-object v0, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    const-string v1, "zte.com.cn.providers.numberlocatorprovider"

    const-string v2, "update_db"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 45
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getValueFromConfig([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "projection"

    .prologue
    .line 128
    new-instance v0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;

    invoke-virtual {p0}, Lcn/com/zte/nlt/provider/NltContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;-><init>(Landroid/content/Context;)V

    .line 129
    .local v0, nrtConfig:Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;
    invoke-virtual {v0, p1}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->queryValue([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public static queryNumberLocationEnabled(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    .line 171
    const/4 v8, 0x0

    .line 172
    .local v8, enabled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 173
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "LOCATION_DISPLAY_ENABLED"

    aput-object v3, v2, v1

    .line 174
    .local v2, ipNumberArray:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 176
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

    .line 178
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    const-string v1, "LOCATION_DISPLAY_ENABLED"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 180
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

    .line 181
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

    .line 182
    const/4 v8, 0x1

    .line 189
    .end local v9           #value:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_1
    :goto_0
    return v8

    .line 185
    :catch_0
    move-exception v7

    .line 186
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    if-eqz v6, :cond_1

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 189
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 190
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method private searchNumberInfo(Landroid/net/Uri;)Landroid/database/Cursor;
    .locals 4
    .parameter "uri"

    .prologue
    const/4 v3, 0x1

    .line 139
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v1

    .line 140
    .local v1, segs:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 141
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 142
    .local v0, phoneNumber:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 143
    iget-object v2, p0, Lcn/com/zte/nlt/provider/NltContentProvider;->nrtModule:Lcn/com/zte/nlt/module/NltModule;

    invoke-virtual {v2, v0}, Lcn/com/zte/nlt/module/NltModule;->queryNumberInfo(Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 146
    .end local v0           #phoneNumber:Ljava/lang/String;
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 57
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .parameter "uri"

    .prologue
    .line 67
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 88
    invoke-virtual {p0}, Lcn/com/zte/nlt/provider/NltContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcn/com/zte/nlt/module/NltModuleFactory;->getNrtInstance(Landroid/content/Context;)Lcn/com/zte/nlt/module/NltModule;

    move-result-object v0

    iput-object v0, p0, Lcn/com/zte/nlt/provider/NltContentProvider;->nrtModule:Lcn/com/zte/nlt/module/NltModule;

    .line 89
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

    .line 105
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

    .line 106
    sget-object v1, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 118
    :cond_0
    :goto_0
    return-object v0

    .line 108
    :pswitch_0
    const-string v1, "internal_query"

    invoke-virtual {v1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcn/com/zte/nlt/provider/NltContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcn/com/zte/nlt/provider/NltContentProvider;->queryNumberLocationEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 111
    :cond_1
    invoke-direct {p0, p1}, Lcn/com/zte/nlt/provider/NltContentProvider;->searchNumberInfo(Landroid/net/Uri;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 114
    :pswitch_1
    invoke-direct {p0, p2}, Lcn/com/zte/nlt/provider/NltContentProvider;->getValueFromConfig([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    goto :goto_0

    .line 106
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .parameter "uri"
    .parameter "values"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 160
    sget-object v1, Lcn/com/zte/nlt/provider/NltContentProvider;->uriMatcher:Landroid/content/UriMatcher;

    invoke-virtual {v1, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 167
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 162
    :pswitch_0
    new-instance v0, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;

    invoke-virtual {p0}, Lcn/com/zte/nlt/provider/NltContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;-><init>(Landroid/content/Context;)V

    .line 163
    .local v0, nrtConfig:Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;
    invoke-virtual {v0, p2}, Lcn/com/zte/nlt/module/zte/config/IPDialerConfig;->updateValues(Landroid/content/ContentValues;)I

    move-result v1

    goto :goto_0

    .line 160
    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

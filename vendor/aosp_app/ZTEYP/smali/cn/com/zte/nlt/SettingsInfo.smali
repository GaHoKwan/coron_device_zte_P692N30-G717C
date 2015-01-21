.class public Lcn/com/zte/nlt/SettingsInfo;
.super Ljava/lang/Object;
.source "SettingsInfo.java"


# static fields
.field public static final KEY_AUTO:Ljava/lang/String; = "auto"

.field public static final KEY_ENABLED:Ljava/lang/String; = "enabled"

.field public static final KEY_UPDATE:Ljava/lang/String; = "update"

.field private static config:Lcn/com/zte/nlt/utils/ConfigManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 30
    new-instance v0, Lcn/com/zte/nlt/utils/ConfigManager;

    invoke-static {}, Lcn/com/zte/yp/YpApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcn/com/zte/nlt/utils/ConfigManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcn/com/zte/nlt/SettingsInfo;->config:Lcn/com/zte/nlt/utils/ConfigManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCycle()I
    .locals 3

    .prologue
    .line 37
    sget-object v0, Lcn/com/zte/nlt/SettingsInfo;->config:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v1, "auto"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Lcn/com/zte/nlt/utils/ConfigManager;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public static isAutoUpdateOpen()Z
    .locals 3

    .prologue
    .line 33
    sget-object v0, Lcn/com/zte/nlt/SettingsInfo;->config:Lcn/com/zte/nlt/utils/ConfigManager;

    const-string v1, "auto"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcn/com/zte/nlt/utils/ConfigManager;->get(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static queryNumberLocationEnabled(Landroid/content/Context;)Z
    .locals 10
    .parameter "context"

    .prologue
    .line 41
    const/4 v8, 0x0

    .line 42
    .local v8, enabled:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 43
    .local v0, resolver:Landroid/content/ContentResolver;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v3, "LOCATION_DISPLAY_ENABLED"

    aput-object v3, v2, v1

    .line 44
    .local v2, ipNumberArray:[Ljava/lang/String;
    const/4 v6, 0x0

    .line 46
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

    .line 48
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 49
    const-string v1, "LOCATION_DISPLAY_ENABLED"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 50
    .local v9, strEnabled:Ljava/lang/String;
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

    .line 51
    const-string v1, "1"

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-eqz v1, :cond_0

    .line 52
    const/4 v8, 0x1

    .line 59
    .end local v9           #strEnabled:Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 63
    :cond_1
    :goto_0
    return v8

    .line 55
    :catch_0
    move-exception v7

    .line 56
    .local v7, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 59
    if-eqz v6, :cond_1

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 59
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 60
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public static setNumberLocationEnabled(Landroid/content/Context;Z)V
    .locals 5
    .parameter "context"
    .parameter "enabled"

    .prologue
    const/4 v4, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 68
    .local v0, resolver:Landroid/content/ContentResolver;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 69
    .local v2, values:Landroid/content/ContentValues;
    const-string v1, "0"

    .line 70
    .local v1, valEnabled:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 71
    const-string v1, "1"

    .line 73
    :cond_0
    const-string v3, "LOCATION_DISPLAY_ENABLED"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string v3, "content://zte.com.cn.providers.numberlocatorprovider/put_value"

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v0, v3, v2, v4, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 75
    return-void
.end method

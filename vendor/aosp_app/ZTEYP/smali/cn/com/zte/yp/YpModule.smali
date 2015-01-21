.class public abstract Lcn/com/zte/yp/YpModule;
.super Ljava/lang/Object;
.source "YpModule.java"


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected context:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private processPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "number"

    .prologue
    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 163
    .end local p1
    :goto_0
    return-object p1

    .line 153
    .restart local p1
    :cond_0
    move-object v0, p1

    .line 155
    .local v0, newNumber:Ljava/lang/String;
    invoke-static {v0}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->replaceInvalidNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    invoke-static {v0}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->replaceIpPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 159
    invoke-static {v0}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->replaceUSAPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-static {v0}, Lcn/com/zte/nlt/utils/PhoneNumberUtils;->replaceChinaNationalPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object p1, v0

    .line 163
    goto :goto_0
.end method


# virtual methods
.method public getSwitch()Z
    .locals 4

    .prologue
    .line 199
    new-instance v0, Lcn/com/zte/yp/config/YpConfig;

    iget-object v2, p0, Lcn/com/zte/yp/YpModule;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcn/com/zte/yp/config/YpConfig;-><init>(Landroid/content/Context;)V

    .line 200
    .local v0, ypConfig:Lcn/com/zte/yp/config/YpConfig;
    invoke-virtual {v0}, Lcn/com/zte/yp/config/YpConfig;->getYpSwitch()Z

    move-result v1

    .line 201
    .local v1, ypSwitch:Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ypSwitch="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 202
    return v1
.end method

.method protected abstract getYpContactByNumber([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
.end method

.method protected abstract getYpContactByNumberFromLocal([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
.end method

.method public abstract init()V
.end method

.method public abstract isEnabled()Z
.end method

.method public abstract launchOfflineDataDownloadUI()V
.end method

.method public abstract launchSearchUI()V
.end method

.method public abstract launchSettingsUI()V
.end method

.method public abstract launchWarningDialog()V
.end method

.method public abstract launchWebView(Landroid/app/Activity;Ljava/lang/String;I)V
.end method

.method protected processPrefix([Ljava/lang/String;)V
    .locals 2
    .parameter "numbers"

    .prologue
    .line 135
    if-nez p1, :cond_1

    .line 141
    :cond_0
    return-void

    .line 138
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 139
    aget-object v1, p1, v0

    invoke-direct {p0, v1}, Lcn/com/zte/yp/YpModule;->processPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v0

    .line 138
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public queryBusinessCardByNumberFromLocal([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
    .locals 1
    .parameter "numbers"
    .parameter "onlyYp"

    .prologue
    .line 117
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/YpModule;->processPrefix([Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0, p1, p2}, Lcn/com/zte/yp/YpModule;->getYpContactByNumberFromLocal([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;

    move-result-object v0

    return-object v0
.end method

.method protected queryLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "number"

    .prologue
    const/4 v9, 0x0

    .line 173
    const/4 v6, 0x0

    .line 174
    .local v6, cursor:Landroid/database/Cursor;
    const/4 v8, 0x0

    .line 176
    .local v8, location:Ljava/lang/String;
    :try_start_0
    const-string v2, "content://zte.com.cn.providers.numberlocatorprovider/location/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 178
    .local v1, locatorurl:Landroid/net/Uri;
    iget-object v2, p0, Lcn/com/zte/yp/YpModule;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 179
    .local v0, contentResolver:Landroid/content/ContentResolver;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 180
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-nez v2, :cond_2

    .line 190
    :cond_0
    if-eqz v6, :cond_1

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v2, v9

    .line 195
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #locatorurl:Landroid/net/Uri;
    :goto_0
    return-object v2

    .line 183
    .restart local v0       #contentResolver:Landroid/content/ContentResolver;
    .restart local v1       #locatorurl:Landroid/net/Uri;
    :cond_2
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    new-instance v2, Ljava/lang/String;

    const-string v3, "cityname"

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v3

    const-string v4, "UTF-8"

    invoke-direct {v2, v3, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    .line 190
    :cond_3
    if-eqz v6, :cond_4

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 194
    .end local v0           #contentResolver:Landroid/content/ContentResolver;
    .end local v1           #locatorurl:Landroid/net/Uri;
    :cond_4
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Loc="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    move-object v2, v8

    .line 195
    goto :goto_0

    .line 186
    :catch_0
    move-exception v7

    .line 187
    .local v7, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->e(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    if-eqz v6, :cond_4

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 190
    .end local v7           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_5

    .line 191
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_5
    throw v2
.end method

.method public abstract queryYpContactByName(Ljava/lang/String;)[Lcn/com/zte/yp/YpContact;
.end method

.method public queryYpContactByNumber([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;
    .locals 1
    .parameter "numbers"
    .parameter "onlyYp"

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lcn/com/zte/yp/YpModule;->processPrefix([Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0, p1, p2}, Lcn/com/zte/yp/YpModule;->getYpContactByNumber([Ljava/lang/String;Z)[Lcn/com/zte/yp/YpContact;

    move-result-object v0

    return-object v0
.end method

.method public abstract setActivity(Landroid/app/Activity;)V
.end method

.method public setSwitch(Ljava/lang/String;)I
    .locals 4
    .parameter "ypSwitch"

    .prologue
    const/4 v2, 0x0

    .line 206
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    :cond_0
    :goto_0
    return v2

    .line 209
    :cond_1
    const/4 v0, 0x0

    .line 210
    .local v0, value:Z
    const-string v3, "close"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 211
    const/4 v0, 0x0

    .line 217
    :goto_1
    new-instance v1, Lcn/com/zte/yp/config/YpConfig;

    iget-object v2, p0, Lcn/com/zte/yp/YpModule;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcn/com/zte/yp/config/YpConfig;-><init>(Landroid/content/Context;)V

    .line 218
    .local v1, ypConfig:Lcn/com/zte/yp/config/YpConfig;
    invoke-virtual {v1, v0}, Lcn/com/zte/yp/config/YpConfig;->setYpSwitch(Z)V

    .line 219
    const/4 v2, 0x1

    goto :goto_0

    .line 212
    .end local v1           #ypConfig:Lcn/com/zte/yp/config/YpConfig;
    :cond_2
    const-string v3, "open"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 213
    const/4 v0, 0x1

    goto :goto_1
.end method

.class public Lcn/com/zte/nlt/CallInfoQuery;
.super Ljava/lang/Object;
.source "CallInfoQuery.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doSearch(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "context"
    .parameter "phoneNumber"

    .prologue
    .line 24
    invoke-static {p0, p1}, Lcn/com/zte/nlt/CallInfoQuery;->queryNumberInfo(Landroid/content/Context;Ljava/lang/String;)Lcn/com/zte/nlt/module/NumberLocationInfo;

    move-result-object v1

    .line 25
    .local v1, nrInfo:Lcn/com/zte/nlt/module/NumberLocationInfo;
    if-nez v1, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 33
    :cond_0
    :goto_0
    return-object v0

    .line 28
    :cond_1
    invoke-virtual {v1}, Lcn/com/zte/nlt/module/NumberLocationInfo;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v1}, Lcn/com/zte/nlt/module/NumberLocationInfo;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, info:Ljava/lang/String;
    invoke-virtual {v1}, Lcn/com/zte/nlt/module/NumberLocationInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 31
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcn/com/zte/nlt/module/NumberLocationInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static queryNumberInfo(Landroid/content/Context;Ljava/lang/String;)Lcn/com/zte/nlt/module/NumberLocationInfo;
    .locals 9
    .parameter "context"
    .parameter "number"

    .prologue
    const/4 v2, 0x0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 40
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "content://zte.com.cn.providers.numberlocatorprovider/location/"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 43
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    move-object v1, v2

    .line 53
    :goto_0
    return-object v1

    .line 46
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "columnsCount="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v8}, Landroid/database/Cursor;->getColumnCount()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/com/zte/yp/utils/Logging;->i(Ljava/lang/String;)V

    .line 48
    const-string v2, "cardtype"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 49
    .local v7, cardType:Ljava/lang/String;
    const-string v2, "cityname"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 50
    .local v3, city:Ljava/lang/String;
    const-string v2, "areacode"

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 51
    .local v6, areaCode:Ljava/lang/String;
    new-instance v1, Lcn/com/zte/nlt/module/NumberLocationInfo;

    const-string v4, ""

    const-string v5, ""

    move-object v2, p1

    invoke-direct/range {v1 .. v7}, Lcn/com/zte/nlt/module/NumberLocationInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    .local v1, nrInfo:Lcn/com/zte/nlt/module/NumberLocationInfo;
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

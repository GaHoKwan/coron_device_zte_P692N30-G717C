.class public Lcom/mediatek/calendar/SNSCalendarDataHelper;
.super Ljava/lang/Object;
.source "SNSCalendarDataHelper.java"


# static fields
.field private static final ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final EVENT_PROJECTION:[Ljava/lang/String; = null

.field private static final METANAME_ACCOUNT:Ljava/lang/String; = "account"

.field private static final METANAME_ALBUM:Ljava/lang/String; = "album"

.field private static final METANAME_CONTACT:Ljava/lang/String; = "contact"

.field private static final METANAME_POST:Ljava/lang/String; = "post"

.field private static final PROJECTION_ACCOUNT_TYPE_INDEX:I = 0x1

.field private static final PROJECTION__ID_INDEX:I = 0x0

.field private static final SNSPLUGIN_ACTION:Ljava/lang/String; = "com.mediatek.snsone.interfaces"

.field private static final TAG:Ljava/lang/String; = "SNSCalendarDataHelper"

.field private static final USER_ID:Ljava/lang/String; = "user_id"

.field private static sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 70
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "account_type"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/calendar/SNSCalendarDataHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkIfExistedAccountsSupported(Landroid/content/Context;)Z
    .locals 13
    .parameter "context"

    .prologue
    const/4 v12, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 154
    const-string v9, "com.mediatek.snsone.interfaces"

    new-array v10, v7, [Landroid/content/pm/Signature;

    invoke-static {p0, v9, v10}, Lcom/mediatek/pluginmanager/PluginManager;->create(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Lcom/mediatek/pluginmanager/PluginManager;

    move-result-object v4

    .line 155
    .local v4, pm:Lcom/mediatek/pluginmanager/PluginManager;
    invoke-virtual {v4}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v9

    if-nez v9, :cond_0

    .line 156
    const-string v8, "SNSCalendarDataHelper"

    const-string v9, "checkIfAccountSupported(), no plugin available."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    :goto_0
    return v7

    .line 161
    :cond_0
    const-string v9, "SNSCalendarDataHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "checkIfAccountSupported(), available plugin count: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/mediatek/pluginmanager/PluginManager;->getPluginCount()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v0, 0x0

    .line 168
    .local v0, ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    :try_start_0
    const-string v9, "com.mediatek.snsone.interfaces"

    const-string v10, "account"

    const/4 v11, 0x0

    new-array v11, v11, [Landroid/content/pm/Signature;

    invoke-static {p0, v9, v10, v11}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    check-cast v0, Lcom/mediatek/snsone/interfaces/IAccountInfo;
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    .restart local v0       #ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    sget-object v9, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    if-eqz v9, :cond_1

    sget-object v9, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    array-length v9, v9

    if-nez v9, :cond_2

    .line 181
    :cond_1
    sput-object v12, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    goto :goto_0

    .line 170
    .end local v0           #ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    :catch_0
    move-exception v1

    .line 171
    .local v1, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 173
    const-string v8, "SNSCalendarDataHelper"

    const-string v9, "checkIfAccountSupported(), Can NOT get the AccountInfoHolder."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 186
    .end local v1           #e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    .restart local v0       #ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    :cond_2
    const/4 v6, 0x0

    .line 188
    .local v6, supportedCount:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    sget-object v9, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    array-length v9, v9

    if-ge v2, v9, :cond_4

    .line 189
    sget-object v9, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v9, v9, v2

    iget-object v9, v9, Lcom/mediatek/calendar/SNSAccount;->accountType:Ljava/lang/String;

    invoke-interface {v0, v9}, Lcom/mediatek/snsone/interfaces/IAccountInfo;->isAccountSupported(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 190
    sget-object v9, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v9, v9, v2

    iput-boolean v8, v9, Lcom/mediatek/calendar/SNSAccount;->isSupported:Z

    .line 191
    add-int/lit8 v6, v6, 0x1

    .line 188
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 195
    :cond_4
    if-nez v6, :cond_5

    .line 196
    const-string v8, "SNSCalendarDataHelper"

    const-string v9, "checkIfAccountSupported(), no accounts supported."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    sput-object v12, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    goto :goto_0

    .line 205
    :cond_5
    const/4 v3, 0x0

    .line 206
    .local v3, index:I
    new-array v5, v6, [Lcom/mediatek/calendar/SNSAccount;

    .line 207
    .local v5, supported:[Lcom/mediatek/calendar/SNSAccount;
    const/4 v2, 0x0

    :goto_2
    sget-object v7, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    array-length v7, v7

    if-ge v2, v7, :cond_7

    .line 208
    sget-object v7, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v7, v7, v2

    iget-boolean v7, v7, Lcom/mediatek/calendar/SNSAccount;->isSupported:Z

    if-eqz v7, :cond_6

    .line 209
    sget-object v7, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v7, v7, v2

    aput-object v7, v5, v3

    .line 210
    add-int/lit8 v3, v3, 0x1

    .line 207
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 214
    :cond_7
    sput-object v5, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    move v7, v8

    .line 216
    goto/16 :goto_0
.end method

.method public static getAccountIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "accountType"

    .prologue
    const/4 v2, 0x0

    .line 370
    const/4 v1, 0x0

    .line 372
    .local v1, icon:Landroid/graphics/drawable/Drawable;
    if-nez p1, :cond_0

    .line 373
    const-string v3, "SNSCalendarDataHelper"

    const-string v4, "getAccountIcon(), invalid account type: null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :goto_0
    return-object v2

    .line 378
    :cond_0
    invoke-static {p0}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getAccountInfoHolder(Landroid/content/Context;)Lcom/mediatek/snsone/interfaces/IAccountInfo;

    move-result-object v0

    .line 379
    .local v0, ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    if-nez v0, :cond_1

    .line 380
    const-string v3, "SNSCalendarDataHelper"

    const-string v4, "getAccountIcon(), Can NOT get the AccountInfoHolder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_1
    invoke-interface {v0, p1}, Lcom/mediatek/snsone/interfaces/IAccountInfo;->getAccountIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .line 387
    goto :goto_0
.end method

.method public static getAccountIconBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "context"
    .parameter "calendarId"

    .prologue
    const/4 v3, 0x0

    .line 400
    const/4 v2, 0x0

    .line 403
    .local v2, icon:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getAccountType(I)Ljava/lang/String;

    move-result-object v0

    .line 404
    .local v0, accountType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 405
    const-string v4, "SNSCalendarDataHelper"

    const-string v5, "getAccountIconBitmap(), current account is NOT supported."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    :goto_0
    return-object v3

    .line 411
    :cond_0
    invoke-static {p0}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getAccountInfoHolder(Landroid/content/Context;)Lcom/mediatek/snsone/interfaces/IAccountInfo;

    move-result-object v1

    .line 412
    .local v1, ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    if-nez v1, :cond_1

    .line 413
    const-string v4, "SNSCalendarDataHelper"

    const-string v5, "getAccountIconBitmap(), Can NOT get the AccountInfoHolder."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 419
    :cond_1
    invoke-interface {v1, v0}, Lcom/mediatek/snsone/interfaces/IAccountInfo;->getAccountIconBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v3, v2

    .line 421
    goto :goto_0
.end method

.method private static getAccountInfoHolder(Landroid/content/Context;)Lcom/mediatek/snsone/interfaces/IAccountInfo;
    .locals 6
    .parameter "context"

    .prologue
    .line 320
    const/4 v2, 0x0

    .line 324
    .local v2, holder:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    :try_start_0
    const-string v3, "com.mediatek.snsone.interfaces"

    const-string v4, "account"

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/Signature;

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/snsone/interfaces/IAccountInfo;

    move-object v2, v0
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 335
    :goto_0
    return-object v3

    .line 326
    :catch_0
    move-exception v1

    .line 327
    .local v1, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 329
    const-string v3, "SNSCalendarDataHelper"

    const-string v4, "getAccountInfoHolder(), Can NOT get the AccountInfoHolder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getAccountType(I)Ljava/lang/String;
    .locals 4
    .parameter "calendarId"

    .prologue
    .line 299
    const/4 v1, 0x0

    .line 301
    .local v1, type:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    if-nez v2, :cond_0

    .line 302
    const-string v2, "SNSCalendarDataHelper"

    const-string v3, "getAccountType(), no accounts supported by SNS plugin."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v2, 0x0

    .line 313
    :goto_0
    return-object v2

    .line 307
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 308
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/mediatek/calendar/SNSAccount;->calendarId:I

    if-ne v2, p0, :cond_1

    .line 309
    new-instance v1, Ljava/lang/String;

    .end local v1           #type:Ljava/lang/String;
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/mediatek/calendar/SNSAccount;->accountType:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 307
    .restart local v1       #type:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v2, v1

    .line 313
    goto :goto_0
.end method

.method public static getBirthdayString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "calendarId"

    .prologue
    const/4 v3, 0x0

    .line 434
    const/4 v2, 0x0

    .line 437
    .local v2, str:Ljava/lang/String;
    invoke-static {p1}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getAccountType(I)Ljava/lang/String;

    move-result-object v0

    .line 438
    .local v0, accountType:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 439
    const-string v4, "SNSCalendarDataHelper"

    const-string v5, "getBirthdayString(), current account is NOT supported."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    :goto_0
    return-object v3

    .line 444
    :cond_0
    invoke-static {p0}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getAccountInfoHolder(Landroid/content/Context;)Lcom/mediatek/snsone/interfaces/IAccountInfo;

    move-result-object v1

    .line 445
    .local v1, ai:Lcom/mediatek/snsone/interfaces/IAccountInfo;
    if-nez v1, :cond_1

    .line 446
    const-string v4, "SNSCalendarDataHelper"

    const-string v5, "getBirthdayString(), Can NOT get the AccountInfoHolder."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 452
    :cond_1
    invoke-interface {v1, v0}, Lcom/mediatek/snsone/interfaces/IAccountInfo;->getAccountBirthdayString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 454
    goto :goto_0
.end method

.method private static getExistedAccounts(Landroid/content/ContentResolver;)Z
    .locals 12
    .parameter "cr"

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x0

    const/4 v10, 0x0

    .line 106
    sget-object v1, Landroid/provider/CalendarContract$Calendars;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->EVENT_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 109
    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_0

    .line 110
    const-string v0, "SNSCalendarDataHelper"

    const-string v1, "getSNSAccounts(), failed to query SNS account."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    .line 146
    :goto_0
    return v0

    .line 115
    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 116
    .local v7, count:I
    const-string v0, "SNSCalendarDataHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSNSAccounts(), account count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-nez v7, :cond_1

    .line 121
    sput-object v3, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    .line 123
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v10

    .line 125
    goto :goto_0

    .line 129
    :cond_1
    new-array v0, v7, [Lcom/mediatek/calendar/SNSAccount;

    sput-object v0, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    .line 130
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_2

    .line 131
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    .line 133
    new-instance v6, Lcom/mediatek/calendar/SNSAccount;

    invoke-direct {v6}, Lcom/mediatek/calendar/SNSAccount;-><init>()V

    .line 135
    .local v6, account:Lcom/mediatek/calendar/SNSAccount;
    invoke-interface {v8, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v6, Lcom/mediatek/calendar/SNSAccount;->calendarId:I

    .line 136
    invoke-interface {v8, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v6, Lcom/mediatek/calendar/SNSAccount;->accountType:Ljava/lang/String;

    .line 138
    iput-boolean v10, v6, Lcom/mediatek/calendar/SNSAccount;->isSupported:Z

    .line 140
    sget-object v0, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aput-object v6, v0, v9

    .line 130
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 144
    .end local v6           #account:Lcom/mediatek/calendar/SNSAccount;
    :cond_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move v0, v11

    .line 146
    goto :goto_0
.end method

.method private static getPostAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/snsone/interfaces/IPostOperations$Action;
    .locals 6
    .parameter "context"
    .parameter "accountType"
    .parameter "userId"

    .prologue
    const/4 v3, 0x0

    .line 459
    const/4 v0, 0x0

    .line 461
    .local v0, actionGot:Lcom/mediatek/snsone/interfaces/IPostOperations$Action;
    if-nez p1, :cond_0

    .line 462
    const-string v4, "SNSCalendarDataHelper"

    const-string v5, "getPostAction(), invalidate account type: null."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    :goto_0
    return-object v3

    .line 467
    :cond_0
    invoke-static {p0}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getPostOperationsHolder(Landroid/content/Context;)Lcom/mediatek/snsone/interfaces/IPostOperations;

    move-result-object v2

    .line 468
    .local v2, poh:Lcom/mediatek/snsone/interfaces/IPostOperations;
    if-nez v2, :cond_1

    .line 469
    const-string v4, "SNSCalendarDataHelper"

    const-string v5, "getPostAction(), Can NOT get the PostOperationsHolder."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 475
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 476
    .local v1, bundle:Landroid/os/Bundle;
    const-string v4, "account_type"

    invoke-virtual {v1, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 477
    const-string v4, "user_id"

    invoke-virtual {v1, v4, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 479
    invoke-interface {v2, v1}, Lcom/mediatek/snsone/interfaces/IPostOperations;->getPostAction(Landroid/os/Bundle;)Lcom/mediatek/snsone/interfaces/IPostOperations$Action;

    move-result-object v0

    .line 481
    if-nez v0, :cond_2

    .line 482
    const-string v4, "SNSCalendarDataHelper"

    const-string v5, "getPostAction(), Can NOT get the action because a invalid account type."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v3, v0

    .line 488
    goto :goto_0
.end method

.method public static getPostActionIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountType"
    .parameter "userId"

    .prologue
    .line 505
    const/4 v1, 0x0

    .line 507
    .local v1, i:Landroid/content/Intent;
    invoke-static {p0, p1, p2}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getPostAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/mediatek/snsone/interfaces/IPostOperations$Action;

    move-result-object v0

    .line 509
    .local v0, actionGot:Lcom/mediatek/snsone/interfaces/IPostOperations$Action;
    if-eqz v0, :cond_0

    .line 510
    iget-object v1, v0, Lcom/mediatek/snsone/interfaces/IPostOperations$Action;->intent:Landroid/content/Intent;

    .line 513
    :cond_0
    return-object v1
.end method

.method private static getPostOperationsHolder(Landroid/content/Context;)Lcom/mediatek/snsone/interfaces/IPostOperations;
    .locals 6
    .parameter "context"

    .prologue
    .line 342
    const/4 v2, 0x0

    .line 346
    .local v2, holder:Lcom/mediatek/snsone/interfaces/IPostOperations;
    :try_start_0
    const-string v3, "com.mediatek.snsone.interfaces"

    const-string v4, "post"

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/Signature;

    invoke-static {p0, v3, v4, v5}, Lcom/mediatek/pluginmanager/PluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lcom/mediatek/snsone/interfaces/IPostOperations;

    move-object v2, v0
    :try_end_0
    .catch Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 357
    :goto_0
    return-object v3

    .line 348
    :catch_0
    move-exception v1

    .line 349
    .local v1, e:Lcom/mediatek/pluginmanager/Plugin$ObjectCreationException;
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 351
    const-string v3, "SNSCalendarDataHelper"

    const-string v4, "getPostOperationsHolder(), Can NOT get the PostOperationsHolder."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static initialize(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->getExistedAccounts(Landroid/content/ContentResolver;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 98
    :cond_0
    :goto_0
    return v0

    .line 90
    :cond_1
    invoke-static {}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->logCursorResult()V

    .line 92
    invoke-static {p0}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->checkIfExistedAccountsSupported(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->logCursorResult()V

    .line 98
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isAccountTypeSupported(Ljava/lang/String;)Z
    .locals 5
    .parameter "accountType"

    .prologue
    const/4 v2, 0x0

    .line 263
    const/4 v1, 0x0

    .line 265
    .local v1, ok:Z
    sget-object v3, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    if-nez v3, :cond_0

    .line 266
    const-string v3, "SNSCalendarDataHelper"

    const-string v4, "isAccountTypeSupported(), no accounts supported by SNS plugin."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    :goto_0
    return v2

    .line 272
    :cond_0
    if-nez p0, :cond_1

    .line 273
    const-string v3, "SNSCalendarDataHelper"

    const-string v4, "isAccountTypeSupported(), invalid account type: null."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 278
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 279
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/mediatek/calendar/SNSAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 280
    const/4 v1, 0x1

    :cond_2
    move v2, v1

    .line 286
    goto :goto_0

    .line 278
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private static logCursorResult()V
    .locals 4

    .prologue
    .line 223
    sget-object v1, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    array-length v1, v1

    if-nez v1, :cond_2

    .line 224
    :cond_0
    const-string v1, "SNSCalendarDataHelper"

    const-string v2, "No accounts."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    .local v0, i:I
    :cond_1
    return-void

    .line 229
    .end local v0           #i:I
    :cond_2
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_0
    sget-object v1, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 230
    const-string v1, "SNSCalendarDataHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/mediatek/calendar/SNSAccount;->calendarId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " account: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/mediatek/calendar/SNSAccount;->accountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", is supported: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v3, v3, v0

    iget-boolean v3, v3, Lcom/mediatek/calendar/SNSAccount;->isSupported:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static prepareTestData([I[Ljava/lang/String;)V
    .locals 4
    .parameter "ids"
    .parameter "accounts"

    .prologue
    .line 242
    array-length v0, p0

    .line 243
    .local v0, count:I
    new-array v2, v0, [Lcom/mediatek/calendar/SNSAccount;

    sput-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    .line 245
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 246
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    new-instance v3, Lcom/mediatek/calendar/SNSAccount;

    invoke-direct {v3}, Lcom/mediatek/calendar/SNSAccount;-><init>()V

    aput-object v3, v2, v1

    .line 247
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v2, v2, v1

    aget v3, p0, v1

    iput v3, v2, Lcom/mediatek/calendar/SNSAccount;->calendarId:I

    .line 248
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v2, v2, v1

    aget-object v3, p1, v1

    iput-object v3, v2, Lcom/mediatek/calendar/SNSAccount;->accountType:Ljava/lang/String;

    .line 249
    sget-object v2, Lcom/mediatek/calendar/SNSCalendarDataHelper;->sAccountTypes:[Lcom/mediatek/calendar/SNSAccount;

    aget-object v2, v2, v1

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/calendar/SNSAccount;->isSupported:Z

    .line 245
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 252
    :cond_0
    invoke-static {}, Lcom/mediatek/calendar/SNSCalendarDataHelper;->logCursorResult()V

    .line 253
    return-void
.end method

.class public Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;
.super Ljava/lang/Object;
.source "AppLockStrategyUtils.java"


# static fields
.field public static final EVENT_TYPE_LOCK:I = 0x0

.field public static final EVENT_TYPE_UNLOCK:I = 0x1

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "zte.intent.extra.package"

.field public static final EXTRA_TYPE:Ljava/lang/String; = "zte.intent.extra.type"

.field private static final TAG:Ljava/lang/String; = "ZTEAppLockStrategyUtils"

.field public static final ZTE_ACTION_APP_LOCK_EVENT:Ljava/lang/String; = "zte.intent.action.APP_LOCK_EVENT"

.field private static data:J

.field private static mLastResumedPkg:Ljava/lang/String;

.field private static switchTools:Lcom/zte/heartyservice/power/SwitchTools;

.field private static tick:J

.field private static wifi:J


# instance fields
.field private mWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

.field private shoppingSecurityInfo:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 26
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    .line 27
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->switchTools:Lcom/zte/heartyservice/power/SwitchTools;

    .line 28
    sput-wide v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->tick:J

    .line 29
    sput-wide v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->data:J

    .line 30
    sput-wide v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->wifi:J

    return-void
.end method

.method public constructor <init>(Lcom/zte/heartyservice/privacy/AppLockWatchDog;)V
    .locals 10
    .parameter "mWatchDog"

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    .line 163
    iput-object p1, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    .line 164
    const/4 v0, 0x0

    .line 166
    .local v0, db:Landroid/database/sqlite/SQLiteDatabase;
    :try_start_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v1

    if-nez v1, :cond_0

    .line 167
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const-string v2, "shopping_security.db"

    const v3, 0x7f090013

    const v4, 0x7f06000f

    invoke-static {v1, v2, v3, v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getDB(Landroid/content/Context;Ljava/lang/String;II)Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 169
    :cond_0
    if-eqz v0, :cond_3

    .line 170
    const-string v1, "info"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 171
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 172
    :goto_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 173
    new-instance v9, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    invoke-direct {v9}, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;-><init>()V

    .line 174
    .local v9, localShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;
    const-string v1, "packageName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->packageName:Ljava/lang/String;

    .line 175
    const-string v1, "appName"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    .line 176
    const-string v1, "md5"

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v9, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->md5:Ljava/lang/String;

    .line 177
    iget-object v1, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    iget-object v2, v9, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 182
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #localShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;
    :catch_0
    move-exception v1

    .line 185
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 189
    :cond_1
    :goto_1
    return-void

    .line 179
    .restart local v8       #cursor:Landroid/database/Cursor;
    :cond_2
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_3
    if-eqz v0, :cond_1

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    goto :goto_1

    .line 185
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 186
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    :cond_4
    throw v1
.end method

.method private checkAppisSafe(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "lastResumedPkg"
    .parameter "packageName"

    .prologue
    .line 115
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->doWhenEnterShoppingApp(Ljava/lang/String;)V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->doWhenExitShoppingApp(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private doWhenEnterShoppingApp(Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"

    .prologue
    .line 123
    sget-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipEnter:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 124
    const/4 v2, 0x0

    sput-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipEnter:Z

    .line 142
    :goto_0
    return-void

    .line 127
    :cond_0
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getAppMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, md5:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 129
    .local v0, info:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;
    iget-object v2, v0, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 133
    const-string v3, "shopping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter safe:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showEnterShoppingSafe(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V

    goto :goto_0

    .line 139
    :cond_1
    const-string v3, "shopping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Enter rask"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showEnterShoppingRisk(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V

    goto :goto_0
.end method

.method private doWhenExitShoppingApp(Ljava/lang/String;)V
    .locals 5
    .parameter "lastResumedPkg"

    .prologue
    .line 145
    sget-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipExit:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 146
    const/4 v2, 0x0

    sput-boolean v2, Lcom/zte/heartyservice/main/HeartyServiceApp;->skipExit:Z

    .line 160
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getAppMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 150
    .local v1, md5:Ljava/lang/String;
    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    .line 151
    .local v0, info:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;
    iget-object v2, v0, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->md5:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 153
    const-string v3, "shopping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit safe"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showExitShoppingSafe(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V

    goto :goto_0

    .line 157
    :cond_1
    const-string v3, "shopping"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exit rask"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->shoppingSecurityInfo:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    iget-object v2, v2, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showExitShoppingRisk(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V

    goto :goto_0
.end method

.method private sendAppLockEvent(ILjava/lang/String;)V
    .locals 4
    .parameter "type"
    .parameter "pkg"

    .prologue
    .line 52
    const-string v1, "ZTEAppLockStrategyUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendAppLockEvent, type is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pkg is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    new-instance v0, Landroid/content/Intent;

    const-string v1, "zte.intent.action.APP_LOCK_EVENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 55
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "zte.intent.extra.type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 57
    if-nez p1, :cond_0

    .line 58
    const-string v1, "zte.intent.extra.package"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    :cond_0
    invoke-static {v0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doReceiveAppLockEvent(Landroid/content/Intent;)V

    .line 62
    return-void
.end method


# virtual methods
.method public checkAppLockStatus(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "packageName"
    .parameter "activity"

    .prologue
    const-wide/16 v3, 0x1

    const/4 v2, 0x1

    .line 66
    sget-wide v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->tick:J

    add-long/2addr v0, v3

    sput-wide v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->tick:J

    .line 68
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->switchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentNetDataState()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 69
    sget-wide v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->data:J

    add-long/2addr v0, v3

    sput-wide v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->data:J

    .line 72
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->switchTools:Lcom/zte/heartyservice/power/SwitchTools;

    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentWifiState()I

    move-result v0

    if-ne v0, v2, :cond_1

    .line 73
    sget-wide v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->wifi:J

    add-long/2addr v0, v3

    sput-wide v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->wifi:J

    .line 76
    :cond_1
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getShoppingSafe()Z

    move-result v0

    if-ne v0, v2, :cond_3

    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    :cond_2
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->checkAppisSafe(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    :cond_3
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "com.android.internal.app.ResolverActivity"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 101
    :cond_4
    :goto_0
    return-void

    .line 87
    :cond_5
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    invoke-virtual {v0, p1}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 88
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    sget-object v1, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->isPackageLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->sendAppLockEvent(ILjava/lang/String;)V

    .line 93
    :cond_6
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->saveTick()V

    .line 94
    sput-object p1, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    goto :goto_0

    .line 98
    :cond_7
    invoke-virtual {p0}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->saveTick()V

    .line 99
    sput-object p1, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    .line 100
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->sendAppLockEvent(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public saveTick()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    .line 105
    sget-object v0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 106
    const-string v0, "tick"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " tick:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->tick:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->data:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " wifi:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->wifi:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "S"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    iget-object v0, p0, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mWatchDog:Lcom/zte/heartyservice/privacy/AppLockWatchDog;

    sget-object v1, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->mLastResumedPkg:Ljava/lang/String;

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-wide v2, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->tick:J

    sget-wide v4, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->data:J

    sget-wide v6, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->wifi:J

    invoke-virtual/range {v0 .. v7}, Lcom/zte/heartyservice/privacy/AppLockWatchDog;->addT(Ljava/lang/String;JJJ)V

    .line 108
    sput-wide v8, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->tick:J

    .line 109
    sput-wide v8, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->data:J

    .line 110
    sput-wide v8, Lcom/zte/heartyservice/privacy/AppLockStrategyUtils;->wifi:J

    .line 112
    :cond_0
    return-void
.end method

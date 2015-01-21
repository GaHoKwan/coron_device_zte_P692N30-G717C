.class public Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;
.super Ljava/lang/Object;
.source "CooTekSmartdialerOemModule.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;
    }
.end annotation


# static fields
.field public static final AUTHORITY:Ljava/lang/String; = "com.cootek.smartdialer.TouchPalCallerIdProvider_oem_module"

.field private static final CALLER_DETAIL_CLASS_NAME:Ljava/lang/String; = "com.cootek.smartdialer.yellowpage.CallDetailCustom"

.field private static final CALLER_ID_RESULT_ACTION:Ljava/lang/String; = "CallerIdResult"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final INTENTKEY_ATTRIBUTE:Ljava/lang/String; = "attribute"

.field public static final INTENTKEY_BUNDLE:Ljava/lang/String; = "bundle"

.field public static final INTENTKEY_CALLLOGID:Ljava/lang/String; = "callLogId"

.field public static final INTENTKEY_CLASSIFY:Ljava/lang/String; = "classify"

.field public static final INTENTKEY_CLASSIFYNAME:Ljava/lang/String; = "classifyName"

.field public static final INTENTKEY_FORCEDIALOGSTYLE:Ljava/lang/String; = "forceDialogStyle"

.field public static final INTENTKEY_ISVERIFIED:Ljava/lang/String; = "isVerified"

.field public static final INTENTKEY_ISVIP:Ljava/lang/String; = "isVip"

.field public static final INTENTKEY_KEY:Ljava/lang/String; = "key"

.field public static final INTENTKEY_MARKEDCOUNT:Ljava/lang/String; = "markedCount"

.field public static final INTENTKEY_NAME:Ljava/lang/String; = "name"

.field public static final INTENTKEY_NUMBER:Ljava/lang/String; = "number"

.field public static final INTENTKEY_TYPE:Ljava/lang/String; = "type"

.field public static final INTENTKEY_VALUE:Ljava/lang/String; = "value"

.field public static final INTENTKEY_VENDOR:Ljava/lang/String; = "telType"

.field public static final INTENTKEY_VIPMSG:Ljava/lang/String; = "vipMsg"

.field public static final INTENTKEY_VIPPHOTO:Ljava/lang/String; = "vipPhoto"

.field private static final MAIN_PACKAGE_NAME:Ljava/lang/String; = "com.cootek.smartdialer_oem_module"

.field private static final MARK_CLASS_NAME:Ljava/lang/String; = "com.cootek.smartdialer.yellowpage.ModuleMarkCaller"

.field private static final MODULE_ASSISTANT_CLASS_NAME:Ljava/lang/String; = "com.cootek.smartdialer.assist.ModuleAssistant"

.field public static final REQCODE_CALLER_ID_RESULT:I = 0x0

.field public static final REQCODE_MARK_CALLER:I = 0x2

.field public static final REQCODE_PREFERENCE:I = 0x1

.field private static final SETTINGS_CLASS_NAME:Ljava/lang/String; = "com.cootek.smartdialer.TWall"

.field private static final TSERVICE_CLASS_NAME:Ljava/lang/String; = "com.cootek.smartdialer.TService"

.field private static final YELLOW_PAGE_CLASS_NAME:Ljava/lang/String; = "com.cootek.smartdialer.yellowpage.YPDialer"

.field private static componentName:Landroid/content/ComponentName;

.field private static intent:Landroid/content/Intent;


# instance fields
.field private activity:Landroid/app/Activity;

.field private broadcastReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 69
    const-string v0, "content://com.cootek.smartdialer.TouchPalCallerIdProvider_oem_module/callerid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->CONTENT_URI:Landroid/net/Uri;

    .line 73
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    sput-object v0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->intent:Landroid/content/Intent;

    .line 74
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.TService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->componentName:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    .line 78
    invoke-static {p1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->startCootekService(Landroid/content/Context;)V

    .line 79
    return-void
.end method

.method public static getCallerIdResult(Landroid/content/Context;Ljava/lang/String;)Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .locals 2
    .parameter "ctx"
    .parameter "number"

    .prologue
    .line 320
    invoke-static {p0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->startCootekService(Landroid/content/Context;)V

    .line 321
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 322
    .local v0, cr:Landroid/content/ContentResolver;
    invoke-static {p1, v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->getSingleCallerIdResult(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    move-result-object v1

    return-object v1
.end method

.method public static getCallerIdResult(Landroid/content/Context;[Ljava/lang/String;)[Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .locals 7
    .parameter "ctx"
    .parameter "numbers"

    .prologue
    .line 326
    invoke-static {p0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->startCootekService(Landroid/content/Context;)V

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 328
    .local v1, cr:Landroid/content/ContentResolver;
    array-length v4, p1

    new-array v0, v4, [Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    .line 329
    .local v0, callerIdResults:[Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    const/4 v2, 0x0

    .line 330
    .local v2, index:I
    const-string v4, "start"

    invoke-static {v4, v1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->getSingleCallerIdResult(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    .line 331
    array-length v5, p1

    const/4 v4, 0x0

    :goto_0
    if-lt v4, v5, :cond_0

    .line 335
    const-string v4, "end"

    invoke-static {v4, v1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->getSingleCallerIdResult(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    .line 337
    return-object v0

    .line 331
    :cond_0
    aget-object v3, p1, v4

    .line 332
    .local v3, number:Ljava/lang/String;
    invoke-static {v3, v1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->getSingleCallerIdResult(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    move-result-object v6

    aput-object v6, v0, v2

    .line 333
    add-int/lit8 v2, v2, 0x1

    .line 331
    add-int/lit8 v4, v4, 0x1

    goto :goto_0
.end method

.method private static getSingleCallerIdResult(Ljava/lang/String;Landroid/content/ContentResolver;)Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .locals 18
    .parameter "number"
    .parameter "cr"

    .prologue
    .line 292
    const/4 v12, 0x0

    .line 294
    .local v12, callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    sget-object v2, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v5, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    aput-object p0, v5, v17

    const/4 v6, 0x0

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    .line 296
    .local v13, cursor:Landroid/database/Cursor;
    if-eqz v13, :cond_5

    :try_start_0
    invoke-interface {v13}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 297
    const/4 v2, 0x0

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 298
    .local v4, name:Ljava/lang/String;
    const/4 v2, 0x1

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 299
    .local v3, attribute:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 300
    .local v5, classify:Ljava/lang/String;
    const/4 v2, 0x3

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 301
    .local v6, classifyName:Ljava/lang/String;
    const/4 v2, 0x4

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 302
    .local v16, isVipStr:Ljava/lang/String;
    const/4 v2, 0x5

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 303
    .local v8, vipMsg:Ljava/lang/String;
    const/4 v2, 0x6

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v9

    .line 304
    .local v9, photo:[B
    const/4 v2, 0x7

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 305
    .local v15, isVerifiedStr:Ljava/lang/String;
    const-string v2, "true"

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v7, 0x1

    .line 306
    .local v7, isVip:Z
    :goto_0
    const-string v2, "true"

    invoke-virtual {v15, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v10, 0x1

    .line 307
    .local v10, isVerified:Z
    :goto_1
    const/16 v2, 0x8

    invoke-interface {v13, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 308
    .local v11, markedCount:I
    new-instance v1, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v11}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;[BZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    .end local v3           #attribute:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #classify:Ljava/lang/String;
    .end local v6           #classifyName:Ljava/lang/String;
    .end local v7           #isVip:Z
    .end local v8           #vipMsg:Ljava/lang/String;
    .end local v9           #photo:[B
    .end local v10           #isVerified:Z
    .end local v11           #markedCount:I
    .end local v12           #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .end local v15           #isVerifiedStr:Ljava/lang/String;
    .end local v16           #isVipStr:Ljava/lang/String;
    .local v1, callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    :goto_2
    if-eqz v13, :cond_0

    .line 314
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 316
    :cond_0
    :goto_3
    return-object v1

    .line 305
    .end local v1           #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .restart local v3       #attribute:Ljava/lang/String;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #classify:Ljava/lang/String;
    .restart local v6       #classifyName:Ljava/lang/String;
    .restart local v8       #vipMsg:Ljava/lang/String;
    .restart local v9       #photo:[B
    .restart local v12       #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .restart local v15       #isVerifiedStr:Ljava/lang/String;
    .restart local v16       #isVipStr:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 306
    .restart local v7       #isVip:Z
    :cond_2
    const/4 v10, 0x0

    goto :goto_1

    .line 310
    .end local v3           #attribute:Ljava/lang/String;
    .end local v4           #name:Ljava/lang/String;
    .end local v5           #classify:Ljava/lang/String;
    .end local v6           #classifyName:Ljava/lang/String;
    .end local v7           #isVip:Z
    .end local v8           #vipMsg:Ljava/lang/String;
    .end local v9           #photo:[B
    .end local v15           #isVerifiedStr:Ljava/lang/String;
    .end local v16           #isVipStr:Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 311
    .local v14, e:Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    if-eqz v13, :cond_4

    .line 314
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    move-object v1, v12

    .end local v12           #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .restart local v1       #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    goto :goto_3

    .line 312
    .end local v1           #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v12       #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    :catchall_0
    move-exception v2

    .line 313
    if-eqz v13, :cond_3

    .line 314
    invoke-interface {v13}, Landroid/database/Cursor;->close()V

    .line 315
    :cond_3
    throw v2

    .restart local v14       #e:Ljava/lang/Exception;
    :cond_4
    move-object v1, v12

    .end local v12           #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .restart local v1       #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    goto :goto_3

    .end local v1           #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .end local v14           #e:Ljava/lang/Exception;
    .restart local v12       #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    :cond_5
    move-object v1, v12

    .end local v12           #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    .restart local v1       #callerIdRes:Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;
    goto :goto_2
.end method

.method private sendCallerIdResultIntent(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 272
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 273
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.assist.ModuleAssistant"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 274
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    const-string v1, "CallerIdResult"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 276
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 277
    return-void
.end method

.method private static startCootekService(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 82
    sget-object v0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->intent:Landroid/content/Intent;

    sget-object v1, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 83
    sget-object v0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 84
    return-void
.end method


# virtual methods
.method public getCallerIdResultByReceiver(Ljava/lang/String;)V
    .locals 1
    .parameter "number"

    .prologue
    .line 280
    const-string v0, "end"

    invoke-direct {p0, v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->sendCallerIdResultIntent(Ljava/lang/String;)V

    .line 281
    invoke-direct {p0, p1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->sendCallerIdResultIntent(Ljava/lang/String;)V

    .line 282
    return-void
.end method

.method public getCallerIdResultByReceiver([Ljava/lang/String;)V
    .locals 3
    .parameter "numbers"

    .prologue
    .line 285
    const-string v1, "end"

    invoke-direct {p0, v1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->sendCallerIdResultIntent(Ljava/lang/String;)V

    .line 286
    array-length v2, p1

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v2, :cond_0

    .line 289
    return-void

    .line 286
    :cond_0
    aget-object v0, p1, v1

    .line 287
    .local v0, number:Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->sendCallerIdResultIntent(Ljava/lang/String;)V

    .line 286
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public launchCallerDetail(Ljava/lang/String;JLandroid/os/Bundle;)V
    .locals 3
    .parameter "vendor"
    .parameter "callLogId"
    .parameter "callerIdResult"

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 132
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.yellowpage.CallDetailCustom"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    const-string v1, "telType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    const-string v1, "callLogId"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 135
    const-string v1, "bundle"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 136
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 137
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 138
    return-void
.end method

.method public launchCallerDetail(Ljava/lang/String;JLcom/cootek/smartdialer_plugin_oem/CallerIdResult;)V
    .locals 3
    .parameter "vendor"
    .parameter "callLogId"
    .parameter "callerIdResult"

    .prologue
    .line 141
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 142
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "number"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    const-string v1, "name"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    const-string v1, "classify"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getClassify()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    const-string v1, "classifyName"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getClassifyName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const-string v1, "isVip"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->isVip()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 147
    const-string v1, "vipMsg"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getVipMsg()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    const-string v1, "vipPhoto"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getVipPhoto()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 149
    const-string v1, "isVerified"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->isVerified()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 150
    const-string v1, "markedCount"

    invoke-virtual {p4}, Lcom/cootek/smartdialer_plugin_oem/CallerIdResult;->getMarkedCount()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 152
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->launchCallerDetail(Ljava/lang/String;JLandroid/os/Bundle;)V

    .line 153
    return-void
.end method

.method public launchMarkDialog(Ljava/lang/String;Z)V
    .locals 3
    .parameter "number"
    .parameter "foreceDialogStyle"

    .prologue
    .line 207
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 208
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.yellowpage.ModuleMarkCaller"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 209
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    const-string v1, "forceDialogStyle"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 211
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    const/4 v2, 0x2

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 212
    return-void
.end method

.method public launchSettings()V
    .locals 3

    .prologue
    .line 196
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.TWall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method public launchYellowPage()V
    .locals 3

    .prologue
    .line 185
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 186
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.yellowpage.YPDialer"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 187
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 188
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 189
    return-void
.end method

.method public registerCallerIdResultReceiver(Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;)V
    .locals 3
    .parameter "receiver"

    .prologue
    .line 87
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    if-nez v1, :cond_0

    .line 104
    :goto_0
    return-void

    .line 90
    :cond_0
    new-instance v1, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$1;

    invoke-direct {v1, p0, p1}, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$1;-><init>(Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule$ICallerIdResultReceiver;)V

    iput-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 101
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "CallerIdResult"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    iget-object v2, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public setPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 252
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 253
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.assist.ModuleAssistant"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 254
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 255
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 256
    const-string v1, "type"

    const-string v2, "string"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 257
    const-string v1, "change"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 258
    const-string v1, "pref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 259
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 260
    return-void
.end method

.method public setPreference(Ljava/lang/String;Z)V
    .locals 4
    .parameter "key"
    .parameter "value"

    .prologue
    const/4 v3, 0x1

    .line 228
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 229
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.cootek.smartdialer_oem_module"

    const-string v2, "com.cootek.smartdialer.assist.ModuleAssistant"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 230
    const-string v1, "key"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 231
    const-string v1, "value"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 232
    const-string v1, "type"

    const-string v2, "boolean"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 233
    const-string v1, "change"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 234
    const-string v1, "pref"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 235
    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    invoke-virtual {v1, v0, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 236
    return-void
.end method

.method public unregisterCallerIdResultReceiver()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_1

    .line 112
    :cond_0
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/cootek/smartdialer_plugin_oem/CooTekSmartdialerOemModule;->broadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_0
.end method

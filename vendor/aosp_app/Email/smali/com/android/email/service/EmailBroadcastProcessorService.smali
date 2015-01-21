.class public Lcom/android/email/service/EmailBroadcastProcessorService;
.super Landroid/app/IntentService;
.source "EmailBroadcastProcessorService.java"


# static fields
.field private static final ACTION_BROADCAST:Ljava/lang/String; = "broadcast_receiver"

.field private static final ACTION_DEVICE_POLICY_ADMIN:Ljava/lang/String; = "com.android.email.devicepolicy"

.field private static final ACTION_SECRET_CODE:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"

.field private static final EMIAL_PACKAGE_NAME:Ljava/lang/String; = "com.android.email"

.field private static final EXTRA_DEVICE_POLICY_ADMIN:Ljava/lang/String; = "message_code"

.field private static final NO_UNREAD_MAIL:I = 0x0

.field private static final SECRET_CODE_HOST_DEBUG_SCREEN:Ljava/lang/String; = "36245"

.field public static mEmailBroadcastServiceFinished:Z


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mPref:Lcom/android/email/Preferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    const-class v0, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mPref:Lcom/android/email/Preferences;

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mHandler:Landroid/os/Handler;

    .line 86
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/IntentService;->setIntentRedelivery(Z)V

    .line 87
    return-void
.end method

.method private enableComponentsIfNecessary()V
    .locals 1

    .prologue
    .line 207
    invoke-static {p0}, Lcom/android/email/Email;->setServicesEnabledSync(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionReschedule(Landroid/content/Context;)V

    .line 212
    invoke-static {p0}, Lcom/android/email/service/MailService;->actionRescheduleClearOldAttachment(Landroid/content/Context;)V

    .line 217
    :cond_0
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 218
    return-void
.end method

.method private onBootCompleted()V
    .locals 2

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->performOneTimeInitialization()V

    .line 225
    const/4 v1, 0x0

    invoke-static {p0, v1}, Lcom/android/emailcommon/provider/Mailbox;->getUnreadCountByMailboxType(Landroid/content/Context;I)I

    move-result v0

    .line 226
    .local v0, unreadCount:I
    invoke-static {p0, v0}, Lcom/android/email/NotificationController;->notifyEmailUnreadNumber(Landroid/content/Context;I)V

    .line 227
    iget-object v1, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mPref:Lcom/android/email/Preferences;

    invoke-virtual {v1}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v1

    if-nez v1, :cond_0

    .line 228
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->enableComponentsIfNecessary()V

    .line 232
    invoke-static {}, Lcom/android/email/NotificationController;->notifyOnBootCompleted()V

    .line 235
    :cond_0
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z

    .line 236
    return-void
.end method

.method private onSystemAccountChanged()V
    .locals 2

    .prologue
    .line 305
    const-string v0, "Email"

    const-string v1, "System accounts updated."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-static {p0}, Lcom/android/email/service/MailService;->reconcilePopImapAccountsSync(Landroid/content/Context;)V

    .line 310
    invoke-static {p0}, Lcom/android/email/service/EmailServiceUtils;->startExchangeService(Landroid/content/Context;)V

    .line 311
    return-void
.end method

.method private performOneTimeInitialization()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 239
    iget-object v2, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mPref:Lcom/android/email/Preferences;

    invoke-virtual {v2}, Lcom/android/email/Preferences;->getOneTimeInitializationProgress()I

    move-result v1

    .line 240
    .local v1, progress:I
    move v0, v1

    .line 242
    .local v0, initialProgress:I
    if-ge v1, v4, :cond_0

    .line 243
    const-string v2, "Email"

    const-string v3, "Onetime initialization: 1"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/4 v1, 0x1

    .line 245
    invoke-static {p0}, Lcom/android/email/VendorPolicyLoader;->getInstance(Landroid/content/Context;)Lcom/android/email/VendorPolicyLoader;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/email/VendorPolicyLoader;->useAlternateExchangeStrings()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 246
    const-class v2, Lcom/android/email/service/EasAuthenticatorServiceAlternate;

    invoke-direct {p0, v2, v4}, Lcom/android/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 247
    const-class v2, Lcom/android/email/service/EasAuthenticatorService;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/android/email/service/EmailBroadcastProcessorService;->setComponentEnabled(Ljava/lang/Class;Z)V

    .line 251
    :cond_0
    const/4 v2, 0x2

    if-ge v1, v2, :cond_1

    .line 252
    const-string v2, "Email"

    const-string v3, "Onetime initialization: 2"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    const/4 v1, 0x2

    .line 254
    invoke-static {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->setImapDeletePolicy(Landroid/content/Context;)V

    .line 262
    :cond_1
    if-eq v1, v0, :cond_2

    .line 263
    iget-object v2, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mPref:Lcom/android/email/Preferences;

    invoke-virtual {v2, v1}, Lcom/android/email/Preferences;->setOneTimeInitializationProgress(I)V

    .line 264
    const-string v2, "Email"

    const-string v3, "Onetime initialization: completed."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_2
    return-void
.end method

.method public static processBroadcastIntent(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "broadcastIntent"

    .prologue
    .line 93
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    .local v0, i:Landroid/content/Intent;
    const-string v1, "broadcast_receiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    const-string v1, "android.intent.extra.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 97
    return-void
.end method

.method public static processDevicePolicyMessage(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/service/EmailBroadcastProcessorService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 106
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.android.email.devicepolicy"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    const-string v1, "message_code"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 109
    return-void
.end method

.method private setComponentEnabled(Ljava/lang/Class;Z)V
    .locals 4
    .parameter
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;Z)V"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    .line 297
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 298
    .local v0, c:Landroid/content/ComponentName;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    if-eqz p2, :cond_0

    move v1, v2

    :goto_0
    invoke-virtual {v3, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 302
    return-void

    .line 298
    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method static setImapDeletePolicy(Landroid/content/Context;)V
    .locals 15
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 273
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 274
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 277
    .local v8, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 278
    const/4 v1, 0x6

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 279
    .local v12, recvAuthKey:J
    invoke-static {p0, v12, v13}, Lcom/android/emailcommon/provider/HostAuth;->restoreHostAuthWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/HostAuth;

    move-result-object v11

    .line 280
    .local v11, recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    if-eqz v11, :cond_0

    const-string v1, "imap"

    iget-object v2, v11, Lcom/android/emailcommon/provider/HostAuth;->mProtocol:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 281
    const/16 v1, 0x8

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 282
    .local v10, flags:I
    and-int/lit8 v10, v10, -0xd

    .line 283
    or-int/lit8 v10, v10, 0x8

    .line 284
    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    .line 285
    .local v9, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v9, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 286
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 287
    .local v6, accountId:J
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v14

    .line 288
    .local v14, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v14, v9, v1, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 292
    .end local v6           #accountId:J
    .end local v9           #cv:Landroid/content/ContentValues;
    .end local v10           #flags:I
    .end local v11           #recvAuth:Lcom/android/emailcommon/provider/HostAuth;
    .end local v12           #recvAuthKey:J
    .end local v14           #uri:Landroid/net/Uri;
    :catchall_0
    move-exception v1

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 294
    return-void
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 12
    .parameter "intent"

    .prologue
    .line 114
    const/4 v10, 0x0

    .line 116
    .local v10, c:Landroid/database/Cursor;
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 118
    .local v6, action:Ljava/lang/String;
    :try_start_0
    const-string v0, "broadcast_receiver"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 119
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/content/Intent;

    .line 120
    .local v8, broadcastIntent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    .line 121
    .local v7, broadcastAction:Ljava/lang/String;
    const-string v0, "packageName"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 123
    .local v9, broadcastPackageName:Ljava/lang/String;
    const-string v0, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 124
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->onBootCompleted()V

    .line 126
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    .end local v7           #broadcastAction:Ljava/lang/String;
    .end local v8           #broadcastIntent:Landroid/content/Intent;
    .end local v9           #broadcastPackageName:Ljava/lang/String;
    :cond_0
    :goto_0
    if-eqz v10, :cond_1

    .line 200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 204
    :cond_1
    return-void

    .line 129
    .restart local v7       #broadcastAction:Ljava/lang/String;
    .restart local v8       #broadcastIntent:Landroid/content/Intent;
    .restart local v9       #broadcastPackageName:Ljava/lang/String;
    :cond_2
    :try_start_1
    const-string v0, "android.intent.action.DEVICE_STORAGE_LOW"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 133
    const-string v0, "Email"

    const-string v1, "Receive STORAGE_LOW broadcast , and Email try to release space"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mPref:Lcom/android/email/Preferences;

    invoke-virtual {v0}, Lcom/android/email/Preferences;->checkLowStorage()V

    .line 137
    iget-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mPref:Lcom/android/email/Preferences;

    invoke-virtual {v0}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const-string v0, "Email"

    const-string v1, "Still STORAGE_LOW , and Email will stop work"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 142
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/service/EmailBroadcastProcessorService$1;

    invoke-direct {v1, p0}, Lcom/android/email/service/EmailBroadcastProcessorService$1;-><init>(Lcom/android/email/service/EmailBroadcastProcessorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 154
    :cond_3
    invoke-static {p0}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/email/Controller;->stopEmailService(Landroid/content/Context;)V

    .line 155
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 199
    .end local v7           #broadcastAction:Ljava/lang/String;
    .end local v8           #broadcastIntent:Landroid/content/Intent;
    .end local v9           #broadcastPackageName:Ljava/lang/String;
    :catchall_0
    move-exception v0

    if-eqz v10, :cond_4

    .line 200
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    .line 158
    .restart local v7       #broadcastAction:Ljava/lang/String;
    .restart local v8       #broadcastIntent:Landroid/content/Intent;
    .restart local v9       #broadcastPackageName:Ljava/lang/String;
    :cond_5
    :try_start_2
    const-string v0, "android.intent.action.DEVICE_STORAGE_OK"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 159
    const-string v0, "Email"

    const-string v1, "Receive STORAGE_OK broadcast , and Email will start work"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    iget-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mPref:Lcom/android/email/Preferences;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/Preferences;->setLowStorage(Z)V

    .line 162
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Account;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 164
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_6

    .line 165
    iget-object v0, p0, Lcom/android/email/service/EmailBroadcastProcessorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/service/EmailBroadcastProcessorService$2;

    invoke-direct {v1, p0}, Lcom/android/email/service/EmailBroadcastProcessorService$2;-><init>(Lcom/android/email/service/EmailBroadcastProcessorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 173
    :cond_6
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->enableComponentsIfNecessary()V

    .line 174
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z

    goto/16 :goto_0

    .line 175
    :cond_7
    const-string v0, "android.provider.Telephony.SECRET_CODE"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "36245"

    invoke-virtual {v8}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 178
    invoke-static {p0}, Lcom/android/email/activity/setup/AccountSettings;->actionSettingsWithDebug(Landroid/content/Context;)V

    .line 179
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z

    goto/16 :goto_0

    .line 180
    :cond_8
    const-string v0, "android.accounts.LOGIN_ACCOUNTS_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 181
    invoke-direct {p0}, Lcom/android/email/service/EmailBroadcastProcessorService;->onSystemAccountChanged()V

    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z

    goto/16 :goto_0

    .line 184
    :cond_9
    const-string v0, "com.mediatek.intent.action.SETTINGS_PACKAGE_DATA_CLEARED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "com.android.email"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 186
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/email/NotificationController;->notifyEmailUnreadNumber(Landroid/content/Context;I)V

    .line 187
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z

    goto/16 :goto_0

    .line 189
    :cond_a
    const-string v0, "android.intent.action.SKIN_CHANGED"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-static {}, Lcom/android/email/activity/MessageListItem;->resetDrawingCaches()V

    goto/16 :goto_0

    .line 193
    .end local v7           #broadcastAction:Ljava/lang/String;
    .end local v8           #broadcastIntent:Landroid/content/Intent;
    .end local v9           #broadcastPackageName:Ljava/lang/String;
    :cond_b
    const-string v0, "com.android.email.devicepolicy"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 194
    const-string v0, "message_code"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    .line 195
    .local v11, message:I
    invoke-static {p0, v11}, Lcom/android/email/SecurityPolicy;->onDeviceAdminReceiverMessage(Landroid/content/Context;I)V

    .line 196
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/email/service/EmailBroadcastProcessorService;->mEmailBroadcastServiceFinished:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0
.end method

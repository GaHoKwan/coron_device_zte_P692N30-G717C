.class public Lcom/android/email/SecurityPolicy;
.super Ljava/lang/Object;
.source "SecurityPolicy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/SecurityPolicy$PolicyAdmin;
    }
.end annotation


# static fields
.field private static final DEVICE_ADMIN_MESSAGE_DISABLED:I = 0x2

.field private static final DEVICE_ADMIN_MESSAGE_ENABLED:I = 0x1

.field private static final DEVICE_ADMIN_MESSAGE_PASSWORD_CHANGED:I = 0x3

.field private static final DEVICE_ADMIN_MESSAGE_PASSWORD_EXPIRING:I = 0x4

.field private static final HAS_PASSWORD_EXPIRATION:Ljava/lang/String; = "passwordExpirationDays>0"

.field public static final INACTIVE_NEED_ACTIVATION:I = 0x1

.field public static final INACTIVE_NEED_CONFIGURATION:I = 0x2

.field public static final INACTIVE_NEED_ENCRYPTION:I = 0x8

.field public static final INACTIVE_NEED_PASSWORD:I = 0x4

.field private static final TAG:Ljava/lang/String; = "Email/SecurityPolicy"

.field public static mFlag:Ljava/lang/Boolean;

.field private static sInstance:Lcom/android/email/SecurityPolicy;


# instance fields
.field private final mAdminName:Landroid/content/ComponentName;

.field private mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

.field private mContext:Landroid/content/Context;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 71
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/email/SecurityPolicy;->mFlag:Ljava/lang/Boolean;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 87
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 88
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/email/SecurityPolicy$PolicyAdmin;

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    .line 89
    iput-object v2, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 90
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 91
    return-void
.end method

.method public static clearAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V
    .locals 1
    .parameter "context"
    .parameter "account"

    .prologue
    const/4 v0, 0x0

    .line 542
    invoke-static {p0, p1, v0, v0}, Lcom/android/email/SecurityPolicy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 543
    return-void
.end method

.method static findShortestExpiration(Landroid/content/Context;)J
    .locals 12
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const-wide/16 v10, -0x1

    .line 798
    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "passwordExpirationDays>0"

    const/4 v4, 0x0

    const-string v5, "passwordExpirationDays ASC"

    const/4 v6, 0x0

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Lcom/android/emailcommon/utility/Utility;->getFirstRowLong(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;ILjava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    .line 801
    .local v8, policyId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v8, v0

    if-gez v0, :cond_0

    move-wide v0, v10

    .line 802
    :goto_0
    return-wide v0

    :cond_0
    invoke-static {p0, v8, v9}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;
    .locals 3
    .parameter "context"

    .prologue
    .line 76
    const-class v1, Lcom/android/email/SecurityPolicy;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/email/SecurityPolicy;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/email/SecurityPolicy;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;

    .line 79
    :cond_0
    sget-object v0, Lcom/android/email/SecurityPolicy;->sInstance:Lcom/android/email/SecurityPolicy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 76
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static onDeviceAdminReceiverMessage(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 844
    invoke-static {p0}, Lcom/android/email/SecurityPolicy;->getInstance(Landroid/content/Context;)Lcom/android/email/SecurityPolicy;

    move-result-object v0

    .line 845
    .local v0, instance:Lcom/android/email/SecurityPolicy;
    packed-switch p1, :pswitch_data_0

    .line 867
    :goto_0
    return-void

    .line 847
    :pswitch_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 850
    :pswitch_1
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/email/SecurityPolicy;->onAdminEnabled(Z)V

    goto :goto_0

    .line 855
    :pswitch_2
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->clearSecurityHoldOnAllAccounts(Landroid/content/Context;)V

    .line 857
    invoke-static {p0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/email/NotificationController;->cancelPasswordExpirationNotifications()V

    goto :goto_0

    .line 861
    :pswitch_3
    sget-boolean v1, Lcom/android/emailcommon/Configuration;->mIsRunTestcase:Z

    if-eqz v1, :cond_0

    .line 862
    invoke-virtual {v0, p0}, Lcom/android/email/SecurityPolicy;->setContext(Landroid/content/Context;)V

    .line 864
    :cond_0
    iget-object v1, v0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/SecurityPolicy;->onPasswordExpiring(Landroid/content/Context;)V

    goto :goto_0

    .line 845
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private onPasswordExpiring(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    .line 765
    invoke-static {p1}, Lcom/android/email/SecurityPolicy;->findShortestExpiration(Landroid/content/Context;)J

    move-result-wide v3

    .line 768
    .local v3, nextExpiringAccountId:J
    const-wide/16 v8, -0x1

    cmp-long v8, v3, v8

    if-nez v8, :cond_1

    .line 789
    :cond_0
    :goto_0
    return-void

    .line 773
    :cond_1
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v8

    iget-object v9, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v8, v9}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 774
    .local v0, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v5, v0, v8

    .line 775
    .local v5, timeUntilExpiration:J
    const-wide/16 v8, 0x0

    cmp-long v8, v5, v8

    if-gez v8, :cond_2

    const/4 v2, 0x1

    .line 776
    .local v2, expired:Z
    :goto_1
    if-nez v2, :cond_3

    .line 779
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/email/NotificationController;->showPasswordExpiringNotification(J)V

    goto :goto_0

    .line 775
    .end local v2           #expired:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1

    .line 783
    .restart local v2       #expired:Z
    :cond_3
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v8

    invoke-static {p1, v8}, Lcom/android/email/SecurityPolicy;->wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z

    move-result v7

    .line 784
    .local v7, wiped:Z
    if-eqz v7, :cond_0

    .line 785
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Lcom/android/email/NotificationController;->showPasswordExpiredNotification(J)V

    goto :goto_0
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "accountId"
    .parameter "newState"

    .prologue
    .line 516
    invoke-static {p0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 517
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v0, :cond_0

    .line 518
    invoke-static {p0, v0, p3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 520
    :cond_0
    return-void
.end method

.method public static setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 3
    .parameter "context"
    .parameter "account"
    .parameter "newState"

    .prologue
    .line 531
    if-eqz p2, :cond_0

    .line 532
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 536
    :goto_0
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 537
    .local v0, cv:Landroid/content/ContentValues;
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 538
    invoke-virtual {p1, p0, v0}, Lcom/android/emailcommon/provider/Account;->update(Landroid/content/Context;Landroid/content/ContentValues;)I

    .line 539
    return-void

    .line 534
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_0
    iget v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v1, v1, -0x21

    iput v1, p1, Lcom/android/emailcommon/provider/Account;->mFlags:I

    goto :goto_0
.end method

.method public static setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 6
    .parameter "context"
    .parameter "account"
    .parameter "policy"
    .parameter "securitySyncKey"

    .prologue
    const/4 v5, 0x0

    .line 557
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 560
    .local v1, ops:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    if-eqz p2, :cond_1

    .line 561
    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->normalize()V

    .line 563
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Policy;->toContentValues()Landroid/content/ContentValues;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 566
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "policyKey"

    invoke-virtual {v2, v3, v5}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "securitySyncKey"

    invoke-virtual {v2, v3, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 580
    :goto_0
    iget-wide v2, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 581
    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newDelete(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 587
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "com.android.email.provider"

    invoke-virtual {v2, v3, v1}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    .line 588
    invoke-virtual {p1, p0}, Lcom/android/emailcommon/provider/Account;->refresh(Landroid/content/Context;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/OperationApplicationException; {:try_start_0 .. :try_end_0} :catch_1

    .line 595
    :goto_1
    return-void

    .line 572
    :cond_1
    sget-object v2, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v3, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v2}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "securitySyncKey"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    const-string v3, "policyKey"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 589
    :catch_0
    move-exception v0

    .line 591
    .local v0, e:Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Exception setting account policy."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 592
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    goto :goto_1
.end method

.method static wipeExpiredAccounts(Landroid/content/Context;Lcom/android/email/Controller;)Z
    .locals 13
    .parameter "context"
    .parameter "controller"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 814
    const/4 v12, 0x0

    .line 815
    .local v12, result:Z
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "passwordExpirationDays>0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 818
    .local v9, c:Landroid/database/Cursor;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 819
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 820
    .local v10, policyId:J
    invoke-static {p0, v10, v11}, Lcom/android/emailcommon/provider/Policy;->getAccountIdWithPolicyKey(Landroid/content/Context;J)J

    move-result-wide v7

    .line 821
    .local v7, accountId:J
    const-wide/16 v0, 0x0

    cmp-long v0, v7, v0

    if-ltz v0, :cond_0

    .line 822
    invoke-static {p0, v7, v8}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v6

    .line 823
    .local v6, account:Lcom/android/emailcommon/provider/Account;
    if-eqz v6, :cond_0

    .line 825
    const/4 v0, 0x1

    invoke-static {p0, v6, v0}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 827
    invoke-virtual {p1, v7, v8}, Lcom/android/email/Controller;->deleteSyncedDataSync(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 829
    const/4 v12, 0x1

    goto :goto_0

    .line 833
    .end local v6           #account:Lcom/android/emailcommon/provider/Account;
    .end local v7           #accountId:J
    .end local v10           #policyId:J
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 835
    return v12

    .line 833
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public clearNotification()V
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/email/NotificationController;->cancelAllSecurityNeededNotification()V

    .line 678
    return-void
.end method

.method public clearUnsupportedPolicies(Lcom/android/emailcommon/provider/Policy;)Lcom/android/emailcommon/provider/Policy;
    .locals 3
    .parameter "policy"

    .prologue
    .line 280
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_0

    .line 281
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 283
    .local v0, encryptionStatus:I
    if-eqz v0, :cond_1

    .line 294
    .end local v0           #encryptionStatus:I
    :cond_0
    :goto_0
    return-object p1

    .line 286
    .restart local v0       #encryptionStatus:I
    :cond_1
    const-string v1, "Email/SecurityPolicy"

    const-string v2, "clear require encryption flag from policy"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v1, 0x0

    iput-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    goto :goto_0
.end method

.method computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 13
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const v12, 0x7fffffff

    const/high16 v11, -0x8000

    const/4 v10, 0x0

    .line 119
    const/4 v8, 0x0

    .line 120
    .local v8, policiesFound:Z
    new-instance v6, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v6}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 121
    .local v6, ap:Lcom/android/emailcommon/provider/Policy;
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 122
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 123
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 124
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 125
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 126
    iput v11, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 127
    iput v12, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 128
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 129
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 134
    iput-boolean v10, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryptionExternal:Z

    .line 136
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/emailcommon/provider/Policy;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/Policy;->CONTENT_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    .local v7, c:Landroid/database/Cursor;
    new-instance v9, Lcom/android/emailcommon/provider/Policy;

    invoke-direct {v9}, Lcom/android/emailcommon/provider/Policy;-><init>()V

    .line 140
    .local v9, policy:Lcom/android/emailcommon/provider/Policy;
    :goto_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 141
    invoke-virtual {v9, v7}, Lcom/android/emailcommon/provider/Policy;->restore(Landroid/database/Cursor;)V

    .line 142
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 143
    const-string v0, "Email/SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Aggregate from: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 146
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 147
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-lez v0, :cond_1

    .line 148
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 151
    :cond_1
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v0, :cond_2

    .line 152
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 155
    :cond_2
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v0, :cond_3

    .line 156
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 159
    :cond_3
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v0, :cond_4

    .line 160
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 163
    :cond_4
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v0, :cond_5

    .line 164
    iget v0, v9, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    iget v1, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 167
    :cond_5
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireRemoteWipe:Z

    .line 168
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    .line 169
    iget-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    iget-boolean v1, v9, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    or-int/2addr v0, v1

    iput-boolean v0, v6, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const/4 v8, 0x1

    goto/16 :goto_0

    .line 173
    :cond_6
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 175
    if-eqz v8, :cond_f

    .line 177
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ne v0, v11, :cond_7

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    .line 178
    :cond_7
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-ne v0, v11, :cond_8

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    .line 179
    :cond_8
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    if-ne v0, v12, :cond_9

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    .line 180
    :cond_9
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-ne v0, v12, :cond_a

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    .line 181
    :cond_a
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ne v0, v11, :cond_b

    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    .line 182
    :cond_b
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-ne v0, v12, :cond_c

    .line 183
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    .line 184
    :cond_c
    iget v0, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ne v0, v11, :cond_d

    .line 185
    iput v10, v6, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    .line 186
    :cond_d
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_e

    .line 187
    const-string v0, "Email/SecurityPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calculated Aggregate: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    .end local v6           #ap:Lcom/android/emailcommon/provider/Policy;
    :cond_e
    :goto_1
    return-object v6

    .line 173
    .restart local v6       #ap:Lcom/android/emailcommon/provider/Policy;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0

    .line 191
    :cond_f
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_10

    .line 192
    const-string v0, "Email/SecurityPolicy"

    const-string v1, "Calculated Aggregate: no policy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :cond_10
    sget-object v6, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    goto :goto_1
.end method

.method deleteSecuredAccounts(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 726
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 728
    .local v0, cr:Landroid/content/ContentResolver;
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const-string v3, "policyKey IS NOT NULL AND policyKey!=0"

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 731
    .local v6, c:Landroid/database/Cursor;
    :try_start_0
    const-string v1, "Email/SecurityPolicy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Email administration disabled; deleting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " secured account(s)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    invoke-static {p1}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, p1}, Lcom/android/email/Controller;->deleteAccountSync(JLandroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 738
    :catchall_0
    move-exception v1

    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    throw v1

    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 740
    const-wide/16 v1, -0x1

    invoke-virtual {p0, v1, v2}, Lcom/android/email/SecurityPolicy;->policiesUpdated(J)V

    .line 741
    return-void
.end method

.method public getAdminComponent()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 715
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public declared-synchronized getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;
    .locals 1

    .prologue
    .line 201
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    if-nez v0, :cond_0

    .line 202
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->computeAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 201
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized getDPM()Landroid/app/admin/DevicePolicyManager;
    .locals 2

    .prologue
    .line 211
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mDPM:Landroid/app/admin/DevicePolicyManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 211
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I
    .locals 14
    .parameter "policy"

    .prologue
    .line 372
    if-nez p1, :cond_0

    .line 375
    const/4 v10, 0x0

    iput-object v10, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 376
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object p1

    .line 379
    :cond_0
    sget-object v10, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    if-ne p1, v10, :cond_2

    .line 380
    const/4 v7, 0x0

    .line 447
    :cond_1
    :goto_0
    return v7

    .line 382
    :cond_2
    const/4 v7, 0x0

    .line 383
    .local v7, reasons:I
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 384
    .local v2, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v10

    if-eqz v10, :cond_e

    .line 386
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-lez v10, :cond_3

    .line 387
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    if-ge v10, v11, :cond_3

    .line 388
    or-int/lit8 v7, v7, 0x4

    .line 391
    :cond_3
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-lez v10, :cond_5

    .line 392
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;)I

    move-result v10

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v11

    if-ge v10, v11, :cond_4

    .line 393
    or-int/lit8 v7, v7, 0x4

    .line 395
    :cond_4
    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->isActivePasswordSufficient()Z

    move-result v10

    if-nez v10, :cond_5

    .line 396
    or-int/lit8 v7, v7, 0x4

    .line 399
    :cond_5
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    if-lez v10, :cond_6

    .line 401
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;)J

    move-result-wide v10

    iget v12, p1, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    mul-int/lit16 v12, v12, 0x3e8

    int-to-long v12, v12

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    .line 402
    or-int/lit8 v7, v7, 0x2

    .line 405
    :cond_6
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordExpirationDays:I

    if-lez v10, :cond_9

    .line 407
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v0

    .line 408
    .local v0, currentTimeout:J
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_7

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v10

    cmp-long v10, v0, v10

    if-lez v10, :cond_8

    .line 410
    :cond_7
    or-int/lit8 v7, v7, 0x4

    .line 413
    :cond_8
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpiration(Landroid/content/ComponentName;)J

    move-result-wide v4

    .line 414
    .local v4, expirationDate:J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long v8, v4, v10

    .line 415
    .local v8, timeUntilExpiration:J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-gez v10, :cond_d

    const/4 v6, 0x1

    .line 416
    .local v6, expired:Z
    :goto_1
    if-eqz v6, :cond_9

    .line 417
    or-int/lit8 v7, v7, 0x4

    .line 420
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v6           #expired:Z
    .end local v8           #timeUntilExpiration:J
    :cond_9
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-lez v10, :cond_a

    .line 421
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordHistoryLength(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    if-ge v10, v11, :cond_a

    .line 423
    or-int/lit8 v7, v7, 0x2

    .line 426
    :cond_a
    iget v10, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-lez v10, :cond_b

    .line 427
    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumNonLetter(Landroid/content/ComponentName;)I

    move-result v10

    iget v11, p1, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    if-ge v10, v11, :cond_b

    .line 428
    or-int/lit8 v7, v7, 0x4

    .line 431
    :cond_b
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v10, :cond_c

    .line 432
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v3

    .line 433
    .local v3, encryptionStatus:I
    const/4 v10, 0x3

    if-eq v3, v10, :cond_c

    .line 434
    or-int/lit8 v7, v7, 0x8

    .line 437
    .end local v3           #encryptionStatus:I
    :cond_c
    iget-boolean v10, p1, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/app/admin/DevicePolicyManager;->getCameraDisabled(Landroid/content/ComponentName;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 438
    or-int/lit8 v7, v7, 0x2

    goto/16 :goto_0

    .line 415
    .restart local v0       #currentTimeout:J
    .restart local v4       #expirationDate:J
    .restart local v8       #timeUntilExpiration:J
    :cond_d
    const/4 v6, 0x0

    goto :goto_1

    .line 447
    .end local v0           #currentTimeout:J
    .end local v4           #expirationDate:J
    .end local v8           #timeUntilExpiration:J
    :cond_e
    const/4 v7, 0x1

    goto/16 :goto_0
.end method

.method public isActive(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 4
    .parameter "policy"

    .prologue
    .line 305
    invoke-virtual {p0, p1}, Lcom/android/email/SecurityPolicy;->getInactiveReasons(Lcom/android/emailcommon/provider/Policy;)I

    move-result v0

    .line 306
    .local v0, reasons:I
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 307
    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isActive for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .local v1, sb:Ljava/lang/StringBuilder;
    if-nez v0, :cond_5

    .line 309
    const-string v2, "true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    :goto_0
    and-int/lit8 v2, v0, 0x1

    if-eqz v2, :cond_0

    .line 314
    const-string v2, "no_admin "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    :cond_0
    and-int/lit8 v2, v0, 0x2

    if-eqz v2, :cond_1

    .line 317
    const-string v2, "config "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 319
    :cond_1
    and-int/lit8 v2, v0, 0x4

    if-eqz v2, :cond_2

    .line 320
    const-string v2, "password "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 322
    :cond_2
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_3

    .line 323
    const-string v2, "encryption "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    :cond_3
    const-string v2, "Email/SecurityPolicy"

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_4
    if-nez v0, :cond_6

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 311
    .restart local v1       #sb:Ljava/lang/StringBuilder;
    :cond_5
    const-string v2, "FALSE -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 327
    .end local v1           #sb:Ljava/lang/StringBuilder;
    :cond_6
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public isActiveAdmin()Z
    .locals 3

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 703
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/app/admin/DevicePolicyManager;->hasGrantedPolicy(Landroid/content/ComponentName;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSupported(Lcom/android/emailcommon/provider/Policy;)Z
    .locals 3
    .parameter "policy"

    .prologue
    .line 249
    iget-boolean v1, p1, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    if-eqz v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 252
    .local v0, encryptionStatus:I
    if-eqz v0, :cond_1

    .line 263
    .end local v0           #encryptionStatus:I
    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 255
    .restart local v0       #encryptionStatus:I
    :cond_1
    const-string v1, "Email/SecurityPolicy"

    const-string v2, "Do not support encryption"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/4 v1, 0x0

    goto :goto_0
.end method

.method onAdminEnabled(Z)V
    .locals 1
    .parameter "isEnabled"

    .prologue
    .line 748
    if-nez p1, :cond_0

    .line 749
    iget-object v0, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/android/email/SecurityPolicy;->deleteSecuredAccounts(Landroid/content/Context;)V

    .line 751
    :cond_0
    return-void
.end method

.method public policiesRequired(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    .line 649
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 651
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_0

    .line 670
    :goto_0
    return-void

    .line 652
    :cond_0
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 653
    iget-wide v2, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    .line 654
    const-string v2, "Email/SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policiesRequired for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": none"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    .line 669
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/email/NotificationController;->showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_0

    .line 656
    :cond_2
    iget-object v2, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-wide v3, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v2, v3, v4}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 657
    .local v1, policy:Lcom/android/emailcommon/provider/Policy;
    if-nez v1, :cond_3

    .line 658
    const-string v2, "Email/SecurityPolicy"

    const-string v3, "No policy??"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 660
    :cond_3
    const-string v2, "Email/SecurityPolicy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "policiesRequired for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized policiesUpdated()V
    .locals 1

    .prologue
    .line 602
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;

    .line 603
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 604
    monitor-exit p0

    return-void

    .line 602
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized policiesUpdated(J)V
    .locals 1
    .parameter "accountId"

    .prologue
    .line 222
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/android/email/SecurityPolicy;->mAggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    monitor-exit p0

    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reducePolicies()V
    .locals 2

    .prologue
    .line 232
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 233
    const-string v0, "Email/SecurityPolicy"

    const-string v1, "reducePolicies"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    const-wide/16 v0, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/email/SecurityPolicy;->policiesUpdated(J)V

    .line 236
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->setActivePolicies()V

    .line 237
    return-void
.end method

.method public remoteWipe()V
    .locals 3

    .prologue
    .line 685
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 686
    .local v0, dpm:Landroid/app/admin/DevicePolicyManager;
    iget-object v1, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->isAdminActive(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->wipeData(I)V

    .line 691
    :goto_0
    return-void

    .line 689
    :cond_0
    const-string v1, "Email"

    const-string v2, "Could not remote wipe because not device admin."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setAccountPolicy(JLcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V
    .locals 8
    .parameter "accountId"
    .parameter "policy"
    .parameter "securityKey"

    .prologue
    .line 607
    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 608
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    const/4 v1, 0x0

    .line 610
    .local v1, oldPolicy:Lcom/android/emailcommon/provider/Policy;
    if-nez v0, :cond_0

    .line 638
    :goto_0
    return-void

    .line 614
    :cond_0
    iget-wide v4, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 615
    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/Account;->mPolicyKey:J

    invoke-static {v4, v5, v6}, Lcom/android/emailcommon/provider/Policy;->restorePolicyWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Policy;

    move-result-object v1

    .line 617
    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Lcom/android/emailcommon/provider/Policy;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    const/4 v2, 0x1

    .line 618
    .local v2, policyChanged:Z
    :goto_1
    if-nez v2, :cond_4

    iget-object v4, v0, Lcom/android/emailcommon/provider/Account;->mSecuritySyncKey:Ljava/lang/String;

    invoke-static {p4, v4}, Lcom/android/emailcommon/utility/TextUtilities;->stringOrNullEquals(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 620
    const-string v4, "Email"

    const-string v5, "setAccountPolicy; policy unchanged"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    :goto_2
    const/4 v3, 0x0

    .line 627
    .local v3, setHold:Z
    invoke-virtual {p0, p3}, Lcom/android/email/SecurityPolicy;->isActive(Lcom/android/emailcommon/provider/Policy;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 637
    :goto_3
    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, v3}, Lcom/android/email/SecurityPolicy;->setAccountHoldFlag(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Z)V

    goto :goto_0

    .line 617
    .end local v2           #policyChanged:Z
    .end local v3           #setHold:Z
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 622
    .restart local v2       #policyChanged:Z
    :cond_4
    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4, v0, p3, p4}, Lcom/android/email/SecurityPolicy;->setAccountPolicy(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;Lcom/android/emailcommon/provider/Policy;Ljava/lang/String;)V

    .line 623
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->policiesUpdated()V

    goto :goto_2

    .line 630
    .restart local v3       #setHold:Z
    :cond_5
    const/4 v3, 0x1

    .line 631
    const-string v4, "Email"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Notify policies for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " are not being enforced."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object v4, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/email/NotificationController;->getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/email/NotificationController;->showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V

    goto :goto_3
.end method

.method public setActivePolicies()V
    .locals 11

    .prologue
    const/4 v7, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getDPM()Landroid/app/admin/DevicePolicyManager;

    move-result-object v1

    .line 458
    .local v1, dpm:Landroid/app/admin/DevicePolicyManager;
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->getAggregatePolicy()Lcom/android/emailcommon/provider/Policy;

    move-result-object v0

    .line 460
    .local v0, aggregatePolicy:Lcom/android/emailcommon/provider/Policy;
    sget-object v8, Lcom/android/emailcommon/provider/Policy;->NO_POLICY:Lcom/android/emailcommon/provider/Policy;

    if-ne v0, v8, :cond_2

    .line 461
    sget-boolean v7, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v7, :cond_0

    .line 462
    const-string v7, "Email/SecurityPolicy"

    const-string v8, "setActivePolicies: none, remove admin"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_0
    iget-object v7, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v7}, Landroid/app/admin/DevicePolicyManager;->removeActiveAdmin(Landroid/content/ComponentName;)V

    .line 510
    :cond_1
    :goto_0
    return-void

    .line 465
    :cond_2
    invoke-virtual {p0}, Lcom/android/email/SecurityPolicy;->isActiveAdmin()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 466
    sget-boolean v8, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v8, :cond_3

    .line 467
    const-string v8, "Email/SecurityPolicy"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setActivePolicies: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    :cond_3
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordQuality()I

    move-result v9

    invoke-virtual {v1, v8, v9}, Landroid/app/admin/DevicePolicyManager;->setPasswordQuality(Landroid/content/ComponentName;I)V

    .line 472
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v9, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMinLength:I

    invoke-virtual {v1, v8, v9}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumLength(Landroid/content/ComponentName;I)V

    .line 474
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v9, v0, Lcom/android/emailcommon/provider/Policy;->mMaxScreenLockTime:I

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    invoke-virtual {v1, v8, v9, v10}, Landroid/app/admin/DevicePolicyManager;->setMaximumTimeToLock(Landroid/content/ComponentName;J)V

    .line 476
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v9, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMaxFails:I

    invoke-virtual {v1, v8, v9}, Landroid/app/admin/DevicePolicyManager;->setMaximumFailedPasswordsForWipe(Landroid/content/ComponentName;I)V

    .line 478
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v8}, Landroid/app/admin/DevicePolicyManager;->getPasswordExpirationTimeout(Landroid/content/ComponentName;)J

    move-result-wide v5

    .line 479
    .local v5, oldExpiration:J
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/Policy;->getDPManagerPasswordExpirationTimeout()J

    move-result-wide v2

    .line 482
    .local v2, newExpiration:J
    cmp-long v8, v5, v2

    if-eqz v8, :cond_4

    .line 483
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v8, v2, v3}, Landroid/app/admin/DevicePolicyManager;->setPasswordExpirationTimeout(Landroid/content/ComponentName;J)V

    .line 486
    :cond_4
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v9, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordHistory:I

    invoke-virtual {v1, v8, v9}, Landroid/app/admin/DevicePolicyManager;->setPasswordHistoryLength(Landroid/content/ComponentName;I)V

    .line 492
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v8, v7}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumSymbols(Landroid/content/ComponentName;I)V

    .line 493
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    invoke-virtual {v1, v8, v7}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNumeric(Landroid/content/ComponentName;I)V

    .line 494
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget v9, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordComplexChars:I

    invoke-virtual {v1, v8, v9}, Landroid/app/admin/DevicePolicyManager;->setPasswordMinimumNonLetter(Landroid/content/ComponentName;I)V

    .line 496
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v9, v0, Lcom/android/emailcommon/provider/Policy;->mDontAllowCamera:Z

    invoke-virtual {v1, v8, v9}, Landroid/app/admin/DevicePolicyManager;->setCameraDisabled(Landroid/content/ComponentName;Z)V

    .line 499
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    iget-boolean v9, v0, Lcom/android/emailcommon/provider/Policy;->mRequireEncryption:Z

    invoke-virtual {v1, v8, v9}, Landroid/app/admin/DevicePolicyManager;->setStorageEncryption(Landroid/content/ComponentName;Z)I

    .line 500
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v9, 0x11

    if-lt v8, v9, :cond_1

    .line 502
    iget v8, v0, Lcom/android/emailcommon/provider/Policy;->mPasswordMode:I

    if-eqz v8, :cond_6

    const/4 v4, 0x1

    .line 504
    .local v4, noKeyguardFeatures:Z
    :goto_1
    iget-object v8, p0, Lcom/android/email/SecurityPolicy;->mAdminName:Landroid/content/ComponentName;

    if-eqz v4, :cond_5

    const v7, 0x7fffffff

    :cond_5
    invoke-virtual {v1, v8, v7}, Landroid/app/admin/DevicePolicyManager;->setKeyguardDisabledFeatures(Landroid/content/ComponentName;I)V

    goto/16 :goto_0

    .end local v4           #noKeyguardFeatures:Z
    :cond_6
    move v4, v7

    .line 502
    goto :goto_1
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/email/SecurityPolicy;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

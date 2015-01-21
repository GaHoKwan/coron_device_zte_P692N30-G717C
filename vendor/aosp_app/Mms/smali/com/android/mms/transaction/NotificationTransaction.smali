.class public Lcom/android/mms/transaction/NotificationTransaction;
.super Lcom/android/mms/transaction/Transaction;
.source "NotificationTransaction.java"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEBUG:Z = false

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "NotificationTransaction"

.field private static sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

.field private static sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;


# instance fields
.field private mContentLocation:Ljava/lang/String;

.field private mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

.field private mUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 7
    .parameter "context"
    .parameter "serviceId"
    .parameter "simId"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 590
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 593
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p5

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 600
    iput-object p5, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 604
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p5}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 606
    iput p3, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    .line 609
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v0, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 611
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v0, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 613
    return-void

    .line 595
    :catch_0
    move-exception v6

    .line 596
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "NotificationTransaction"

    const-string v1, "Failed to save NotificationInd in constructor."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 597
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceId"
    .parameter "simId"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    .line 556
    invoke-direct {p0, p1, p2, p4}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 558
    invoke-static {p5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 561
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 572
    iput p3, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    .line 573
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 576
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 579
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v1, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 581
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v1, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 583
    return-void

    .line 563
    :catch_0
    move-exception v0

    .line 564
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "NotificationTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Lcom/google/android/mms/pdu/NotificationInd;)V
    .locals 7
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "ind"

    .prologue
    .line 141
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 146
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v0

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/mms/transaction/NotificationTransaction;->allowAutoDownload()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-static {p1}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v4

    const/4 v5, 0x0

    move-object v1, p4

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    iput-object p4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    .line 158
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p4}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 162
    const/16 v0, 0xb

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v0, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 164
    const/16 v0, 0xc

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v0, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 166
    return-void

    .line 146
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 149
    :catch_0
    move-exception v6

    .line 150
    .local v6, e:Lcom/google/android/mms/MmsException;
    const-string v0, "NotificationTransaction"

    const-string v1, "Failed to save NotificationInd in constructor."

    invoke-static {v0, v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 151
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;Ljava/lang/String;)V
    .locals 4
    .parameter "context"
    .parameter "serviceId"
    .parameter "connectionSettings"
    .parameter "uriString"

    .prologue
    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/transaction/Transaction;-><init>(Landroid/content/Context;ILcom/android/mms/transaction/TransactionSettings;)V

    .line 109
    invoke-static {p4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 112
    :try_start_0
    invoke-static {p1}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v1

    check-cast v1, Lcom/google/android/mms/pdu/NotificationInd;

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/Transaction;->mId:Ljava/lang/String;

    .line 123
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v2}, Lcom/google/android/mms/pdu/NotificationInd;->getContentLocation()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    .line 126
    invoke-static {p1}, Lcom/android/mms/transaction/RetryScheduler;->getInstance(Landroid/content/Context;)Lcom/android/mms/transaction/RetryScheduler;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/mms/transaction/Observable;->attach(Lcom/android/mms/transaction/Observer;)V

    .line 129
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsFailedNotify;

    sput-object v1, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    .line 131
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sput-object v1, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    .line 133
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v1, "NotificationTransaction"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to load NotificationInd from: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 116
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/mms/transaction/NotificationTransaction;Lcom/android/mms/util/DownloadManager;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lcom/android/mms/transaction/NotificationTransaction;->notifyWithoutAutoDownload(Lcom/android/mms/util/DownloadManager;)V

    return-void
.end method

.method private notifyWithoutAutoDownload(Lcom/android/mms/util/DownloadManager;)V
    .locals 6
    .parameter "downloadManager"

    .prologue
    .line 207
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v4, 0x80

    iget v5, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {p1, v3, v4, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;II)V

    .line 219
    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v3, v4}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v1

    .line 220
    .local v1, threadId:J
    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 222
    iget-object v3, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 226
    invoke-static {}, Lcom/android/mms/ui/NotificationPreferenceActivity;->isPopupNotificationEnable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 229
    .local v0, dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    iget-object v3, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-interface {v0, v3}, Lcom/mediatek/mms/ext/IMmsDialogNotify;->notifyNewSmsDialog(Landroid/net/Uri;)V

    .line 232
    .end local v0           #dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    :cond_0
    return-void
.end method

.method private sendNotifyRespInd(I)V
    .locals 7
    .parameter "status"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 507
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction: sendNotifyRespInd()"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    new-instance v1, Lcom/google/android/mms/pdu/NotifyRespInd;

    const/16 v4, 0x12

    iget-object v5, p0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v5}, Lcom/google/android/mms/pdu/NotificationInd;->getTransactionId()[B

    move-result-object v5

    invoke-direct {v1, v4, v5, p1}, Lcom/google/android/mms/pdu/NotifyRespInd;-><init>(I[BI)V

    .line 515
    .local v1, notifyRespInd:Lcom/google/android/mms/pdu/NotifyRespInd;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getDeliveryReportAllowed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 517
    iget-object v4, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 518
    .local v2, prefs:Landroid/content/SharedPreferences;
    const/4 v3, 0x1

    .line 520
    .local v3, reportAllowed:Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "pref_key_mms_enable_to_send_delivery_reports"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 527
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "reportAllowed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 530
    if-eqz v3, :cond_1

    const/16 v4, 0x80

    :goto_0
    :try_start_0
    invoke-virtual {v1, v4}, Lcom/google/android/mms/pdu/NotifyRespInd;->setReportAllowed(I)V
    :try_end_0
    .catch Lcom/google/android/mms/InvalidHeaderValueException; {:try_start_0 .. :try_end_0} :catch_0

    .line 539
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #reportAllowed:Z
    :cond_0
    :goto_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getNotifyWapMMSC()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 540
    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {p0, v4, v5}, Lcom/android/mms/transaction/Transaction;->sendPdu([BLjava/lang/String;)[B

    .line 544
    :goto_2
    return-void

    .line 530
    .restart local v2       #prefs:Landroid/content/SharedPreferences;
    .restart local v3       #reportAllowed:Z
    :cond_1
    const/16 v4, 0x81

    goto :goto_0

    .line 531
    :catch_0
    move-exception v0

    .line 533
    .local v0, ihve:Lcom/google/android/mms/InvalidHeaderValueException;
    const-string v4, "Mms/Txn"

    const-string v5, "notifyRespInd.setReportAllowed Failed !!"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 542
    .end local v0           #ihve:Lcom/google/android/mms/InvalidHeaderValueException;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v3           #reportAllowed:Z
    :cond_2
    new-instance v4, Lcom/google/android/mms/pdu/PduComposer;

    iget-object v5, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/google/android/mms/pdu/PduComposer;-><init>(Landroid/content/Context;Lcom/google/android/mms/pdu/GenericPdu;)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduComposer;->make()[B

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/mms/transaction/Transaction;->sendPdu([B)[B

    goto :goto_2
.end method


# virtual methods
.method public allowAutoDownload()Z
    .locals 10

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 187
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v3

    .line 188
    .local v3, downloadManager:Lcom/android/mms/util/DownloadManager;
    const/4 v0, 0x0

    .line 189
    .local v0, autoDownload:Z
    const/4 v1, 0x0

    .line 191
    .local v1, dataSuspended:Z
    iget v7, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v3, v7}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v0

    .line 192
    invoke-static {}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getDefault()Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    move-result-object v4

    .line 193
    .local v4, teleManager:Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;
    iget-object v7, p0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    iget v8, p0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    int-to-long v8, v8

    invoke-static {v7, v8, v9}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v7

    invoke-virtual {v4, v7}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getDataState(I)I

    move-result v2

    .line 194
    .local v2, datastate:I
    const/4 v7, 0x3

    if-ne v2, v7, :cond_0

    move v1, v5

    .line 200
    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    :goto_1
    return v5

    :cond_0
    move v1, v6

    .line 194
    goto :goto_0

    :cond_1
    move v5, v6

    .line 200
    goto :goto_1
.end method

.method public getNotTrxnUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 618
    iget-object v0, p0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 548
    const/4 v0, 0x0

    return v0
.end method

.method public process()V
    .locals 2

    .prologue
    .line 174
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "NotificationTransaction"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 175
    return-void
.end method

.method public processNotification()V
    .locals 1

    .prologue
    .line 178
    new-instance v0, Lcom/android/mms/transaction/NotificationTransaction$1;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/NotificationTransaction$1;-><init>(Lcom/android/mms/transaction/NotificationTransaction;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 183
    return-void
.end method

.method public run()V
    .locals 29

    .prologue
    .line 236
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction: run()"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->allowAutoDownload()Z

    move-result v10

    .line 259
    .local v10, autoDownload:Z
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v13

    .line 268
    .local v13, downloadManager:Lcom/android/mms/util/DownloadManager;
    const/16 v22, 0x83

    .line 271
    .local v22, status:I
    :try_start_0
    new-instance v11, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v11, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 272
    .local v11, currentDate:Ljava/util/Date;
    new-instance v15, Ljava/util/Date;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mNotificationInd:Lcom/google/android/mms/pdu/NotificationInd;

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/NotificationInd;->getExpiry()J

    move-result-wide v4

    const-wide/16 v8, 0x3e8

    mul-long/2addr v4, v8

    invoke-direct {v15, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 273
    .local v15, expiryDate:Ljava/util/Date;
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expiry time="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v15}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\t current="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v11}, Ljava/util/Date;->toLocaleString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    if-nez v10, :cond_2

    .line 279
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Not autoDownload! autoDonwload="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 281
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/mms/transaction/NotificationTransaction;->notifyWithoutAutoDownload(Lcom/android/mms/util/DownloadManager;)V

    .line 282
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 483
    const/16 v16, 0x0

    .line 485
    .local v16, isCheckAutoDownload:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v4}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v16

    .line 489
    if-nez v16, :cond_0

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 494
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 497
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .end local v11           #currentDate:Ljava/util/Date;
    .end local v15           #expiryDate:Ljava/util/Date;
    :cond_1
    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 502
    return-void

    .line 289
    .end local v16           #isCheckAutoDownload:Z
    .restart local v11       #currentDate:Ljava/util/Date;
    .restart local v15       #expiryDate:Ljava/util/Date;
    :cond_2
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v5, 0x81

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v4, v5, v8}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;II)V

    .line 303
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v4

    if-eqz v4, :cond_5

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    if-eqz v4, :cond_5

    .line 304
    const-string v4, "Mms/Txn"

    const-string v5, "***Canceling download in processing!(NotificationTransaction)"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 306
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 308
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 309
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    const/4 v5, 0x5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 311
    :cond_3
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/mms/transaction/Transaction;->mIsCancelling:Z

    .line 312
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/NotificationTransaction;->getNotTrxnUri()Landroid/net/Uri;

    move-result-object v27

    .line 313
    .local v27, trxnUri:Landroid/net/Uri;
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    sget-object v5, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    const/4 v5, 0x3

    move-object/from16 v0, v27

    invoke-interface {v4, v0, v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    .line 314
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    const/16 v5, 0x80

    move-object/from16 v0, v27

    invoke-virtual {v4, v0, v5}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 483
    const/16 v16, 0x0

    .line 485
    .restart local v16       #isCheckAutoDownload:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v4}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v16

    .line 489
    if-nez v16, :cond_4

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 494
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 497
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 322
    .end local v16           #isCheckAutoDownload:Z
    .end local v27           #trxnUri:Landroid/net/Uri;
    :cond_5
    :try_start_2
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Content-Location: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 323
    const/16 v21, 0x0

    .line 328
    .local v21, retrieveConfData:[B
    :try_start_3
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction: before getpdu"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mContentLocation:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/mms/transaction/Transaction;->getPdu(Ljava/lang/String;)[B

    move-result-object v21

    .line 331
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction: after getpdu"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    .line 351
    :goto_1
    if-eqz v21, :cond_14

    .line 352
    :try_start_4
    new-instance v4, Lcom/google/android/mms/pdu/PduParser;

    move-object/from16 v0, v21

    invoke-direct {v4, v0}, Lcom/google/android/mms/pdu/PduParser;-><init>([B)V

    invoke-virtual {v4}, Lcom/google/android/mms/pdu/PduParser;->parse()Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v3

    .line 353
    .local v3, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v4

    const/16 v5, 0x84

    if-eq v4, v5, :cond_11

    .line 354
    :cond_6
    const-string v5, "NotificationTransaction"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid M-RETRIEVE.CONF PDU. "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-eqz v3, :cond_10

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "message type: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/android/mms/pdu/GenericPdu;->getMessageType()I

    move-result v9

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 357
    const/16 v22, 0x84

    .line 422
    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    :goto_3
    packed-switch v22, :pswitch_data_0

    .line 435
    :cond_7
    :goto_4
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_8

    .line 437
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->getThreadId(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v25

    .line 440
    .local v25, threadId:J
    const/16 v17, -0x1

    .line 442
    .local v17, mSlotId:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    int-to-long v8, v5

    invoke-static {v4, v8, v9}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v17

    .line 444
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "zhoukai--mSimId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "--mSlotId="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    invoke-static/range {v17 .. v17}, Lcom/android/mms/transaction/MessagingNotification;->setSlotId(I)V

    .line 449
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    move-wide/from16 v0, v25

    invoke-static {v4, v0, v1, v5}, Lcom/android/mms/transaction/MessagingNotification;->blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 453
    invoke-static {}, Lcom/android/mms/ui/NotificationPreferenceActivity;->isPopupNotificationEnable()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 454
    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 456
    .local v12, dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-interface {v12, v4}, Lcom/mediatek/mms/ext/IMmsDialogNotify;->notifyNewSmsDialog(Landroid/net/Uri;)V

    .line 464
    .end local v12           #dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    .end local v17           #mSlotId:I
    .end local v25           #threadId:J
    :cond_8
    const/16 v4, 0x84

    move/from16 v0, v22

    if-ne v0, v4, :cond_9

    .line 465
    const/16 v22, 0x83

    .line 468
    :cond_9
    move-object/from16 v0, p0

    move/from16 v1, v22

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationTransaction;->sendNotifyRespInd(I)V

    .line 471
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v8}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V

    .line 472
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 483
    const/16 v16, 0x0

    .line 485
    .restart local v16       #isCheckAutoDownload:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v4}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v16

    .line 489
    if-nez v16, :cond_a

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 494
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 497
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 332
    .end local v16           #isCheckAutoDownload:Z
    :catch_0
    move-exception v14

    .line 334
    .local v14, e:Ljava/io/IOException;
    :try_start_5
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->isEnableCancelDownload()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 335
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-interface {v4, v5}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->getStateExt(Landroid/net/Uri;)I

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_d

    .line 336
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->getFailedNotificationEnabled()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 337
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sMmsFailedNotifyPlugin:Lcom/mediatek/mms/ext/IMmsFailedNotify;

    const/4 v5, 0x5

    const/4 v8, 0x0

    invoke-interface {v4, v5, v8}, Lcom/mediatek/mms/ext/IMmsFailedNotify;->popupToast(ILjava/lang/String;)V

    .line 339
    :cond_b
    sget-object v4, Lcom/android/mms/transaction/NotificationTransaction;->sCancelDownloadPlugin:Lcom/mediatek/mms/ext/IMmsCancelDownload;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v8, 0x3

    invoke-interface {v4, v5, v8}, Lcom/mediatek/mms/ext/IMmsCancelDownload;->markStateExt(Landroid/net/Uri;I)V

    .line 341
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 342
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 343
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/16 v8, 0x80

    invoke-virtual {v4, v5, v8}, Lcom/android/mms/util/DownloadManager;->markState(Landroid/net/Uri;I)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1

    .line 481
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 483
    const/16 v16, 0x0

    .line 485
    .restart local v16       #isCheckAutoDownload:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v4}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v16

    .line 489
    if-nez v16, :cond_c

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 494
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 497
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 348
    .end local v16           #isCheckAutoDownload:Z
    :cond_d
    :try_start_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto/16 :goto_1

    .line 473
    .end local v11           #currentDate:Ljava/util/Date;
    .end local v14           #e:Ljava/io/IOException;
    .end local v15           #expiryDate:Ljava/util/Date;
    .end local v21           #retrieveConfData:[B
    :catch_1
    move-exception v24

    .line 474
    .local v24, t:Ljava/lang/Throwable;
    :try_start_7
    const-string v4, "NotificationTransaction"

    invoke-static/range {v24 .. v24}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    if-eqz v4, :cond_e

    .line 477
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5, v8}, Lcom/android/mms/util/Recycler$MmsRecycler;->deleteOldMessagesInSameThreadAsMessage(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 481
    :cond_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 483
    const/16 v16, 0x0

    .line 485
    .restart local v16       #isCheckAutoDownload:Z
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v4}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v16

    .line 489
    if-nez v16, :cond_f

    .line 492
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 494
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 495
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 497
    const-string v4, "Mms/Txn"

    const-string v5, "NotificationTransaction failed."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 354
    .end local v16           #isCheckAutoDownload:Z
    .end local v24           #t:Ljava/lang/Throwable;
    .restart local v3       #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    .restart local v11       #currentDate:Ljava/util/Date;
    .restart local v15       #expiryDate:Ljava/util/Date;
    .restart local v21       #retrieveConfData:[B
    :cond_10
    :try_start_8
    const-string v4, "null pdu"

    goto/16 :goto_2

    .line 360
    :cond_11
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 362
    .local v2, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v4, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v6

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;

    move-result-object v6

    .line 365
    .local v6, uri:Landroid/net/Uri;
    check-cast v3, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v3           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual {v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getSubject()Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v23

    .line 366
    .local v23, subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    const-string v5, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " NotificationTransaction. subject is: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    if-nez v23, :cond_13

    const-string v4, ""

    :goto_5
    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PDU Saved, Uri="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\nDelete Notify Ind, Uri="

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 370
    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v18, v0

    .line 371
    .local v18, messageSize:I
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 372
    .local v7, values:Landroid/content/ContentValues;
    const-string v4, "m_size"

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 374
    const-string v4, "sim_id"

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v7, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 384
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 398
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v20

    .line 399
    .local v20, notifId:Ljava/lang/String;
    invoke-virtual {v6}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v19

    .line 400
    .local v19, msgId:Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 401
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    const/4 v9, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-static {v4, v5, v8, v9, v0}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 403
    const-string v4, "NotificationTransaction"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "NotificationTransaction received new mms message: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v8, Landroid/provider/Telephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    const/4 v9, 0x0

    const/16 v28, 0x0

    move-object/from16 v0, v28

    invoke-static {v4, v5, v8, v9, v0}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 410
    :cond_12
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    .line 411
    const/16 v22, 0x81

    goto/16 :goto_3

    .line 366
    .end local v7           #values:Landroid/content/ContentValues;
    .end local v18           #messageSize:I
    .end local v19           #msgId:Ljava/lang/String;
    .end local v20           #notifId:Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v23 .. v23}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_5

    .line 415
    .end local v2           #p:Lcom/google/android/mms/pdu/PduPersister;
    .end local v6           #uri:Landroid/net/Uri;
    .end local v23           #subject:Lcom/google/android/mms/pdu/EncodedStringValue;
    :cond_14
    const-string v4, "Mms/Txn"

    const-string v5, "retrieveConfData is null"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 417
    const/16 v22, 0x84

    goto/16 :goto_3

    .line 424
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_1

    goto/16 :goto_4

    .line 481
    .end local v11           #currentDate:Ljava/util/Date;
    .end local v15           #expiryDate:Ljava/util/Date;
    .end local v21           #retrieveConfData:[B
    :catchall_0
    move-exception v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/mms/transaction/NotificationTransaction;->mUri:Landroid/net/Uri;

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setContentUri(Landroid/net/Uri;)V

    .line 483
    const/16 v16, 0x0

    .line 485
    .restart local v16       #isCheckAutoDownload:Z
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/mms/transaction/Transaction;->mSimId:I

    invoke-virtual {v13, v5}, Lcom/android/mms/util/DownloadManager;->isAuto(I)Z

    move-result v16

    .line 489
    if-nez v16, :cond_15

    .line 492
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x1

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 494
    :cond_15
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v5}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v5

    const/4 v8, 0x1

    if-eq v5, v8, :cond_16

    .line 495
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v8, 0x2

    invoke-virtual {v5, v8}, Lcom/android/mms/transaction/TransactionState;->setState(I)V

    .line 497
    const-string v5, "Mms/Txn"

    const-string v8, "NotificationTransaction failed."

    invoke-static {v5, v8}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    :cond_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/transaction/Observable;->notifyObservers()V

    .line 481
    throw v4

    .line 428
    .end local v16           #isCheckAutoDownload:Z
    .restart local v11       #currentDate:Ljava/util/Date;
    .restart local v15       #expiryDate:Ljava/util/Date;
    .restart local v21       #retrieveConfData:[B
    :pswitch_2
    :try_start_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    invoke-virtual {v4}, Lcom/android/mms/transaction/TransactionState;->getState()I

    move-result v4

    if-nez v4, :cond_7

    .line 429
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/transaction/Transaction;->mTransactionState:Lcom/android/mms/transaction/TransactionState;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/mms/transaction/TransactionState;->setState(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_1

    goto/16 :goto_4

    .line 422
    nop

    :pswitch_data_0
    .packed-switch 0x81
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.class public Lcom/android/email/NotificationController;
.super Ljava/lang/Object;
.source "NotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/NotificationController$NotificationThread;,
        Lcom/android/email/NotificationController$AccountContentObserver;,
        Lcom/android/email/NotificationController$MessageContentObserver;,
        Lcom/android/email/NotificationController$UnreadMessagesCountObserver;
    }
.end annotation


# static fields
.field private static final MESSAGE_SELECTION:Ljava/lang/String; = "mailboxKey=? AND _id>? AND flagRead=0 AND flagLoaded IN (2,1,4)"

.field private static final MIN_SOUND_INTERVAL_MS:J = 0x3a98L

.field private static final NOTIFICATION_ID_ATTACHMENT_WARNING:I = 0x3

.field private static final NOTIFICATION_ID_BASE_LOGIN_WARNING:I = 0x20000000

.field private static final NOTIFICATION_ID_BASE_NEW_MESSAGES:I = 0x10000000

.field private static final NOTIFICATION_ID_BASE_SEND_WARNING:I = 0x30000000

.field private static final NOTIFICATION_ID_BASE_VIP_MESSAGES:I = 0x40000000

.field private static final NOTIFICATION_ID_EXCHANGE_CALENDAR_ADDED:I = 0x2

.field private static final NOTIFICATION_ID_PASSWORD_EXPIRED:I = 0x5

.field private static final NOTIFICATION_ID_PASSWORD_EXPIRING:I = 0x4

.field private static final NOTIFICATION_ID_SECURITY_NEEDED:I = 0x1000

.field public static final SEND_COMPLETE:I = 0x2

.field public static final SEND_FAILED:I = 0x1

.field public static final SEND_MAIL:I = 0x0

.field private static final TAG:Ljava/lang/String; = "NotificationController"

.field private static sInstance:Lcom/android/email/NotificationController;

.field private static sNotificationHandler:Landroid/os/Handler;

.field private static sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;


# instance fields
.field private mAccountObserver:Landroid/database/ContentObserver;

.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mClock:Lcom/android/email/Clock;

.field private mContext:Landroid/content/Context;

.field private final mGenericMultipleSenderIcon:Landroid/graphics/Bitmap;

.field private final mGenericSenderIcon:Landroid/graphics/Bitmap;

.field private mLastMessageNotifyTime:J

.field private mLastVipMessageNotifyTime:J

.field private final mNeedNotifyVIPMails:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Long;",
            "Landroid/database/ContentObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mSecurityHoldAccountIdsSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSuspendAccountId:J

.field private mUnreadCountObserver:Landroid/database/ContentObserver;

.field private mVipNotifiedMessageCount:I

.field private mVipNotifiedMessageId:J


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/email/Clock;)V
    .locals 2
    .parameter "context"
    .parameter "clock"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    .line 150
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/email/NotificationController;->mLastVipMessageNotifyTime:J

    .line 156
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;

    .line 161
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    .line 162
    const-string v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    .line 164
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/email/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    .line 165
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020026

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    .line 167
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f02004a

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/NotificationController;->mGenericMultipleSenderIcon:Landroid/graphics/Bitmap;

    .line 169
    iput-object p2, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    .line 170
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    .line 171
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/NotificationController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/NotificationController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/email/NotificationController;->unregisterUnreadCountObserver()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/NotificationController;)Landroid/app/NotificationManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/android/email/NotificationController;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/NotificationController;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/android/email/NotificationController;Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/NotificationController;->filterVipMessages(Landroid/database/Cursor;J)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/NotificationController;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/email/NotificationController;)Ljava/util/Set;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/email/NotificationController;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/email/NotificationController;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->unregisterMessageNotification(J)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/NotificationController;)Landroid/database/ContentObserver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/NotificationController;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/android/email/NotificationController;->mAccountObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$400()Lcom/android/email/NotificationController$NotificationThread;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/email/NotificationController$NotificationThread;)Lcom/android/email/NotificationController$NotificationThread;
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    sput-object p0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/email/NotificationController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/android/email/NotificationController;->registerUnreadCountObserver()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/email/NotificationController;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->registerMessageNotification(J)V

    return-void
.end method

.method static synthetic access$700()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/NotificationController;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/NotificationController;J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I

    move-result v0

    return v0
.end method

.method private createBaseAccountNotificationBuilder(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification$Builder;
    .locals 9
    .parameter "account"
    .parameter "ticker"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"
    .parameter "largeIcon"
    .parameter "number"
    .parameter "enableAudio"
    .parameter "ongoing"

    .prologue
    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, pending:Landroid/app/PendingIntent;
    if-eqz p5, :cond_0

    .line 222
    iget-object v5, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/high16 v7, 0x800

    invoke-static {v5, v6, p5, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 229
    :cond_0
    iget-object v5, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/email/extension/OPExtensionFactory;->getProviderExtension(Landroid/content/Context;)Lcom/mediatek/email/ext/IServerProviderPlugin;

    move-result-object v2

    .line 230
    .local v2, extension:Lcom/mediatek/email/ext/IServerProviderPlugin;
    invoke-interface {v2}, Lcom/mediatek/email/ext/IServerProviderPlugin;->isSupportProviderList()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/mediatek/email/extension/AccountSetupChooseESP;->isSpecialESPAccount(Lcom/mediatek/email/ext/IServerProviderPlugin;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 232
    const-string v5, "NotificationController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notification use Special ICON, EmailAddress: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const v4, 0x7f02001a

    .line 241
    .local v4, smallIcon:I
    :goto_0
    new-instance v5, Landroid/app/Notification$Builder;

    iget-object v6, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, p3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    move-result-object v6

    if-nez p7, :cond_3

    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setNumber(I)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v6}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5, p2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 252
    .local v1, builder:Landroid/app/Notification$Builder;
    if-eqz p8, :cond_1

    .line 253
    const-string v5, "Email"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Notification] createAccountNotification for account: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    invoke-virtual {p0, v1, p1}, Lcom/android/email/NotificationController;->setupSoundAndVibration(Landroid/app/Notification$Builder;Lcom/android/emailcommon/provider/Account;)V

    .line 258
    :cond_1
    return-object v1

    .line 236
    .end local v1           #builder:Landroid/app/Notification$Builder;
    .end local v4           #smallIcon:I
    :cond_2
    const v4, 0x7f020079

    .restart local v4       #smallIcon:I
    goto :goto_0

    .line 241
    :cond_3
    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto :goto_1
.end method

.method private createNotification(Lcom/android/emailcommon/provider/Account;Landroid/database/Cursor;ZLcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification;
    .locals 21
    .parameter "account"
    .parameter "messageCursor"
    .parameter "multipleUnseen"
    .parameter "message"
    .parameter "ticker"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"
    .parameter "largeIcon"
    .parameter "number"
    .parameter "enableAudio"
    .parameter "ongoing"

    .prologue
    .line 594
    const/4 v11, 0x0

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move-object/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    move/from16 v10, p11

    invoke-direct/range {v2 .. v11}, Lcom/android/email/NotificationController;->createBaseAccountNotificationBuilder(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification$Builder;

    move-result-object v13

    .line 597
    .local v13, builder:Landroid/app/Notification$Builder;
    invoke-static {}, Lcom/android/email/NotificationController;->isRunningJellybeanOrLater()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 599
    if-eqz p3, :cond_4

    .line 600
    if-eqz p2, :cond_3

    .line 601
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b0002

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v17

    .line 604
    .local v17, maxNumDigestItems:I
    move-object/from16 v0, p7

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 606
    new-instance v14, Landroid/app/Notification$InboxStyle;

    invoke-direct {v14, v13}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 608
    .local v14, digest:Landroid/app/Notification$InboxStyle;
    move-object/from16 v0, p6

    invoke-virtual {v14, v0}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 610
    const/16 v20, 0x0

    .line 614
    .local v20, numDigestItems:I
    :cond_0
    const/4 v2, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 618
    .local v18, messageId:J
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v18

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v16

    .line 620
    .local v16, digestMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v16, :cond_1

    .line 621
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v0, v16

    invoke-static {v2, v0}, Lcom/android/email/NotificationController;->getSingleMessageInboxLine(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Ljava/lang/CharSequence;

    move-result-object v15

    .line 623
    .local v15, digestLine:Ljava/lang/CharSequence;
    invoke-virtual {v14, v15}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 624
    add-int/lit8 v20, v20, 0x1

    .line 626
    .end local v15           #digestLine:Ljava/lang/CharSequence;
    :cond_1
    move/from16 v0, v20

    move/from16 v1, v17

    if-gt v0, v1, :cond_2

    invoke-interface/range {p2 .. p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 631
    :cond_2
    const/4 v2, 0x0

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 645
    .end local v14           #digest:Landroid/app/Notification$InboxStyle;
    .end local v16           #digestMessage:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v17           #maxNumDigestItems:I
    .end local v18           #messageId:J
    .end local v20           #numDigestItems:I
    :cond_3
    :goto_0
    invoke-virtual {v13}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    return-object v2

    .line 635
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/email/NotificationController;->getSingleMessageLittleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 639
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v13, v2}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 641
    new-instance v12, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v12, v13}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 642
    .local v12, bigText:Landroid/app/Notification$BigTextStyle;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p4

    invoke-static {v2, v0}, Lcom/android/email/NotificationController;->getSingleMessageBigText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v12, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    goto :goto_0
.end method

.method private static declared-synchronized ensureHandlerExists()V
    .locals 3

    .prologue
    .line 384
    const-class v1, Lcom/android/email/NotificationController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Lcom/android/email/NotificationController$NotificationThread;

    invoke-direct {v0}, Lcom/android/email/NotificationController$NotificationThread;-><init>()V

    sput-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    .line 386
    new-instance v0, Landroid/os/Handler;

    sget-object v2, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    invoke-virtual {v2}, Lcom/android/email/NotificationController$NotificationThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 388
    :cond_0
    monitor-exit v1

    return-void

    .line 384
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private filterVipMessages(Landroid/database/Cursor;J)Landroid/database/Cursor;
    .locals 7
    .parameter "newMessagesCursor"
    .parameter "accountId"

    .prologue
    .line 1600
    new-instance v3, Landroid/database/MatrixCursor;

    sget-object v5, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    invoke-direct {v3, v5}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1601
    .local v3, nonVipCurosr:Landroid/database/MatrixCursor;
    sget-object v5, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    iget-object v5, v5, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1602
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1603
    .local v4, vipMails:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v5, -0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 1604
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1605
    const/4 v5, 0x0

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1606
    .local v1, messageId:J
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1607
    .local v0, fromList:Ljava/lang/String;
    invoke-static {v0}, Lcom/mediatek/email/emailvip/VipMemberCache;->isVIP(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1608
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1610
    :cond_0
    invoke-virtual {v3}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v5

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_0

    .line 1613
    .end local v0           #fromList:Ljava/lang/String;
    .end local v1           #messageId:J
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 1614
    sget-object v5, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    iget-object v5, v5, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1616
    :cond_2
    return-object v3
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/android/email/NotificationController;
    .locals 3
    .parameter "context"

    .prologue
    .line 182
    const-class v1, Lcom/android/email/NotificationController;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lcom/android/email/NotificationController;

    sget-object v2, Lcom/android/email/Clock;->INSTANCE:Lcom/android/email/Clock;

    invoke-direct {v0, p0, v2}, Lcom/android/email/NotificationController;-><init>(Landroid/content/Context;Lcom/android/email/Clock;)V

    sput-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    .line 185
    :cond_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 182
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getLoginFailedNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 827
    const/high16 v0, 0x2000

    long-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getNewMessageNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 283
    const-wide/32 v0, 0x10000000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private getNewSecurityNeededNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 290
    const-wide/16 v0, 0x1000

    add-long/2addr v0, p1

    long-to-int v0, v0

    return v0
.end method

.method private getNewVipMessageTitle(Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 5
    .parameter "sender"
    .parameter "unseenCount"

    .prologue
    const/4 v3, 0x1

    .line 1588
    if-le p2, v3, :cond_0

    .line 1589
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f080066

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1595
    .local v0, title:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 1593
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method private getSendFailedNotificationId(J)I
    .locals 2
    .parameter "accountId"

    .prologue
    .line 835
    const/high16 v0, 0x3000

    long-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method private getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;
    .locals 7
    .parameter "message"

    .prologue
    const/4 v3, 0x0

    .line 504
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/emailcommon/mail/Address;->unpackFirst(Ljava/lang/String;)Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 505
    .local v5, sender:Lcom/android/emailcommon/mail/Address;
    if-nez v5, :cond_1

    .line 527
    :cond_0
    :goto_0
    return-object v3

    .line 508
    :cond_1
    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, email:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 512
    iget-object v6, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v6, v0}, Lcom/android/email/activity/ContactStatusLoader;->getContactInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/email/activity/ContactStatusLoader$Result;

    move-result-object v6

    iget-object v3, v6, Lcom/android/email/activity/ContactStatusLoader$Result;->mPhoto:Landroid/graphics/Bitmap;

    .line 514
    .local v3, photo:Landroid/graphics/Bitmap;
    if-eqz v3, :cond_0

    .line 515
    iget-object v6, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 516
    .local v4, res:Landroid/content/res/Resources;
    const v6, 0x1050006

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 518
    .local v1, idealIconHeight:I
    const v6, 0x1050005

    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 521
    .local v2, idealIconWidth:I
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    if-ge v6, v1, :cond_0

    .line 523
    const/4 v6, 0x1

    invoke-static {v3, v2, v1, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    goto :goto_0
.end method

.method private static getSingleMessageBigText(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 727
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    const v10, 0x7f0c004b

    invoke-direct {v3, p0, v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 730
    .local v3, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 731
    .local v6, subject:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 733
    .local v4, snippet:Ljava/lang/String;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    move-object v5, v4

    .line 759
    :goto_0
    return-object v5

    .line 737
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 739
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 740
    .local v5, spannableString:Landroid/text/SpannableString;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v5, v3, v9, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 744
    .end local v5           #spannableString:Landroid/text/SpannableString;
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f080209

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 749
    .local v2, notificationBigTextFormat:Ljava/lang/String;
    const-string v10, "%2$s"

    invoke-virtual {v2, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const-string v11, "%1$s"

    invoke-virtual {v2, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v11

    if-le v10, v11, :cond_2

    move v1, v8

    .line 751
    .local v1, isSubjectFirst:Z
    :goto_1
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v6, v10, v9

    aput-object v4, v10, v8

    invoke-static {v2, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 752
    .local v0, bigText:Ljava/lang/String;
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 754
    .restart local v5       #spannableString:Landroid/text/SpannableString;
    if-eqz v1, :cond_3

    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 756
    .local v7, subjectOffset:I
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {v5, v3, v7, v8, v9}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .end local v0           #bigText:Ljava/lang/String;
    .end local v1           #isSubjectFirst:Z
    .end local v5           #spannableString:Landroid/text/SpannableString;
    .end local v7           #subjectOffset:I
    :cond_2
    move v1, v9

    .line 749
    goto :goto_1

    .line 754
    .restart local v0       #bigText:Ljava/lang/String;
    .restart local v1       #isSubjectFirst:Z
    .restart local v5       #spannableString:Landroid/text/SpannableString;
    :cond_3
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_2
.end method

.method private static getSingleMessageInboxLine(Landroid/content/Context;Lcom/android/emailcommon/provider/EmailContent$Message;)Ljava/lang/CharSequence;
    .locals 16
    .parameter "context"
    .parameter "message"

    .prologue
    .line 655
    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 656
    .local v11, subject:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 657
    .local v9, snippet:Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v13

    invoke-static {v13}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v8

    .line 659
    .local v8, senders:Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_0

    move-object v12, v11

    .line 661
    .local v12, subjectSnippet:Ljava/lang/String;
    :goto_0
    new-instance v4, Landroid/text/style/TextAppearanceSpan;

    const v13, 0x7f0c004b

    move-object/from16 v0, p0

    invoke-direct {v4, v0, v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 664
    .local v4, notificationPrimarySpan:Landroid/text/style/TextAppearanceSpan;
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_1

    move-object v10, v12

    .line 696
    :goto_1
    return-object v10

    .end local v4           #notificationPrimarySpan:Landroid/text/style/TextAppearanceSpan;
    .end local v12           #subjectSnippet:Ljava/lang/String;
    :cond_0
    move-object v12, v9

    .line 659
    goto :goto_0

    .line 668
    .restart local v4       #notificationPrimarySpan:Landroid/text/style/TextAppearanceSpan;
    .restart local v12       #subjectSnippet:Ljava/lang/String;
    :cond_1
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 670
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v8}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 671
    .local v10, spannableString:Landroid/text/SpannableString;
    const/4 v13, 0x0

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v14

    const/4 v15, 0x0

    invoke-virtual {v10, v4, v13, v14, v15}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 675
    .end local v10           #spannableString:Landroid/text/SpannableString;
    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f080208

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 677
    .local v1, formatString:Ljava/lang/String;
    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const v13, 0x7f0c004c

    move-object/from16 v0, p0

    invoke-direct {v5, v0, v13}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 680
    .local v5, notificationSecondarySpan:Landroid/text/style/TextAppearanceSpan;
    const/4 v13, 0x2

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v8, v13, v14

    const/4 v14, 0x1

    aput-object v12, v13, v14

    invoke-static {v1, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 682
    .local v2, instantiatedString:Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 684
    .restart local v10       #spannableString:Landroid/text/SpannableString;
    const-string v13, "%2$s"

    invoke-virtual {v1, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v13

    const-string v14, "%1$s"

    invoke-virtual {v1, v14}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    if-ge v13, v14, :cond_3

    const/4 v3, 0x1

    .line 686
    .local v3, isOrderReversed:Z
    :goto_2
    if-eqz v3, :cond_4

    invoke-virtual {v2, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    .line 689
    .local v6, primaryOffset:I
    :goto_3
    if-eqz v3, :cond_5

    invoke-virtual {v2, v12}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    .line 692
    .local v7, secondaryOffset:I
    :goto_4
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v6

    const/4 v14, 0x0

    invoke-virtual {v10, v4, v6, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 694
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v7

    const/4 v14, 0x0

    invoke-virtual {v10, v5, v7, v13, v14}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 684
    .end local v3           #isOrderReversed:Z
    .end local v6           #primaryOffset:I
    .end local v7           #secondaryOffset:I
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 686
    .restart local v3       #isOrderReversed:Z
    :cond_4
    invoke-virtual {v2, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    goto :goto_3

    .line 689
    .restart local v6       #primaryOffset:I
    :cond_5
    invoke-virtual {v2, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    goto :goto_4
.end method

.method private static getSingleMessageLittleText(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4
    .parameter "context"
    .parameter "subject"

    .prologue
    const/4 v3, 0x0

    .line 707
    if-nez p1, :cond_0

    .line 708
    const/4 v1, 0x0

    .line 716
    :goto_0
    return-object v1

    .line 710
    :cond_0
    new-instance v0, Landroid/text/style/TextAppearanceSpan;

    const v2, 0x7f0c004b

    invoke-direct {v0, p0, v2}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 713
    .local v0, notificationSubjectSpan:Landroid/text/style/TextAppearanceSpan;
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 714
    .local v1, spannableString:Landroid/text/SpannableString;
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v0, v3, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0
.end method

.method private getVipMessageCursor()Landroid/database/Cursor;
    .locals 8

    .prologue
    .line 1478
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1479
    .local v3, idList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    iget-object v6, p0, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 1480
    .local v4, msgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1482
    .end local v4           #msgIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v6

    invoke-static {v3, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1483
    new-instance v5, Landroid/database/MatrixCursor;

    sget-object v6, Lcom/android/emailcommon/provider/EmailContent$Message;->ID_COLUMN_PROJECTION:[Ljava/lang/String;

    invoke-direct {v5, v6}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 1484
    .local v5, vipMessageCursor:Landroid/database/MatrixCursor;
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1485
    .local v1, id:J
    invoke-virtual {v5}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v6

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    goto :goto_1

    .line 1487
    .end local v1           #id:J
    :cond_1
    return-object v5
.end method

.method private static isRunningJellybeanOrLater()Z
    .locals 2

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private needsOngoingNotification(I)Z
    .locals 1
    .parameter "notificationId"

    .prologue
    .line 196
    and-int/lit16 v0, p1, 0x1000

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notifyEmailUnreadNumber(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "unreadNumber"

    .prologue
    .line 1293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1295
    .local v0, i:Landroid/content/Intent;
    const-string v1, "com.mediatek.action.UNREAD_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1296
    const-string v1, "com.mediatek.intent.extra.UNREAD_NUMBER"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1297
    const-string v1, "com.mediatek.intent.extra.UNREAD_COMPONENT"

    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.android.email"

    const-string v4, "com.android.email.activity.Welcome"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1299
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1301
    const-string v1, "Email"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!!!notifyEmailUnreadNumber: send broadcast to laucher : unreadCount = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "com_android_email_mtk_unread"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1308
    return-void
.end method

.method public static notifyOnBootCompleted()V
    .locals 2

    .prologue
    .line 1349
    invoke-static {}, Lcom/android/email/NotificationController;->ensureHandlerExists()V

    .line 1350
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/NotificationController$3;

    invoke-direct {v1}, Lcom/android/email/NotificationController$3;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1424
    return-void
.end method

.method private registerMessageNotification(J)V
    .locals 13
    .parameter "accountId"

    .prologue
    .line 399
    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 400
    .local v0, resolver:Landroid/content/ContentResolver;
    const-wide/high16 v2, 0x1000

    cmp-long v2, p1, v2

    if-nez v2, :cond_2

    .line 403
    sget-object v1, Lcom/android/emailcommon/provider/Account;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/emailcommon/provider/EmailContent;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 408
    .local v8, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 409
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 410
    .local v9, id:J
    invoke-direct {p0, v9, v10}, Lcom/android/email/NotificationController;->registerMessageNotification(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 413
    .end local v9           #id:J
    :catchall_0
    move-exception v2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v2

    :cond_0
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 434
    .end local v8           #c:Landroid/database/Cursor;
    :cond_1
    :goto_1
    return-void

    .line 416
    :cond_2
    iget-object v2, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/ContentObserver;

    .line 417
    .local v12, obs:Landroid/database/ContentObserver;
    if-nez v12, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, p1, p2, v3}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxOfType(Landroid/content/Context;JI)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v11

    .line 420
    .local v11, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    if-nez v11, :cond_3

    .line 421
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not load INBOX for account id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 424
    :cond_3
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_4

    .line 425
    const-string v2, "Email"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Registering for notifications for account "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_4
    new-instance v1, Lcom/android/email/NotificationController$MessageContentObserver;

    sget-object v2, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/email/NotificationController$MessageContentObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;JJ)V

    .line 429
    .local v1, observer:Landroid/database/ContentObserver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 430
    iget-object v2, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/email/NotificationController$MessageContentObserver;->onChange(Z)V

    goto :goto_1
.end method

.method private registerUnreadCountObserver()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 467
    iget-object v2, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 469
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v2, p0, Lcom/android/email/NotificationController;->mUnreadCountObserver:Landroid/database/ContentObserver;

    if-eqz v2, :cond_0

    .line 482
    :goto_0
    return-void

    .line 473
    :cond_0
    sget-boolean v2, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 474
    const-string v2, "Email"

    const-string v3, "Registering unread count observer for launcher "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_1
    new-instance v0, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;

    sget-object v2, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v3}, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    .line 478
    .local v0, observer:Landroid/database/ContentObserver;
    sget-object v2, Lcom/android/emailcommon/provider/EmailContent$Message;->NOTIFIER_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v4, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    iput-object v0, p0, Lcom/android/email/NotificationController;->mUnreadCountObserver:Landroid/database/ContentObserver;

    .line 481
    invoke-virtual {v0, v4}, Lcom/android/email/NotificationController$UnreadMessagesCountObserver;->onChange(Z)V

    goto :goto_0
.end method

.method private showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 12
    .parameter "account"
    .parameter "ticker"
    .parameter "title"
    .parameter "contentText"
    .parameter "intent"
    .parameter "notificationId"

    .prologue
    .line 273
    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move/from16 v0, p6

    invoke-direct {p0, v0}, Lcom/android/email/NotificationController;->needsOngoingNotification(I)Z

    move-result v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v10}, Lcom/android/email/NotificationController;->createBaseAccountNotificationBuilder(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification$Builder;

    move-result-object v11

    .line 275
    .local v11, builder:Landroid/app/Notification$Builder;
    iget-object v1, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v11}, Landroid/app/Notification$Builder;->getNotification()Landroid/app/Notification;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v1, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 276
    return-void
.end method

.method private unregisterMessageNotification(J)V
    .locals 6
    .parameter "accountId"

    .prologue
    .line 445
    iget-object v3, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 446
    .local v2, resolver:Landroid/content/ContentResolver;
    const-wide/high16 v3, 0x1000

    cmp-long v3, p1, v3

    if-nez v3, :cond_3

    .line 447
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_0

    .line 448
    const-string v3, "Email"

    const-string v4, "Unregistering notifications for all accounts"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_0
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 452
    .local v1, observer:Landroid/database/ContentObserver;
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_0

    .line 454
    .end local v1           #observer:Landroid/database/ContentObserver;
    :cond_1
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    .line 464
    .end local v0           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    return-void

    .line 456
    :cond_3
    sget-boolean v3, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v3, :cond_4

    .line 457
    const-string v3, "Email"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unregistering notifications for account "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    :cond_4
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationMap:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/database/ContentObserver;

    .line 460
    .restart local v1       #observer:Landroid/database/ContentObserver;
    if-eqz v1, :cond_2

    .line 461
    invoke-virtual {v2, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    goto :goto_1
.end method

.method private unregisterUnreadCountObserver()V
    .locals 3

    .prologue
    .line 485
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 487
    .local v0, resolver:Landroid/content/ContentResolver;
    sget-boolean v1, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 488
    const-string v1, "Email"

    const-string v2, "Unregistering unread count observer for launcher "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    :cond_0
    iget-object v1, p0, Lcom/android/email/NotificationController;->mUnreadCountObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_1

    .line 492
    iget-object v1, p0, Lcom/android/email/NotificationController;->mUnreadCountObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 493
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/NotificationController;->mUnreadCountObserver:Landroid/database/ContentObserver;

    .line 495
    :cond_1
    return-void
.end method


# virtual methods
.method public cancelAllSecurityNeededNotification()V
    .locals 6

    .prologue
    .line 957
    iget-object v4, p0, Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;

    monitor-enter v4

    .line 958
    :try_start_0
    iget-object v3, p0, Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 959
    .local v0, accountId:J
    iget-object v3, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, v0, v1}, Lcom/android/email/NotificationController;->getNewSecurityNeededNotificationId(J)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0

    .line 961
    .end local v0           #accountId:J
    .end local v2           #i$:Ljava/util/Iterator;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 962
    return-void
.end method

.method public cancelLoginFailedNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 876
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 877
    return-void
.end method

.method public cancelPasswordExpirationNotifications()V
    .locals 2

    .prologue
    .line 922
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 923
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 924
    return-void
.end method

.method public cancelSecurityNeededNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getNewSecurityNeededNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 951
    return-void
.end method

.method public cancelSendFailedNotification(J)V
    .locals 2
    .parameter "accountId"

    .prologue
    .line 869
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getSendFailedNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 870
    return-void
.end method

.method createNewMessageNotification(JJLandroid/database/Cursor;JIIZ)Landroid/app/Notification;
    .locals 26
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageCursor"
    .parameter "newestMessageId"
    .parameter "unseenMessageCount"
    .parameter "unreadCount"
    .parameter "quietUpdate"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 538
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v16

    .line 539
    .local v16, account:Lcom/android/emailcommon/provider/Account;
    if-nez v16, :cond_0

    .line 540
    const/16 v19, 0x0

    .line 586
    :goto_0
    return-object v19

    .line 543
    :cond_0
    move-object/from16 v0, v16

    iget v3, v0, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    const/16 v20, 0x1

    .line 544
    .local v20, notifyNewMail:Z
    :goto_1
    if-nez v20, :cond_2

    .line 545
    const/16 v19, 0x0

    goto :goto_0

    .line 543
    .end local v20           #notifyNewMail:Z
    :cond_1
    const/16 v20, 0x0

    goto :goto_1

    .line 549
    .restart local v20       #notifyNewMail:Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p6

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v17

    .line 550
    .local v17, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v17, :cond_3

    .line 551
    const/16 v19, 0x0

    goto :goto_0

    .line 554
    :cond_3
    move-object/from16 v0, v17

    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v23

    .line 555
    .local v23, senderName:Ljava/lang/String;
    if-nez v23, :cond_4

    .line 556
    const-string v23, ""

    .line 558
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_5

    const/16 v18, 0x1

    .line 559
    .local v18, multipleUnseen:Z
    :goto_2
    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mGenericMultipleSenderIcon:Landroid/graphics/Bitmap;

    move-object/from16 v24, v0

    .line 562
    .local v24, senderPhoto:Landroid/graphics/Bitmap;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, p8

    invoke-virtual {v0, v1, v2}, Lcom/android/email/NotificationController;->getNewMessageTitle(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v25

    .line 565
    .local v25, title:Landroid/text/SpannableString;
    if-eqz v18, :cond_7

    move-object/from16 v0, v16

    iget-object v10, v0, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    .line 568
    .local v10, text:Ljava/lang/String;
    :goto_4
    if-eqz v24, :cond_8

    move-object/from16 v12, v24

    .line 569
    .local v12, largeIcon:Landroid/graphics/Bitmap;
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, p9

    if-le v0, v3, :cond_9

    invoke-static/range {p9 .. p9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    .line 571
    .local v13, number:Ljava/lang/Integer;
    :goto_6
    const/4 v3, 0x1

    move/from16 v0, p8

    if-le v0, v3, :cond_a

    .line 572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v3, v0, v1}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v11

    .line 577
    .local v11, intent:Landroid/content/Intent;
    :goto_7
    const v3, 0x1000c000

    invoke-virtual {v11, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 579
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v21

    .line 581
    .local v21, now:J
    if-nez p10, :cond_b

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController;->mLastMessageNotifyTime:J

    sub-long v3, v21, v3

    const-wide/16 v5, 0x3a98

    cmp-long v3, v3, v5

    if-lez v3, :cond_b

    const/4 v14, 0x1

    .line 582
    .local v14, enableAudio:Z
    :goto_8
    if-eqz p10, :cond_c

    const/4 v8, 0x0

    .line 583
    .local v8, ticker:Ljava/lang/String;
    :goto_9
    const/4 v15, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, v16

    move-object/from16 v5, p5

    move/from16 v6, v18

    move-object/from16 v7, v17

    move-object/from16 v9, v25

    invoke-direct/range {v3 .. v15}, Lcom/android/email/NotificationController;->createNotification(Lcom/android/emailcommon/provider/Account;Landroid/database/Cursor;ZLcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification;

    move-result-object v19

    .line 585
    .local v19, n:Landroid/app/Notification;
    move-wide/from16 v0, v21

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/NotificationController;->mLastMessageNotifyTime:J

    goto/16 :goto_0

    .line 558
    .end local v8           #ticker:Ljava/lang/String;
    .end local v10           #text:Ljava/lang/String;
    .end local v11           #intent:Landroid/content/Intent;
    .end local v12           #largeIcon:Landroid/graphics/Bitmap;
    .end local v13           #number:Ljava/lang/Integer;
    .end local v14           #enableAudio:Z
    .end local v18           #multipleUnseen:Z
    .end local v19           #n:Landroid/app/Notification;
    .end local v21           #now:J
    .end local v24           #senderPhoto:Landroid/graphics/Bitmap;
    .end local v25           #title:Landroid/text/SpannableString;
    :cond_5
    const/16 v18, 0x0

    goto :goto_2

    .line 559
    .restart local v18       #multipleUnseen:Z
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/email/NotificationController;->getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;

    move-result-object v24

    goto :goto_3

    .line 565
    .restart local v24       #senderPhoto:Landroid/graphics/Bitmap;
    .restart local v25       #title:Landroid/text/SpannableString;
    :cond_7
    move-object/from16 v0, v17

    iget-object v10, v0, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    goto :goto_4

    .line 568
    .restart local v10       #text:Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/email/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    goto :goto_5

    .line 569
    .restart local v12       #largeIcon:Landroid/graphics/Bitmap;
    :cond_9
    const/4 v13, 0x0

    goto :goto_6

    .line 574
    .restart local v13       #number:Ljava/lang/Integer;
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p6

    invoke-static/range {v3 .. v9}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v11

    .restart local v11       #intent:Landroid/content/Intent;
    goto :goto_7

    .line 581
    .restart local v21       #now:J
    :cond_b
    const/4 v14, 0x0

    goto :goto_8

    .line 582
    .restart local v14       #enableAudio:Z
    :cond_c
    invoke-virtual/range {v25 .. v25}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_9
.end method

.method createNewMessageNotificationPlus(JJJII)Lcom/mediatek/notification/NotificationPlus;
    .locals 17
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "messageId"
    .parameter "unseenMessageCount"
    .parameter "unreadCount"

    .prologue
    .line 1258
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v9

    .line 1259
    .local v9, account:Lcom/android/emailcommon/provider/Account;
    if-nez v9, :cond_0

    .line 1260
    const/4 v12, 0x0

    .line 1289
    :goto_0
    return-object v12

    .line 1263
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p5

    invoke-static {v2, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v11

    .line 1264
    .local v11, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v11, :cond_1

    .line 1265
    const/4 v12, 0x0

    goto :goto_0

    .line 1268
    :cond_1
    iget-object v2, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    invoke-static {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v14

    .line 1269
    .local v14, senderName:Ljava/lang/String;
    if-nez v14, :cond_2

    .line 1270
    const-string v14, ""

    .line 1272
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f0800a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 1274
    .local v16, title:Ljava/lang/String;
    iget-object v15, v11, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1276
    .local v15, text:Ljava/lang/String;
    const/4 v2, 0x1

    move/from16 v0, p7

    if-le v0, v2, :cond_3

    .line 1277
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, p1

    invoke-static {v2, v0, v1}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v10

    .line 1281
    .local v10, intent:Landroid/content/Intent;
    :goto_1
    const v2, 0x10008000

    invoke-virtual {v10, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1282
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v4, 0x800

    invoke-static {v2, v3, v10, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v13

    .line 1284
    .local v13, pending:Landroid/app/PendingIntent;
    new-instance v2, Lcom/mediatek/notification/NotificationPlus$Builder;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/mediatek/notification/NotificationPlus$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/notification/NotificationPlus$Builder;->setTitle(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;

    move-result-object v2

    invoke-virtual {v2, v15}, Lcom/mediatek/notification/NotificationPlus$Builder;->setMessage(Ljava/lang/String;)Lcom/mediatek/notification/NotificationPlus$Builder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v4, 0x104000a

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v13}, Lcom/mediatek/notification/NotificationPlus$Builder;->setPositiveButton(Ljava/lang/String;Landroid/app/PendingIntent;)Lcom/mediatek/notification/NotificationPlus$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/notification/NotificationPlus$Builder;->create()Lcom/mediatek/notification/NotificationPlus;

    move-result-object v12

    .line 1288
    .local v12, notification:Lcom/mediatek/notification/NotificationPlus;
    const-string v2, "NotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Have created a new NotificationPlus for title : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1279
    .end local v10           #intent:Landroid/content/Intent;
    .end local v12           #notification:Lcom/mediatek/notification/NotificationPlus;
    .end local v13           #pending:Landroid/app/PendingIntent;
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-static/range {v2 .. v8}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v10

    .restart local v10       #intent:Landroid/content/Intent;
    goto :goto_1
.end method

.method createVipMessageNotification()Landroid/app/Notification;
    .locals 36

    .prologue
    .line 1492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v34

    .line 1493
    .local v34, vipAccountCount:I
    if-gtz v34, :cond_0

    .line 1494
    const-string v3, "NotificationController"

    const-string v4, "createVipMessageNotification no VIP mails, return null"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1496
    const/16 v25, 0x0

    .line 1582
    :goto_0
    return-object v25

    .line 1499
    :cond_0
    const/4 v11, 0x0

    .line 1500
    .local v11, account:Lcom/android/emailcommon/provider/Account;
    const/4 v3, 0x1

    move/from16 v0, v34

    if-ne v0, v3, :cond_1

    .line 1501
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v23

    .line 1502
    .local v23, accountId:J
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-wide/from16 v0, v23

    invoke-static {v3, v0, v1}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v11

    .line 1510
    .end local v23           #accountId:J
    :goto_1
    if-nez v11, :cond_2

    .line 1511
    const/16 v25, 0x0

    goto :goto_0

    .line 1504
    :cond_1
    new-instance v11, Lcom/android/emailcommon/provider/Account;

    .end local v11           #account:Lcom/android/emailcommon/provider/Account;
    invoke-direct {v11}, Lcom/android/emailcommon/provider/Account;-><init>()V

    .line 1505
    .restart local v11       #account:Lcom/android/emailcommon/provider/Account;
    const-wide/high16 v3, 0x1000

    iput-wide v3, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1506
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v4, 0x7f080065

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {v34 .. v34}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v11, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    goto :goto_1

    .line 1513
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v3, v11}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->updateVipSoundAndVibration(Landroid/content/Context;Lcom/android/emailcommon/provider/Account;)V

    .line 1515
    invoke-direct/range {p0 .. p0}, Lcom/android/email/NotificationController;->getVipMessageCursor()Landroid/database/Cursor;

    move-result-object v12

    .line 1516
    .local v12, messageCursor:Landroid/database/Cursor;
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1517
    const/16 v25, 0x0

    goto :goto_0

    .line 1519
    :cond_3
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    .line 1520
    .local v8, newestMessageId:J
    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v33

    .line 1521
    .local v33, unseenMessageCount:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/NotificationController;->mVipNotifiedMessageCount:I

    move/from16 v0, v33

    if-ne v0, v3, :cond_5

    const-wide/16 v3, 0x0

    cmp-long v3, v8, v3

    if-eqz v3, :cond_4

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController;->mVipNotifiedMessageId:J

    cmp-long v3, v8, v3

    if-nez v3, :cond_5

    .line 1523
    :cond_4
    const-string v3, "NotificationController"

    const-string v4, "createVipMessageNotification same as previous, do not notify again"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1524
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1528
    :cond_5
    const/16 v29, 0x0

    .line 1529
    .local v29, quietUpdate:Z
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/email/NotificationController;->mVipNotifiedMessageCount:I

    move/from16 v0, v33

    if-ge v0, v3, :cond_6

    .line 1530
    const/16 v29, 0x1

    .line 1534
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/email/Preferences;->getVipNotification()Z

    move-result v26

    .line 1535
    .local v26, notifyVip:Z
    if-nez v26, :cond_7

    if-nez v29, :cond_7

    .line 1536
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1538
    :cond_7
    move/from16 v0, v33

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/email/NotificationController;->mVipNotifiedMessageCount:I

    .line 1539
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/email/NotificationController;->mVipNotifiedMessageId:J

    .line 1540
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v3, v8, v9}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v14

    .line 1541
    .local v14, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-nez v14, :cond_8

    .line 1542
    const/16 v25, 0x0

    goto/16 :goto_0

    .line 1545
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v6, 0x1

    invoke-static {v3, v4, v5, v6}, Lcom/mediatek/email/emailvip/VipMemberCache;->getVipMessagesCount(Landroid/content/Context;JZ)I

    move-result v32

    .line 1547
    .local v32, unreadCount:I
    iget-object v3, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->toFriendly([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v30

    .line 1548
    .local v30, senderName:Ljava/lang/String;
    if-nez v30, :cond_9

    .line 1549
    const-string v30, ""

    .line 1551
    :cond_9
    const/4 v3, 0x1

    move/from16 v0, v33

    if-le v0, v3, :cond_a

    const/4 v13, 0x1

    .line 1552
    .local v13, multipleUnseen:Z
    :goto_2
    if-eqz v13, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mGenericMultipleSenderIcon:Landroid/graphics/Bitmap;

    move-object/from16 v31, v0

    .line 1555
    .local v31, senderPhoto:Landroid/graphics/Bitmap;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v30

    move/from16 v2, v33

    invoke-direct {v0, v1, v2}, Lcom/android/email/NotificationController;->getNewVipMessageTitle(Ljava/lang/String;I)Landroid/text/SpannableString;

    move-result-object v16

    .line 1557
    .local v16, title:Landroid/text/SpannableString;
    if-eqz v13, :cond_c

    iget-object v0, v11, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 1560
    .local v17, text:Ljava/lang/String;
    :goto_4
    if-eqz v31, :cond_d

    move-object/from16 v19, v31

    .line 1561
    .local v19, largeIcon:Landroid/graphics/Bitmap;
    :goto_5
    const/4 v3, 0x1

    move/from16 v0, v32

    if-le v0, v3, :cond_e

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    .line 1563
    .local v20, number:Ljava/lang/Integer;
    :goto_6
    const/4 v3, 0x1

    move/from16 v0, v33

    if-le v0, v3, :cond_f

    .line 1564
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v6, -0x7

    const-wide/16 v8, -0x1

    invoke-static/range {v3 .. v9}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    .end local v8           #newestMessageId:J
    move-result-object v18

    .line 1570
    .local v18, intent:Landroid/content/Intent;
    :goto_7
    const v3, 0x1000c000

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1572
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mClock:Lcom/android/email/Clock;

    invoke-virtual {v3}, Lcom/android/email/Clock;->getTime()J

    move-result-wide v27

    .line 1573
    .local v27, now:J
    if-nez v29, :cond_10

    move-object/from16 v0, p0

    iget-wide v3, v0, Lcom/android/email/NotificationController;->mLastVipMessageNotifyTime:J

    sub-long v3, v27, v3

    const-wide/16 v5, 0x3a98

    cmp-long v3, v3, v5

    if-lez v3, :cond_10

    const/16 v21, 0x1

    .line 1574
    .local v21, enableAudio:Z
    :goto_8
    if-eqz v29, :cond_11

    const/4 v15, 0x0

    .line 1575
    .local v15, ticker:Ljava/lang/String;
    :goto_9
    const/16 v22, 0x0

    move-object/from16 v10, p0

    invoke-direct/range {v10 .. v22}, Lcom/android/email/NotificationController;->createNotification(Lcom/android/emailcommon/provider/Account;Landroid/database/Cursor;ZLcom/android/emailcommon/provider/EmailContent$Message;Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/content/Intent;Landroid/graphics/Bitmap;Ljava/lang/Integer;ZZ)Landroid/app/Notification;

    move-result-object v25

    .line 1577
    .local v25, n:Landroid/app/Notification;
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/email/NotificationController;->mLastVipMessageNotifyTime:J

    .line 1579
    new-instance v35, Lcom/mediatek/email/emailvip/VipNotificationStyle;

    invoke-direct/range {v35 .. v35}, Lcom/mediatek/email/emailvip/VipNotificationStyle;-><init>()V

    .line 1580
    .local v35, vipNotificationStyle:Lcom/mediatek/email/emailvip/VipNotificationStyle;
    move-object/from16 v0, v35

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->addVipTitle(Ljava/lang/CharSequence;)V

    .line 1581
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    move-object/from16 v0, v35

    move-object/from16 v1, v25

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/email/emailvip/VipNotificationStyle;->updateVipIcon(Landroid/content/Context;Landroid/app/Notification;)V

    goto/16 :goto_0

    .line 1551
    .end local v13           #multipleUnseen:Z
    .end local v15           #ticker:Ljava/lang/String;
    .end local v16           #title:Landroid/text/SpannableString;
    .end local v17           #text:Ljava/lang/String;
    .end local v18           #intent:Landroid/content/Intent;
    .end local v19           #largeIcon:Landroid/graphics/Bitmap;
    .end local v20           #number:Ljava/lang/Integer;
    .end local v21           #enableAudio:Z
    .end local v25           #n:Landroid/app/Notification;
    .end local v27           #now:J
    .end local v31           #senderPhoto:Landroid/graphics/Bitmap;
    .end local v35           #vipNotificationStyle:Lcom/mediatek/email/emailvip/VipNotificationStyle;
    .restart local v8       #newestMessageId:J
    :cond_a
    const/4 v13, 0x0

    goto/16 :goto_2

    .line 1552
    .restart local v13       #multipleUnseen:Z
    :cond_b
    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lcom/android/email/NotificationController;->getSenderPhoto(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/graphics/Bitmap;

    move-result-object v31

    goto/16 :goto_3

    .line 1557
    .restart local v16       #title:Landroid/text/SpannableString;
    .restart local v31       #senderPhoto:Landroid/graphics/Bitmap;
    :cond_c
    iget-object v0, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    move-object/from16 v17, v0

    goto :goto_4

    .line 1560
    .restart local v17       #text:Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/email/NotificationController;->mGenericSenderIcon:Landroid/graphics/Bitmap;

    move-object/from16 v19, v0

    goto :goto_5

    .line 1561
    .restart local v19       #largeIcon:Landroid/graphics/Bitmap;
    :cond_e
    const/16 v20, 0x0

    goto :goto_6

    .line 1567
    .restart local v20       #number:Ljava/lang/Integer;
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v4, v11, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iget-wide v6, v14, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static/range {v3 .. v9}, Lcom/android/email/activity/Welcome;->createOpenMessageIntent(Landroid/content/Context;JJJ)Landroid/content/Intent;

    move-result-object v18

    .restart local v18       #intent:Landroid/content/Intent;
    goto :goto_7

    .line 1573
    .end local v8           #newestMessageId:J
    .restart local v27       #now:J
    :cond_10
    const/16 v21, 0x0

    goto :goto_8

    .line 1574
    .restart local v21       #enableAudio:Z
    :cond_11
    invoke-virtual/range {v16 .. v16}, Landroid/text/SpannableString;->toString()Ljava/lang/String;

    move-result-object v15

    goto :goto_9
.end method

.method getNewMessageTitle(Ljava/lang/String;I)Landroid/text/SpannableString;
    .locals 5
    .parameter "sender"
    .parameter "unseenCount"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 770
    if-le p2, v3, :cond_0

    .line 771
    iget-object v1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f0800a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 777
    .local v0, title:Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    return-object v1

    .line 775
    .end local v0           #title:Ljava/lang/String;
    :cond_0
    move-object v0, p1

    .restart local v0       #title:Ljava/lang/String;
    goto :goto_0
.end method

.method getRingerMode()I
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 783
    iget-object v0, p0, Lcom/android/email/NotificationController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    return v0
.end method

.method postNotificationForNewMessage(JJLandroid/database/Cursor;JIIZ)V
    .locals 13
    .parameter "accountId"
    .parameter "mailboxId"
    .parameter "c"
    .parameter "messageId"
    .parameter "unseenMessageCount"
    .parameter "unreadCount"
    .parameter "quietUpdate"

    .prologue
    .line 1322
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move-wide/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    invoke-virtual/range {v0 .. v10}, Lcom/android/email/NotificationController;->createNewMessageNotification(JJLandroid/database/Cursor;JIIZ)Landroid/app/Notification;

    move-result-object v11

    .line 1324
    .local v11, n:Landroid/app/Notification;
    if-eqz v11, :cond_0

    .line 1325
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Notification] notify default flag "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Landroid/app/Notification;->defaults:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1328
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    iget-object v0, v0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v1, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    invoke-direct {v1, p1, p2}, Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1, v11}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1332
    :cond_0
    sget-object v0, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    move-wide v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p6

    move/from16 v7, p8

    move/from16 v8, p9

    invoke-virtual/range {v0 .. v8}, Lcom/android/email/NotificationController;->createNewMessageNotificationPlus(JJJII)Lcom/mediatek/notification/NotificationPlus;

    move-result-object v12

    .line 1335
    .local v12, notiPlus:Lcom/mediatek/notification/NotificationPlus;
    if-nez v12, :cond_1

    .line 1336
    const-string v0, "NotificationController"

    const-string v1, " NotificationPlus create failed "

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1342
    :goto_0
    return-void

    .line 1338
    :cond_1
    const/4 v0, 0x1

    invoke-static {v0, v12}, Lcom/mediatek/notification/NotificationManagerPlus;->notify(ILcom/mediatek/notification/NotificationPlus;)V

    .line 1339
    const-string v0, "NotificationController"

    const-string v1, " NotificationManagerPlus will popup NotificationPlus "

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public postVipMailNotification(ZJ)V
    .locals 3
    .parameter "isSuspend"
    .parameter "accountId"

    .prologue
    .line 1429
    const-wide/16 v1, -0x1

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 1455
    :goto_0
    return-void

    .line 1432
    :cond_0
    invoke-static {}, Lcom/android/email/NotificationController;->ensureHandlerExists()V

    .line 1434
    const-wide/high16 v1, 0x1000

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 1435
    new-instance v0, Lcom/android/email/NotificationController$4;

    invoke-direct {v0, p0, p1}, Lcom/android/email/NotificationController$4;-><init>(Lcom/android/email/NotificationController;Z)V

    .line 1454
    .local v0, runnable:Ljava/lang/Runnable;
    :goto_1
    sget-object v1, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 1445
    .end local v0           #runnable:Ljava/lang/Runnable;
    :cond_1
    new-instance v0, Lcom/android/email/NotificationController$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/email/NotificationController$5;-><init>(Lcom/android/email/NotificationController;ZJ)V

    .restart local v0       #runnable:Ljava/lang/Runnable;
    goto :goto_1
.end method

.method sendOrCancelVipNotification()V
    .locals 5

    .prologue
    const/high16 v4, 0x4000

    .line 1461
    iget-object v1, p0, Lcom/android/email/NotificationController;->mNeedNotifyVIPMails:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1462
    sget-object v1, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    invoke-virtual {v1}, Lcom/android/email/NotificationController;->createVipMessageNotification()Landroid/app/Notification;

    move-result-object v0

    .line 1463
    .local v0, n:Landroid/app/Notification;
    const-string v1, "NotificationController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Post VIP Notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1464
    if-eqz v0, :cond_0

    .line 1466
    sget-object v1, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    iget-object v1, v1, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1474
    .end local v0           #n:Landroid/app/Notification;
    :cond_0
    :goto_0
    return-void

    .line 1469
    :cond_1
    const-string v1, "NotificationController"

    const-string v2, "Cancel VIP Notification"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1470
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/email/NotificationController;->mVipNotifiedMessageCount:I

    .line 1471
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/email/NotificationController;->mVipNotifiedMessageId:J

    .line 1472
    sget-object v1, Lcom/android/email/NotificationController;->sInstance:Lcom/android/email/NotificationController;

    iget-object v1, v1, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v4}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method setContext(Landroid/content/Context;)V
    .locals 0
    .parameter "context"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 178
    iput-object p1, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    .line 179
    return-void
.end method

.method setupSoundAndVibration(Landroid/app/Notification$Builder;Lcom/android/emailcommon/provider/Account;)V
    .locals 10
    .parameter "builder"
    .parameter "account"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 789
    iget v1, p2, Lcom/android/emailcommon/provider/Account;->mFlags:I

    .line 790
    .local v1, flags:I
    iget-object v3, p2, Lcom/android/emailcommon/provider/Account;->mRingtoneUri:Ljava/lang/String;

    .line 791
    .local v3, ringtoneUri:Ljava/lang/String;
    and-int/lit8 v8, v1, 0x2

    if-eqz v8, :cond_2

    move v4, v6

    .line 792
    .local v4, vibrate:Z
    :goto_0
    and-int/lit8 v8, v1, 0x40

    if-eqz v8, :cond_3

    move v5, v6

    .line 793
    .local v5, vibrateWhenSilent:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/email/NotificationController;->getRingerMode()I

    move-result v8

    const/4 v9, 0x2

    if-eq v8, v9, :cond_4

    move v2, v6

    .line 794
    .local v2, isRingerSilent:Z
    :goto_2
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Notification] setupSoundAndVibration vibrate is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    const/4 v0, 0x4

    .line 796
    .local v0, defaults:I
    if-nez v4, :cond_0

    if-eqz v5, :cond_1

    if-eqz v2, :cond_1

    .line 797
    :cond_0
    or-int/lit8 v0, v0, 0x2

    .line 799
    :cond_1
    const-string v6, "Email"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[Notification] setupSoundAndVibration default flag "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 801
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    const/4 v6, 0x0

    :goto_3
    invoke-virtual {p1, v6}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 803
    return-void

    .end local v0           #defaults:I
    .end local v2           #isRingerSilent:Z
    .end local v4           #vibrate:Z
    .end local v5           #vibrateWhenSilent:Z
    :cond_2
    move v4, v7

    .line 791
    goto :goto_0

    .restart local v4       #vibrate:Z
    :cond_3
    move v5, v7

    .line 792
    goto :goto_1

    .restart local v5       #vibrateWhenSilent:Z
    :cond_4
    move v2, v7

    .line 793
    goto :goto_2

    .line 801
    .restart local v0       #defaults:I
    .restart local v2       #isRingerSilent:Z
    :cond_5
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    goto :goto_3
.end method

.method public showDownloadForwardFailedNotification(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 7
    .parameter "attachment"

    .prologue
    .line 813
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mAccountKey:J

    invoke-static {v0, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 814
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 821
    :goto_0
    return-void

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f08011a

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f08011b

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x3

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showLoginFailedNotification(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 844
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 845
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 853
    :goto_0
    return-void

    .line 846
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f08011c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f08011d

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-object v5, v1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-static {v0, p1, p2, v5}, Lcom/android/email/activity/setup/AccountSettings;->createAccountSettingsIntent(Landroid/content/Context;JLjava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getLoginFailedNotificationId(J)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showPasswordExpiredNotification(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 907
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 916
    :goto_0
    return-void

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v0, p1, p2, v6}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 911
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 912
    .local v4, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f08019c

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 913
    .local v2, ticker:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f08019d

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 914
    .local v3, title:Ljava/lang/String;
    const/4 v6, 0x5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showPasswordExpiringNotification(J)V
    .locals 9
    .parameter "accountId"

    .prologue
    const/4 v8, 0x0

    .line 886
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 887
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 897
    :goto_0
    return-void

    .line 889
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, v8}, Lcom/android/email/activity/setup/AccountSecurity;->actionDevicePasswordExpirationIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 891
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 892
    .local v4, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f08019a

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {v0, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 894
    .local v2, ticker:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v6, 0x7f08019b

    invoke-virtual {v0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 895
    .local v3, title:Ljava/lang/String;
    const/4 v6, 0x4

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public showSecurityNeededNotification(Lcom/android/emailcommon/provider/Account;)V
    .locals 9
    .parameter "account"

    .prologue
    const/4 v8, 0x1

    .line 933
    invoke-virtual {p0}, Lcom/android/email/NotificationController;->cancelAllSecurityNeededNotification()V

    .line 935
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v0, v6, v7, v8}, Lcom/android/email/activity/setup/AccountSecurity;->actionUpdateSecurityIntent(Landroid/content/Context;JZ)Landroid/content/Intent;

    move-result-object v5

    .line 936
    .local v5, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 937
    .local v4, accountName:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f080195

    new-array v6, v8, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v4, v6, v7

    invoke-virtual {v0, v1, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 939
    .local v2, ticker:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v1, 0x7f080196

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 940
    .local v3, title:Ljava/lang/String;
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-direct {p0, v0, v1}, Lcom/android/email/NotificationController;->getNewSecurityNeededNotificationId(J)I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    .line 942
    iget-object v0, p0, Lcom/android/email/NotificationController;->mSecurityHoldAccountIdsSet:Ljava/util/Set;

    iget-wide v6, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 943
    return-void
.end method

.method public showSendFailedNotification(J)V
    .locals 7
    .parameter "accountId"

    .prologue
    .line 856
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 857
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    if-nez v1, :cond_0

    .line 866
    :goto_0
    return-void

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v2, 0x7f080023

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    const v3, 0x7f080024

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/android/email/NotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v5

    invoke-direct {p0, p1, p2}, Lcom/android/email/NotificationController;->getSendFailedNotificationId(J)I

    move-result v6

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/email/NotificationController;->showAccountNotification(Lcom/android/emailcommon/provider/Account;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public suspendMessageNotification(ZJ)V
    .locals 4
    .parameter "suspend"
    .parameter "accountId"

    .prologue
    const-wide/16 v2, -0x1

    .line 355
    iget-wide v0, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 357
    iput-wide v2, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    .line 359
    :cond_0
    if-eqz p1, :cond_1

    cmp-long v0, p2, v2

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_1

    .line 360
    iput-wide p2, p0, Lcom/android/email/NotificationController;->mSuspendAccountId:J

    .line 361
    const-wide/high16 v0, 0x1000

    cmp-long v0, p2, v0

    if-nez v0, :cond_2

    .line 363
    invoke-static {}, Lcom/android/email/NotificationController;->ensureHandlerExists()V

    .line 364
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/NotificationController$2;

    invoke-direct {v1, p0}, Lcom/android/email/NotificationController$2;-><init>(Lcom/android/email/NotificationController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 376
    :goto_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/email/NotificationController;->postVipMailNotification(ZJ)V

    .line 378
    :cond_1
    return-void

    .line 373
    :cond_2
    iget-object v0, p0, Lcom/android/email/NotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p0, p2, p3}, Lcom/android/email/NotificationController;->getNewMessageNotificationId(J)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    goto :goto_0
.end method

.method public watchForMessages(Z)V
    .locals 3
    .parameter "watch"

    .prologue
    .line 303
    sget-boolean v0, Lcom/android/email/Email;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 304
    const-string v0, "Email"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Notifications being toggled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    if-nez p1, :cond_1

    sget-object v0, Lcom/android/email/NotificationController;->sNotificationThread:Lcom/android/email/NotificationController$NotificationThread;

    if-nez v0, :cond_1

    .line 342
    :goto_0
    return-void

    .line 309
    :cond_1
    invoke-static {}, Lcom/android/email/NotificationController;->ensureHandlerExists()V

    .line 311
    sget-object v0, Lcom/android/email/NotificationController;->sNotificationHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/email/NotificationController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/email/NotificationController$1;-><init>(Lcom/android/email/NotificationController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

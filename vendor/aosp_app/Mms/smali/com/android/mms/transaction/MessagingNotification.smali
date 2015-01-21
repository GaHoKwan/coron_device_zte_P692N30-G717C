.class public Lcom/android/mms/transaction/MessagingNotification;
.super Ljava/lang/Object;
.source "MessagingNotification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;,
        Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;,
        Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;,
        Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;
    }
.end annotation


# static fields
.field public static final CLASS_ZERO_NOTIFICATION_ID:I = 0x15be

.field private static final COLUMN_DATE:I = 0x1

.field private static final COLUMN_IPMSG_ID:I = 0x6

.field private static final COLUMN_MMS_ID:I = 0x2

.field private static final COLUMN_SMS_ADDRESS:I = 0x2

.field private static final COLUMN_SMS_BODY:I = 0x4

.field private static final COLUMN_SMS_ID:I = 0x5

.field private static final COLUMN_SUBJECT:I = 0x3

.field private static final COLUMN_SUBJECT_CS:I = 0x4

.field private static final COLUMN_THREAD_ID:I = 0x0

.field private static final DEBUG:Z = false

.field public static final DOWNLOAD_FAILED_NOTIFICATION_ID:I = 0x213

.field private static final DTMF_TONE:Ljava/lang/String; = "SetWarningTone=16"

.field private static final INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator; = null

.field private static final IN_CONVERSATION_NOTIFICATION_VOLUME:F = 0.25f

.field private static final MAX_BITMAP_DIMEN_DP:I = 0x168

.field private static final MAX_MESSAGES_TO_SHOW:I = 0x8

.field public static final MESSAGE_FAILED_NOTIFICATION_ID:I = 0x315

.field private static final MMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_TONE_STREAM_TYPE:I = 0x8

.field private static final MUTE_TONE_LENGTH_MS:I = 0x1f4

.field private static final NEW_DELIVERY_SM_CONSTRAINT:Ljava/lang/String; = "((type = 2 OR type = 4) AND (status = 0 OR status = 2 OR status = 32))"

.field private static final NEW_INCOMING_MM_CONSTRAINT:Ljava/lang/String; = "(msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))"

.field private static final NEW_INCOMING_SM_CONSTRAINT:Ljava/lang/String; = "(type = 1 AND seen = 0)"

.field private static final NOTIFICATION_DELETED_ACTION:Ljava/lang/String; = "com.android.mms.NOTIFICATION_DELETED_ACTION"

.field public static final NOTIFICATION_ID:I = 0x7b

.field public static final SIM_1_NEW_MESSAGE_NOTIFICATION_ID:I = 0x1e6c

.field public static final SIM_2_NEW_MESSAGE_NOTIFICATION_ID:I = 0x1e6d

.field private static final SMS_STATUS_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_THREAD_ID_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms:app"

.field public static final THREAD_ALL:J = -0x1L

.field public static final THREAD_NONE:J = -0x2L

.field private static final THREAD_SETTINGS_URI:Landroid/net/Uri; = null

.field private static final TONE_FULL_VOLUME:I = 0x64

.field private static final TONE_LENGTH_MS:I = 0x96

.field private static final TONE_RELATIVE_VOLUME:I = 0x50

.field private static final UNDELIVERED_URI:Landroid/net/Uri;

.field public static mSlotId:I

.field private static final objectLock:Ljava/lang/Object;

.field private static sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private static sCurrentlyDisplayedThreadId:J

.field private static final sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

.field private static sMmsUnReadCount:I

.field private static sMuteModeToneGenerator:Landroid/media/ToneGenerator;

.field private static sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

.field private static sNotificationOnDeleteIntent:Landroid/content/Intent;

.field private static sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

.field private static sNotificationSet:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

.field private static final sPlayingInConversationSoundLock:Ljava/lang/Object;

.field private static sScreenDensity:F

.field private static sSmsUnReadCount:I

.field private static sToastHandler:Landroid/os/Handler;

.field private static sToneGenerator:Landroid/media/ToneGenerator;

.field private static final sToneGeneratorLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 143
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v5

    const-string v1, "sub_cs"

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 148
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "address"

    aput-object v1, v0, v2

    const-string v1, "subject"

    aput-object v1, v0, v5

    const-string v1, "body"

    aput-object v1, v0, v6

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "ipmsg_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    .line 165
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 166
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    .line 187
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;-><init>(Lcom/android/mms/transaction/MessagingNotification$1;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    .line 190
    const-string v0, "content://mms-sms/undelivered"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    .line 191
    const/4 v0, -0x1

    sput v0, Lcom/android/mms/transaction/MessagingNotification;->mSlotId:I

    .line 193
    const-string v0, "content://mms-sms/thread_settings/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->THREAD_SETTINGS_URI:Landroid/net/Uri;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    .line 219
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-direct {v0}, Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    .line 221
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sToastHandler:Landroid/os/Handler;

    .line 230
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->INFO_COMPARATOR:Lcom/android/mms/transaction/MessagingNotification$NotificationInfoComparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    .line 246
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->objectLock:Ljava/lang/Object;

    .line 250
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sPlayingInConversationSoundLock:Ljava/lang/Object;

    .line 251
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    .line 253
    sput v3, Lcom/android/mms/transaction/MessagingNotification;->sMmsUnReadCount:I

    .line 254
    sput v3, Lcom/android/mms/transaction/MessagingNotification;->sSmsUnReadCount:I

    .line 1756
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sToneGeneratorLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    return-void
.end method

.method static synthetic access$100(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 128
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification;->updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Landroid/content/Context;[J)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 128
    invoke-static {p0, p1}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v0

    return v0
.end method

.method static synthetic access$402(Landroid/bluetooth/BluetoothHeadset;)Landroid/bluetooth/BluetoothHeadset;
    .locals 0
    .parameter "x0"

    .prologue
    .line 128
    sput-object p0, Lcom/android/mms/transaction/MessagingNotification;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object p0
.end method

.method private static final addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 30
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 663
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 670
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->MMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(msg_box=1 AND seen=0 AND (m_type=130 OR m_type=132))"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 674
    .local v18, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->sMmsUnReadCount:I

    .line 675
    if-nez v18, :cond_0

    .line 781
    :goto_0
    return-void

    .line 679
    :cond_0
    const/16 v17, 0x0

    .line 680
    .local v17, addNotifyCount:I
    new-instance v23, Ljava/util/HashSet;

    const/4 v2, 0x4

    move-object/from16 v0, v23

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 682
    .local v23, mmsThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 684
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 693
    .local v9, threadId:J
    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_3

    .line 777
    .end local v9           #threadId:J
    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->sMmsUnReadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 779
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 696
    .restart local v9       #threadId:J
    :cond_3
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v23 .. v23}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    .line 699
    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    move/from16 v0, v17

    if-gt v0, v2, :cond_1

    .line 704
    :cond_5
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 705
    .local v24, msgId:J
    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    .line 707
    .local v16, msgUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/android/mms/util/AddressUtils;->getFrom(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 709
    .local v6, address:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 710
    .local v14, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getSendToVoicemail()Z

    move-result v2

    if-nez v2, :cond_1

    .line 715
    const/4 v2, 0x3

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    invoke-static {v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v8

    .line 718
    .local v8, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/android/mms/ui/MessageUtils;->cleanseMmsSubject(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 720
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    const-wide/16 v28, 0x3e8

    mul-long v11, v4, v28

    .line 722
    .local v11, timeMillis:J
    const-string v2, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 723
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addMmsNotificationInfos: count="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", addr = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", thread_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 728
    :cond_6
    const/4 v13, 0x0

    .line 729
    .local v13, attachedPicture:Landroid/graphics/Bitmap;
    const/4 v7, 0x0

    .line 730
    .local v7, messageBody:Ljava/lang/String;
    const/4 v15, 0x0

    .line 732
    .local v15, attachmentType:I
    :try_start_2
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/android/mms/pdu/PduPersister;->load(Landroid/net/Uri;)Lcom/google/android/mms/pdu/GenericPdu;

    move-result-object v26

    .line 733
    .local v26, pdu:Lcom/google/android/mms/pdu/GenericPdu;
    if-eqz v26, :cond_8

    move-object/from16 v0, v26

    instance-of v2, v0, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    if-eqz v2, :cond_8

    .line 734
    check-cast v26, Lcom/google/android/mms/pdu/MultimediaMessagePdu;

    .end local v26           #pdu:Lcom/google/android/mms/pdu/GenericPdu;
    invoke-virtual/range {v26 .. v26}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->getBody()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/mms/model/SlideshowModel;->createFromPduBody(Landroid/content/Context;Lcom/google/android/mms/pdu/PduBody;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v27

    .line 736
    .local v27, slideshow:Lcom/android/mms/model/SlideshowModel;
    invoke-static/range {v27 .. v27}, Lcom/android/mms/transaction/MessagingNotification;->getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I

    move-result v15

    .line 737
    const/4 v2, 0x0

    move-object/from16 v0, v27

    invoke-virtual {v0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v20

    .line 738
    .local v20, firstSlide:Lcom/android/mms/model/SlideModel;
    if-eqz v20, :cond_8

    .line 739
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_7

    .line 740
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 741
    const/16 v2, 0x168

    invoke-static {v2}, Lcom/android/mms/transaction/MessagingNotification;->dp2Pixels(I)I

    move-result v22

    .line 742
    .local v22, maxDim:I
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v2

    move/from16 v0, v22

    move/from16 v1, v22

    invoke-virtual {v2, v0, v1}, Lcom/android/mms/model/ImageModel;->getBitmap(II)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 745
    .end local v22           #maxDim:I
    :cond_7
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 746
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v7

    .line 755
    .end local v20           #firstSlide:Lcom/android/mms/model/SlideModel;
    .end local v27           #slideshow:Lcom/android/mms/model/SlideshowModel;
    :cond_8
    :goto_2
    const/4 v5, 0x0

    move-object/from16 v4, p0

    :try_start_3
    invoke-static/range {v4 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;ILandroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v21

    .line 768
    .local v21, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->objectLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 769
    :try_start_4
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    move-object/from16 v0, v21

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 770
    add-int/lit8 v17, v17, 0x1

    .line 771
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 774
    :try_start_5
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 775
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v23

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_1

    .line 779
    .end local v6           #address:Ljava/lang/String;
    .end local v7           #messageBody:Ljava/lang/String;
    .end local v8           #subject:Ljava/lang/String;
    .end local v9           #threadId:J
    .end local v11           #timeMillis:J
    .end local v13           #attachedPicture:Landroid/graphics/Bitmap;
    .end local v14           #contact:Lcom/android/mms/data/Contact;
    .end local v15           #attachmentType:I
    .end local v16           #msgUri:Landroid/net/Uri;
    .end local v21           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v24           #msgId:J
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    .line 750
    .restart local v6       #address:Ljava/lang/String;
    .restart local v7       #messageBody:Ljava/lang/String;
    .restart local v8       #subject:Ljava/lang/String;
    .restart local v9       #threadId:J
    .restart local v11       #timeMillis:J
    .restart local v13       #attachedPicture:Landroid/graphics/Bitmap;
    .restart local v14       #contact:Lcom/android/mms/data/Contact;
    .restart local v15       #attachmentType:I
    .restart local v16       #msgUri:Landroid/net/Uri;
    .restart local v24       #msgId:J
    :catch_0
    move-exception v19

    .line 751
    .local v19, e:Lcom/google/android/mms/MmsException;
    :try_start_6
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MmsException loading uri: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v19

    invoke-static {v2, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 771
    .end local v19           #e:Lcom/google/android/mms/MmsException;
    .restart local v21       #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
.end method

.method private static final addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V
    .locals 30
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p1, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 840
    .local v3, resolver:Landroid/content/ContentResolver;
    sget-object v4, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v5, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v6, "(type = 1 AND seen = 0)"

    const/4 v7, 0x0

    const-string v8, "date desc"

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v18

    .line 844
    .local v18, cursor:Landroid/database/Cursor;
    const/4 v2, 0x0

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->sSmsUnReadCount:I

    .line 845
    if-nez v18, :cond_0

    .line 937
    :goto_0
    return-void

    .line 849
    :cond_0
    const/16 v17, 0x0

    .line 850
    .local v17, addNotifyCount:I
    new-instance v27, Ljava/util/HashSet;

    const/4 v2, 0x4

    move-object/from16 v0, v27

    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(I)V

    .line 852
    .local v27, smsThreads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_1
    :goto_1
    :try_start_0
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 854
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    .line 863
    .local v9, threadId:J
    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->size()I

    move-result v2

    const/16 v4, 0x8

    if-le v2, v4, :cond_3

    .line 933
    .end local v9           #threadId:J
    :cond_2
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v2

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->sSmsUnReadCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 935
    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 866
    .restart local v9       #threadId:J
    :cond_3
    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface/range {v27 .. v27}, Ljava/util/Set;->size()I

    move-result v2

    const/4 v4, 0x1

    if-gt v2, v4, :cond_1

    .line 869
    :cond_4
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/16 v2, 0x8

    move/from16 v0, v17

    if-gt v0, v2, :cond_1

    .line 874
    :cond_5
    const/4 v2, 0x2

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 876
    .local v6, address:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-static {v6, v2}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v14

    .line 877
    .local v14, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v14}, Lcom/android/mms/data/Contact;->getSendToVoicemail()Z

    move-result v2

    if-nez v2, :cond_1

    .line 882
    const/4 v2, 0x4

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 883
    .local v7, message:Ljava/lang/String;
    const/4 v2, 0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    .line 884
    .local v11, timeMillis:J
    const/4 v2, 0x6

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    .line 885
    .local v22, ipMessageId:I
    const/4 v5, 0x1

    .line 886
    .local v5, smsOrIpTextMsg:Z
    const/4 v13, 0x0

    .line 888
    .local v13, attachmentBitmap:Landroid/graphics/Bitmap;
    if-lez v22, :cond_7

    .line 889
    const/4 v2, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v24

    .line 890
    .local v24, messageId:J
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v2

    move-wide/from16 v0, v24

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v21

    .line 891
    .local v21, ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    if-eqz v21, :cond_7

    .line 892
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v23

    .line 893
    .local v23, ipMessageType:I
    if-eqz v23, :cond_7

    .line 894
    const/4 v5, 0x0

    .line 895
    const/4 v2, 0x4

    move/from16 v0, v23

    if-eq v0, v2, :cond_6

    const/16 v2, 0x8

    move/from16 v0, v23

    if-ne v0, v2, :cond_7

    .line 897
    :cond_6
    new-instance v26, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v26 .. v26}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 898
    .local v26, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v26

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 899
    check-cast v21, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    .end local v21           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    invoke-virtual/range {v21 .. v21}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->getPath()Ljava/lang/String;

    move-result-object v19

    .line 900
    .local v19, filePath:Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v13

    .line 901
    const-string v4, "Mms:app"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "picture path="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, "get Bitmap="

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_9

    const-string v2, "fail"

    :goto_2
    invoke-static {v4, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    .end local v19           #filePath:Ljava/lang/String;
    .end local v23           #ipMessageType:I
    .end local v24           #messageId:J
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    :cond_7
    const-string v2, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 910
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "addSmsNotificationInfos: count="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->getCount()I

    move-result v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", addr="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v8, ", thread_id="

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 915
    :cond_8
    const/4 v8, 0x0

    const/4 v15, 0x0

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const/4 v4, 0x5

    move-object/from16 v0, v18

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v28

    invoke-static/range {v28 .. v29}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v16

    move-object/from16 v4, p0

    invoke-static/range {v4 .. v16}, Lcom/android/mms/transaction/MessagingNotification;->getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;ILandroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-result-object v20

    .line 923
    .local v20, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    sget-object v4, Lcom/android/mms/transaction/MessagingNotification;->objectLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 924
    :try_start_2
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    move-object/from16 v0, v20

    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    .line 925
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 926
    add-int/lit8 v17, v17, 0x1

    .line 929
    :try_start_3
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 930
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, p1

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 931
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v0, v27

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    .line 935
    .end local v5           #smsOrIpTextMsg:Z
    .end local v6           #address:Ljava/lang/String;
    .end local v7           #message:Ljava/lang/String;
    .end local v9           #threadId:J
    .end local v11           #timeMillis:J
    .end local v13           #attachmentBitmap:Landroid/graphics/Bitmap;
    .end local v14           #contact:Lcom/android/mms/data/Contact;
    .end local v20           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v22           #ipMessageId:I
    :catchall_0
    move-exception v2

    invoke-interface/range {v18 .. v18}, Landroid/database/Cursor;->close()V

    throw v2

    .line 901
    .restart local v5       #smsOrIpTextMsg:Z
    .restart local v6       #address:Ljava/lang/String;
    .restart local v7       #message:Ljava/lang/String;
    .restart local v9       #threadId:J
    .restart local v11       #timeMillis:J
    .restart local v13       #attachmentBitmap:Landroid/graphics/Bitmap;
    .restart local v14       #contact:Lcom/android/mms/data/Contact;
    .restart local v19       #filePath:Ljava/lang/String;
    .restart local v22       #ipMessageId:I
    .restart local v23       #ipMessageType:I
    .restart local v24       #messageId:J
    .restart local v26       #options:Landroid/graphics/BitmapFactory$Options;
    :cond_9
    :try_start_4
    const-string v2, "OK"
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_2

    .line 925
    .end local v19           #filePath:Ljava/lang/String;
    .end local v23           #ipMessageType:I
    .end local v24           #messageId:J
    .end local v26           #options:Landroid/graphics/BitmapFactory$Options;
    .restart local v20       #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
.end method

.method public static blockingUpdateAllNotifications(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 427
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 428
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V

    .line 429
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->updateDownloadFailedNotification(Landroid/content/Context;)V

    .line 432
    invoke-static {p0}, Lcom/android/mms/transaction/CBMessagingNotification;->updateNewMessageIndicator(Landroid/content/Context;)V

    .line 434
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 435
    return-void
.end method

.method public static blockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 9
    .parameter "context"
    .parameter "newMsgThreadId"
    .parameter "isStatusMessage"

    .prologue
    .line 349
    invoke-static {p0, p1, p2}, Lcom/android/mms/transaction/MessagingNotification;->getNotificationProfileByThreadId(Landroid/content/Context;J)Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;

    move-result-object v5

    .line 350
    .local v5, notiProf:Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 351
    const-wide/16 v2, 0x0

    cmp-long v0, p1, v2

    if-lez v0, :cond_1

    :try_start_0
    sget-wide v2, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    cmp-long v0, p1, v2

    if-nez v0, :cond_1

    .line 357
    invoke-static {p0, v5}, Lcom/android/mms/transaction/MessagingNotification;->playInConversationNotificationSound(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;)V

    .line 358
    monitor-exit v1

    .line 391
    :cond_0
    :goto_0
    return-void

    .line 360
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 363
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->objectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 364
    :try_start_1
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->clear()V

    .line 365
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 368
    const/4 v7, 0x0

    .line 369
    .local v7, delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    new-instance v8, Ljava/util/HashSet;

    const/4 v0, 0x4

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(I)V

    .line 371
    .local v8, threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    const/4 v6, 0x0

    .line 372
    .local v6, count:I
    invoke-static {p0, v8}, Lcom/android/mms/transaction/MessagingNotification;->addMmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 373
    invoke-static {p0, v8}, Lcom/android/mms/transaction/MessagingNotification;->addSmsNotificationInfos(Landroid/content/Context;Ljava/util/Set;)V

    .line 375
    const/16 v0, 0x7b

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 376
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 377
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    const-string v0, "Mms:app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "blockingUpdateNewMessageIndicator: count="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newMsgThreadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_2
    const-wide/16 v0, -0x2

    cmp-long v0, p1, v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v2

    move-object v0, p0

    move-wide v3, p1

    invoke-static/range {v0 .. v5}, Lcom/android/mms/transaction/MessagingNotification;->updateNotification(Landroid/content/Context;ZIJLcom/android/mms/transaction/MessagingNotification$NotificationProfile;)V

    .line 387
    :cond_3
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    move-result-object v7

    .line 388
    if-eqz v7, :cond_0

    .line 389
    invoke-virtual {v7, p0, p3}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;->deliver(Landroid/content/Context;Z)V

    goto :goto_0

    .line 360
    .end local v6           #count:I
    .end local v7           #delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .end local v8           #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 365
    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    .line 381
    .restart local v6       #count:I
    .restart local v7       #delivery:Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .restart local v8       #threads:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static blockingUpdateSimNewMessageIndicator(Landroid/content/Context;ZZLjava/lang/String;Ljava/lang/String;I)V
    .locals 10
    .parameter "context"
    .parameter "isNew"
    .parameter "isStatusMessage"
    .parameter "address"
    .parameter "messageBody"
    .parameter "slotId"

    .prologue
    .line 2147
    const-string v7, "Mms:app"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "blockingUpdateSimNewMessageIndicator, isNew = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " slotId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2148
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 2152
    .local v1, nm:Landroid/app/NotificationManager;
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->wakeUpScreen(Landroid/content/Context;)V

    .line 2154
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/android/mms/ui/ManageSimMessages;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2155
    .local v6, viewSimIntent:Landroid/content/Intent;
    const-string v7, "SlotId"

    invoke-virtual {v6, v7, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2156
    invoke-static {p0}, Lcom/android/mms/ui/MessagingPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 2192
    :goto_0
    return-void

    .line 2160
    :cond_0
    const/high16 v7, 0x1000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2162
    const/4 v7, 0x0

    const/high16 v8, 0x800

    invoke-static {p0, v7, v6, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 2165
    .local v4, pendingIntent:Landroid/app/PendingIntent;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 2166
    .local v2, notification:Landroid/app/Notification;
    const v7, 0x7f020168

    iput v7, v2, Landroid/app/Notification;->icon:I

    .line 2167
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 2169
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 2171
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_vibrate"

    const/4 v8, 0x0

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2172
    .local v0, appVibrate:Z
    if-eqz v0, :cond_1

    .line 2173
    iget v7, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v7, v7, 0x2

    iput v7, v2, Landroid/app/Notification;->defaults:I

    .line 2176
    :cond_1
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 2177
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 2179
    const v7, -0xff0100

    iput v7, v2, Landroid/app/Notification;->ledARGB:I

    .line 2180
    const/16 v7, 0x3e8

    iput v7, v2, Landroid/app/Notification;->ledOnMS:I

    .line 2181
    const/16 v7, 0xbb8

    iput v7, v2, Landroid/app/Notification;->ledOffMS:I

    .line 2183
    const/16 v3, 0x1e6c

    .line 2184
    .local v3, notification_sim:I
    const/4 v7, 0x1

    if-ne p5, v7, :cond_2

    .line 2185
    const/16 v3, 0x1e6d

    .line 2187
    :cond_2
    invoke-virtual {v2, p0, p3, p4, v4}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 2191
    invoke-virtual {v1, v3, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method protected static buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 11
    .parameter "context"
    .parameter "address"
    .parameter "subject"
    .parameter "body"

    .prologue
    const/4 v10, 0x1

    const/16 v9, 0xd

    const/16 v8, 0xa

    const/16 v7, 0x20

    .line 1341
    const/4 v1, 0x0

    .line 1342
    .local v1, displayAddress:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/mms/ipmessage/ServiceManager;->getIpMessageServiceId()I

    move-result v4

    if-lez v4, :cond_2

    const-string v4, "7---"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1344
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/mediatek/mms/ipmessage/ContactManager;->getNameByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1345
    const-string v4, "Mms:app"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "displayAddress:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1350
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    if-nez v1, :cond_3

    const-string v4, ""

    :goto_1
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1354
    .local v0, buf:Ljava/lang/StringBuilder;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1356
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    .line 1357
    .local v2, offset:I
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1358
    invoke-virtual {p2, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p2

    .line 1359
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1360
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1363
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1364
    invoke-virtual {p3, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p3

    .line 1365
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1368
    :cond_1
    new-instance v3, Landroid/text/SpannableString;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1369
    .local v3, spanText:Landroid/text/SpannableString;
    new-instance v4, Landroid/text/style/StyleSpan;

    invoke-direct {v4, v10}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v3, v4, v5, v2, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 1372
    return-object v3

    .line 1347
    .end local v0           #buf:Ljava/lang/StringBuilder;
    .end local v2           #offset:I
    .end local v3           #spanText:Landroid/text/SpannableString;
    :cond_2
    invoke-static {p1, v10}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1350
    :cond_3
    invoke-virtual {v1, v8, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v9, v7}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    goto :goto_1
.end method

.method public static cancelNotification(Landroid/content/Context;I)V
    .locals 4
    .parameter "context"
    .parameter "notificationId"

    .prologue
    .line 996
    const-string v1, "Mms:app"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelNotification, notificationId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    .line 1000
    .local v0, nm:Landroid/app/NotificationManager;
    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 1003
    const/16 v1, 0x7b

    if-ne p1, v1, :cond_0

    .line 1004
    const/4 v1, 0x1

    invoke-static {p0, v1}, Lcom/mediatek/encapsulation/android/app/EncapsulatedNotificationManagerPlus;->cancel(Landroid/content/Context;I)V

    .line 1007
    :cond_0
    return-void
.end method

.method private static final dp2Pixels(I)I
    .locals 2
    .parameter "dip"

    .prologue
    .line 805
    int-to-float v0, p0

    sget v1, Lcom/android/mms/transaction/MessagingNotification;->sScreenDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f00

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private static formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;",
            ">;)",
            "Ljava/lang/CharSequence;"
        }
    .end annotation

    .prologue
    .local p1, senders:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    const/4 v6, 0x0

    .line 609
    new-instance v2, Landroid/text/style/TextAppearanceSpan;

    const v5, 0x7f0d0007

    invoke-direct {v2, p0, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 612
    .local v2, notificationSenderSpan:Landroid/text/style/TextAppearanceSpan;
    const v5, 0x7f0b034d

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 613
    .local v3, separator:Ljava/lang/String;
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 614
    .local v4, spannableStringBuilder:Landroid/text/SpannableStringBuilder;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 615
    .local v1, len:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 616
    if-lez v0, :cond_0

    .line 617
    invoke-virtual {v4, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 619
    :cond_0
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    iget-object v5, v5, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    invoke-virtual {v5}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 615
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v5

    invoke-virtual {v4, v2, v6, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 623
    return-object v4
.end method

.method private static getAttachmentType(Lcom/android/mms/model/SlideshowModel;)I
    .locals 5
    .parameter "slideshow"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 785
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 787
    .local v1, slideCount:I
    if-nez v1, :cond_1

    .line 801
    :cond_0
    :goto_0
    return v2

    .line 789
    :cond_1
    if-le v1, v3, :cond_2

    .line 790
    const/4 v2, 0x4

    goto :goto_0

    .line 792
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 793
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v4

    if-eqz v4, :cond_3

    move v2, v3

    .line 794
    goto :goto_0

    .line 795
    :cond_3
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 796
    const/4 v2, 0x2

    goto :goto_0

    .line 797
    :cond_4
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 798
    const/4 v2, 0x3

    goto :goto_0
.end method

.method private static getAttachmentTypeString(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 5
    .parameter "context"
    .parameter "attachmentType"

    .prologue
    const/4 v4, 0x0

    .line 629
    new-instance v1, Landroid/text/style/TextAppearanceSpan;

    const v3, 0x7f0d0008

    invoke-direct {v1, p0, v3}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    .line 631
    .local v1, notificationAttachmentSpan:Landroid/text/style/TextAppearanceSpan;
    const/4 v0, 0x0

    .line 632
    .local v0, id:I
    packed-switch p1, :pswitch_data_0

    .line 638
    :goto_0
    if-lez v0, :cond_0

    .line 639
    new-instance v2, Landroid/text/SpannableString;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 640
    .local v2, spannableString:Landroid/text/SpannableString;
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    move-result v3

    invoke-virtual {v2, v1, v4, v3, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 644
    .end local v2           #spannableString:Landroid/text/SpannableString;
    :goto_1
    return-object v2

    .line 633
    :pswitch_0
    const v0, 0x7f0b0348

    goto :goto_0

    .line 634
    :pswitch_1
    const v0, 0x7f0b034a

    goto :goto_0

    .line 635
    :pswitch_2
    const v0, 0x7f0b0349

    goto :goto_0

    .line 636
    :pswitch_3
    const v0, 0x7f0b034b

    goto :goto_0

    .line 644
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 632
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static getCurrentCardNotify(IZ)Ljava/lang/String;
    .locals 5
    .parameter "slotId"
    .parameter "getSlot"

    .prologue
    .line 2122
    const-string v0, "pref_key_ringtone"

    .line 2123
    .local v0, NotifyType:Ljava/lang/String;
    const/4 v1, -0x1

    .line 2124
    .local v1, mCurSlotId:I
    if-eqz p1, :cond_1

    .line 2125
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getSlotId()I

    move-result v1

    .line 2129
    :goto_0
    const-string v2, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "whichCardNotify  mCurSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2131
    if-nez v1, :cond_2

    .line 2132
    const-string v0, "pref_key_ringtone"

    .line 2136
    :cond_0
    :goto_1
    const-string v2, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------NotifyType="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    return-object v0

    .line 2127
    :cond_1
    move v1, p0

    goto :goto_0

    .line 2133
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 2134
    const-string v0, "pref_key_ringtone_card_second"

    goto :goto_1
.end method

.method private static getDownloadFailedMessageCount(Landroid/content/Context;)I
    .locals 9
    .parameter "context"

    .prologue
    const/4 v3, 0x0

    .line 1607
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "m_type="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x82

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " AND "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "st"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v4, 0x87

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p0

    move-object v5, v3

    move-object v6, v3

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1614
    .local v7, c:Landroid/database/Cursor;
    if-nez v7, :cond_0

    .line 1615
    const/4 v8, 0x0

    .line 1619
    :goto_0
    return v8

    .line 1617
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v8

    .line 1618
    .local v8, count:I
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method private static getMmsSubject(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .parameter "sub"
    .parameter "charset"

    .prologue
    .line 1376
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(I[B)V

    invoke-virtual {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->getString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static final getNewMessageNotificationInfo(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLandroid/graphics/Bitmap;Lcom/android/mms/data/Contact;ILandroid/net/Uri;)Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .locals 21
    .parameter "context"
    .parameter "isSms"
    .parameter "address"
    .parameter "message"
    .parameter "subject"
    .parameter "threadId"
    .parameter "timeMillis"
    .parameter "attachmentBitmap"
    .parameter "contact"
    .parameter "attachmentType"
    .parameter "uri"

    .prologue
    .line 952
    const-string v4, "Mms:app"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getNewMessageNotificationInfo\n\t isSms \t = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n\t address \t= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n\t threadId \t= "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "\n\t uri \t = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p12

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 958
    const/4 v6, 0x0

    .line 959
    .local v6, clickIntent:Landroid/content/Intent;
    const/4 v4, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v19

    .line 960
    .local v19, conv:Lcom/android/mms/data/Conversation;
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->isActualPlugin()Z

    move-result v4

    if-eqz v4, :cond_0

    if-eqz v19, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    invoke-virtual/range {v19 .. v19}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/mms/data/Contact;

    invoke-virtual {v4}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, "7---"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 965
    const-string v4, "Mms:app"

    const-string v5, "new group message received."

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-instance v6, Landroid/content/Intent;

    .end local v6           #clickIntent:Landroid/content/Intent;
    const-string v4, "com.mediatek.mms.ipmessage.group_notification_clicked"

    invoke-direct {v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 967
    .restart local v6       #clickIntent:Landroid/content/Intent;
    const-class v4, Lcom/android/mms/ui/BootActivity;

    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 968
    const-string v4, "thread_id"

    move-wide/from16 v0, p5

    invoke-virtual {v6, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 969
    const-string v4, "boolean"

    const/4 v5, 0x0

    invoke-virtual {v6, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 981
    :goto_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1, v4, v5}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    .line 983
    .local v20, senderInfo:Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    move-object/from16 v0, v20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 985
    .local v12, senderInfoName:Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->buildTickerMessage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 988
    .local v9, ticker:Ljava/lang/CharSequence;
    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move/from16 v5, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-wide/from16 v10, p7

    move-object/from16 v13, p9

    move-object/from16 v14, p10

    move/from16 v15, p11

    move-wide/from16 v16, p5

    move-object/from16 v18, p12

    invoke-direct/range {v4 .. v18}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;-><init>(ZLandroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/CharSequence;JLjava/lang/String;Landroid/graphics/Bitmap;Lcom/android/mms/data/Contact;IJLandroid/net/Uri;)V

    return-object v4

    .line 971
    .end local v9           #ticker:Ljava/lang/CharSequence;
    .end local v12           #senderInfoName:Ljava/lang/String;
    .end local v20           #senderInfo:Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v6

    .line 972
    const/high16 v4, 0x3400

    invoke-virtual {v6, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method public static getNotificationProfileByThreadId(Landroid/content/Context;J)Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    .locals 21
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 1841
    new-instance v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;

    invoke-direct {v14}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;-><init>()V

    .line 1843
    .local v14, np:Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v15

    .line 1844
    .local v15, prefs:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_enable_notifications"

    const/4 v4, 0x1

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appNotificationEnabled:Z

    .line 1845
    iget-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appNotificationEnabled:Z

    if-nez v2, :cond_1

    .line 1846
    const-string v2, "Mms:app"

    const-string v4, "app notification set disabled!"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :cond_0
    :goto_0
    return-object v14

    .line 1849
    :cond_1
    const-string v2, "pref_key_mute"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1850
    .local v13, muteStr:Ljava/lang/String;
    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v4, v2

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    .line 1851
    const-string v2, "mute_start"

    const-wide/16 v4, 0x0

    invoke-interface {v15, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMuteStart:J

    .line 1852
    const-string v2, "pref_key_vibrate"

    const/4 v4, 0x1

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appVibrate:Z

    .line 1853
    const/4 v2, -0x1

    const/4 v4, 0x1

    invoke-static {v2, v4}, Lcom/android/mms/transaction/MessagingNotification;->getCurrentCardNotify(IZ)Ljava/lang/String;

    move-result-object v2

    const-string v4, ""

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appRing:Ljava/lang/String;

    .line 1854
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before check: appNotificationEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appNotificationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappMuteStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMuteStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappRingtone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appRing:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappVibrate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appVibrate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1860
    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMuteStart:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_2

    .line 1861
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .line 1862
    .local v10, currentTime:J
    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    iget-wide v6, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMuteStart:J

    const-wide/16 v19, 0x3e8

    div-long v6, v6, v19

    add-long/2addr v4, v6

    cmp-long v2, v4, v10

    if-gtz v2, :cond_2

    .line 1863
    const-string v2, "Mms:app"

    const-string v4, "thread mute timeout, reset to default."

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1864
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    .line 1865
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMuteStart:J

    .line 1866
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1867
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "mute_start"

    const-wide/16 v4, 0x0

    invoke-interface {v12, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1868
    const-string v2, "pref_key_mute"

    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1869
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1872
    .end local v10           #currentTime:J
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_2
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after check: appNotificationEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appNotificationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMute:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappMuteStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appMuteStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappRingtone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appRing:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tappVibrate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->appVibrate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    const-string v2, "for_chat_settings_pref"

    const-wide/16 v4, 0x0

    invoke-interface {v15, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v17

    .line 1880
    .local v17, tid:J
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Thread Id in preference is:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v17

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1881
    const-wide/16 v4, 0x0

    cmp-long v2, v17, v4

    if-lez v2, :cond_4

    cmp-long v2, v17, p1

    if-nez v2, :cond_4

    .line 1883
    const-string v2, "pref_key_enable_notifications_for_chat"

    const/4 v4, 0x1

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadNotificationEnabled:Z

    .line 1884
    const-string v2, "pref_key_mute_for_chat"

    const/4 v4, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 1885
    invoke-static {v13}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    .line 1886
    const-string v2, "chat_mute_start"

    const-wide/16 v4, 0x0

    invoke-interface {v15, v2, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    .line 1887
    const-string v2, "pref_key_ringtone_for_chat"

    const-string v4, ""

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    .line 1888
    const-string v2, "pref_key_vibrate_for_chat"

    const/4 v4, 0x1

    invoke-interface {v15, v2, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadVibrate:Z

    .line 1890
    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 1891
    const-string v2, "Mms:app"

    const-string v4, "thread mute timeout, reset to default."

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1892
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .line 1893
    .restart local v10       #currentTime:J
    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    iget-wide v6, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    const-wide/16 v19, 0x3e8

    div-long v6, v6, v19

    add-long/2addr v4, v6

    cmp-long v2, v4, v10

    if-gtz v2, :cond_3

    .line 1894
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    .line 1895
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    .line 1896
    invoke-interface {v15}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1897
    .restart local v12       #editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "chat_mute_start"

    const-wide/16 v4, 0x0

    invoke-interface {v12, v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1898
    const-string v2, "pref_key_mute_for_chat"

    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v12, v2, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1899
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1959
    .end local v10           #currentTime:J
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_3
    :goto_1
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "after check: threadNotificationEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadNotificationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadMuteStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadRingtone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadVibrate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadVibrate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1965
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_0

    iget-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadNotificationEnabled:Z

    if-nez v2, :cond_0

    .line 1966
    const-string v2, "Mms:app"

    const-string v4, "thread notification set disabled!"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1902
    :cond_4
    const-wide/16 v4, 0x0

    cmp-long v2, p1, v4

    if-lez v2, :cond_3

    .line 1903
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->THREAD_SETTINGS_URI:Landroid/net/Uri;

    move-wide/from16 v0, p1

    long-to-int v4, v0

    int-to-long v4, v4

    invoke-static {v2, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    .line 1904
    .local v3, threadSettingsUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "notification_enable"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "mute"

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "mute_start"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "ringtone"

    aput-object v6, v4, v5

    const/4 v5, 0x4

    const-string v6, "vibrate"

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 1912
    .local v8, c:Landroid/database/Cursor;
    if-nez v8, :cond_5

    .line 1913
    const-string v2, "Mms:app"

    const-string v4, "cursor is null."

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1917
    :cond_5
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_7

    .line 1918
    const-string v2, "Mms:app"

    const-string v4, "cursor count is 0"

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1933
    :goto_2
    if-eqz v8, :cond_6

    .line 1934
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 1938
    :cond_6
    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    .line 1939
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v10, v4, v6

    .line 1940
    .restart local v10       #currentTime:J
    iget-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    const-wide/16 v6, 0xe10

    mul-long/2addr v4, v6

    iget-wide v6, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    const-wide/16 v19, 0x3e8

    div-long v6, v6, v19

    add-long/2addr v4, v6

    cmp-long v2, v4, v10

    if-gtz v2, :cond_3

    .line 1941
    const-string v2, "Mms:app"

    const-string v4, "thread mute timeout, reset to default."

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    .line 1943
    const-wide/16 v4, 0x0

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    .line 1944
    move-object/from16 v16, v3

    .line 1945
    .local v16, threadSettings:Landroid/net/Uri;
    move-object/from16 v9, p0

    .line 1946
    .local v9, ct:Landroid/content/Context;
    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/transaction/MessagingNotification$4;

    move-object/from16 v0, v16

    invoke-direct {v4, v9, v0}, Lcom/android/mms/transaction/MessagingNotification$4;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    const-string v5, "reset-mute-Thread"

    invoke-direct {v2, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto/16 :goto_1

    .line 1920
    .end local v9           #ct:Landroid/content/Context;
    .end local v10           #currentTime:J
    .end local v16           #threadSettings:Landroid/net/Uri;
    :cond_7
    :try_start_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1921
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_9

    const/4 v2, 0x0

    :goto_3
    iput-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadNotificationEnabled:Z

    .line 1922
    const/4 v2, 0x1

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    .line 1923
    const/4 v2, 0x2

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v4

    iput-wide v4, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    .line 1924
    const/4 v2, 0x3

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    .line 1925
    const/4 v2, 0x4

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-nez v2, :cond_a

    const/4 v2, 0x0

    :goto_4
    iput-boolean v2, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadVibrate:Z

    .line 1926
    const-string v2, "Mms:app"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "before check: threadNotificationEnabled = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadNotificationEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadMute = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMute:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadMuteStart = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadMuteStart:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadRingtone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", \tthreadVibrate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, v14, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadVibrate:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 1933
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_8

    .line 1934
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_8
    throw v2

    .line 1921
    :cond_9
    const/4 v2, 0x1

    goto :goto_3

    .line 1925
    :cond_a
    const/4 v2, 0x1

    goto :goto_4
.end method

.method public static getSlotId()I
    .locals 1

    .prologue
    .line 2088
    sget v0, Lcom/android/mms/transaction/MessagingNotification;->mSlotId:I

    return v0
.end method

.method private static final getSmsNewDeliveryInfo(Landroid/content/Context;)Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;
    .locals 13
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 809
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 810
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_STATUS_PROJECTION:[Ljava/lang/String;

    const-string v4, "((type = 2 OR type = 4) AND (status = 0 OR status = 2 OR status = 32))"

    const-string v6, "date_sent"

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 814
    .local v9, cursor:Landroid/database/Cursor;
    if-nez v9, :cond_0

    .line 833
    :goto_0
    return-object v5

    .line 819
    :cond_0
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToLast()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    .line 833
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 823
    :cond_1
    const/4 v0, 0x2

    :try_start_1
    invoke-interface {v9, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 824
    .local v7, address:Ljava/lang/String;
    const-wide/16 v11, 0xbb8

    .line 826
    .local v11, timeMillis:J
    const/4 v0, 0x0

    invoke-static {v7, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v8

    .line 827
    .local v8, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v8}, Lcom/android/mms/data/Contact;->getNameAndNumber()Ljava/lang/String;

    move-result-object v10

    .line 829
    .local v10, name:Ljava/lang/String;
    new-instance v5, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;

    const v0, 0x7f0b02f0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v10, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0, v11, v12}, Lcom/android/mms/transaction/MessagingNotification$MmsSmsDeliveryInfo;-><init>(Ljava/lang/CharSequence;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 833
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .end local v7           #address:Ljava/lang/String;
    .end local v8           #contact:Lcom/android/mms/data/Contact;
    .end local v10           #name:Ljava/lang/String;
    .end local v11           #timeMillis:J
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getSmsThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 1643
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->SMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1652
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move-wide v0, v8

    .line 1663
    :goto_0
    return-wide v0

    .line 1657
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1663
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getThreadId(Landroid/content/Context;Landroid/net/Uri;)J
    .locals 10
    .parameter "context"
    .parameter "uri"

    .prologue
    const-wide/16 v8, -0x2

    const/4 v4, 0x0

    .line 1674
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v2, p1

    move-object v5, v4

    move-object v6, v4

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 1683
    .local v7, cursor:Landroid/database/Cursor;
    if-nez v7, :cond_0

    move-wide v0, v8

    .line 1694
    :goto_0
    return-wide v0

    .line 1688
    :cond_0
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1689
    const-string v0, "thread_id"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 1694
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_1
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    move-wide v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getTongString(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/net/Uri;
    .locals 8
    .parameter "context"
    .parameter "ringtone"
    .parameter "slotId"
    .parameter "getSlot"

    .prologue
    const/4 v4, 0x1

    .line 2091
    const/4 v2, -0x1

    .line 2092
    .local v2, tmpSlotId:I
    if-eqz p3, :cond_2

    .line 2093
    invoke-static {}, Lcom/android/mms/transaction/MessagingNotification;->getSlotId()I

    move-result v2

    .line 2097
    :goto_0
    const-string v5, "Mms:app"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "new slotId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2098
    const/4 v3, 0x0

    .line 2099
    .local v3, vipMode:Z
    move-object v1, p1

    .line 2101
    .local v1, mRingtone:Landroid/net/Uri;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vipmode_settings"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v4, :cond_3

    move v3, v4

    .line 2103
    :goto_1
    const-string v5, "Mms:app"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "vipMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2108
    :goto_2
    if-eqz v3, :cond_1

    .line 2110
    if-nez v2, :cond_4

    .line 2111
    const/16 v4, 0x40

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    .line 2115
    :cond_0
    :goto_3
    const-string v4, "Mms:app"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "---2---ringtone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2116
    const/4 v4, -0x1

    invoke-static {v4}, Lcom/android/mms/transaction/MessagingNotification;->setSlotId(I)V

    .line 2119
    :cond_1
    return-object v1

    .line 2095
    .end local v1           #mRingtone:Landroid/net/Uri;
    .end local v3           #vipMode:Z
    :cond_2
    move v2, p2

    goto :goto_0

    .line 2101
    .restart local v1       #mRingtone:Landroid/net/Uri;
    .restart local v3       #vipMode:Z
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 2104
    :catch_0
    move-exception v0

    .line 2105
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v5, "Mms:app"

    const-string v6, "getTongString---SettingNotFoundException"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 2112
    .end local v0           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_4
    if-ne v2, v4, :cond_0

    .line 2113
    const/16 v4, 0x80

    invoke-static {p0, v4}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    goto :goto_3
.end method

.method private static getUndeliveredMessageCount(Landroid/content/Context;[J)I
    .locals 11
    .parameter "context"
    .parameter "threadIdResult"

    .prologue
    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 1535
    const-string v0, "Mms:app"

    const-string v1, "getUndeliveredMessageCount"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1537
    const-string v4, "read=0"

    .line 1542
    .local v4, where:Ljava/lang/String;
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->UNDELIVERED_URI:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/mms/MmsConfig;->getUndeliveryMmsQueryUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v2

    .line 1543
    .local v2, queryUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->MMS_THREAD_ID_PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1547
    .local v10, undeliveredCursor:Landroid/database/Cursor;
    if-nez v10, :cond_0

    .line 1570
    :goto_0
    return v7

    .line 1550
    :cond_0
    invoke-interface {v10}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1552
    .local v7, count:I
    if-eqz p1, :cond_3

    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1553
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    aput-wide v5, p1, v0

    .line 1555
    array-length v0, p1

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    .line 1557
    const/4 v0, 0x0

    aget-wide v8, p1, v0

    .line 1558
    .local v8, firstId:J
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1559
    const/4 v0, 0x0

    invoke-interface {v10, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    cmp-long v0, v0, v8

    if-eqz v0, :cond_1

    .line 1560
    const-wide/16 v8, 0x0

    .line 1564
    :cond_2
    const/4 v0, 0x1

    aput-wide v8, p1, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1568
    .end local v8           #firstId:J
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 275
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 276
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 279
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationDeletedReceiver:Lcom/android/mms/transaction/MessagingNotification$OnDeletedReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 280
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sPduPersister:Lcom/google/android/mms/pdu/PduPersister;

    .line 283
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.mms.NOTIFICATION_DELETED_ACTION"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    .line 285
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    sput v2, Lcom/android/mms/transaction/MessagingNotification;->sScreenDensity:F

    .line 287
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_0

    .line 289
    :try_start_0
    sget-object v3, Lcom/android/mms/transaction/MessagingNotification;->sToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :try_start_1
    new-instance v2, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    const/16 v5, 0x50

    invoke-direct {v2, v4, v5}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sToneGenerator:Landroid/media/ToneGenerator;

    .line 291
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 297
    :cond_0
    :goto_0
    new-instance v2, Landroid/media/ToneGenerator;

    const/4 v3, 0x0

    const/16 v4, 0x64

    invoke-direct {v2, v3, v4}, Landroid/media/ToneGenerator;-><init>(II)V

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sMuteModeToneGenerator:Landroid/media/ToneGenerator;

    .line 298
    return-void

    .line 291
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    .line 292
    :catch_0
    move-exception v0

    .line 293
    .local v0, e:Ljava/lang/RuntimeException;
    const-string v2, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v2, 0x0

    sput-object v2, Lcom/android/mms/transaction/MessagingNotification;->sToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_0
.end method

.method private static isBluetoothHandsetOn(Landroid/content/Context;)Z
    .locals 11
    .parameter "context"

    .prologue
    const/4 v8, 0x1

    .line 2026
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2028
    .local v0, bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    new-instance v7, Lcom/android/mms/transaction/MessagingNotification$5;

    invoke-direct {v7}, Lcom/android/mms/transaction/MessagingNotification$5;-><init>()V

    .line 2041
    .local v7, profileListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;
    invoke-virtual {v0, p0, v7, v8}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 2042
    const/4 v5, 0x0

    .line 2043
    .local v5, headsetIsOn:Z
    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v8, :cond_4

    .line 2044
    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v8}, Landroid/bluetooth/BluetoothHeadset;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 2045
    .local v3, devicess:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    if-eqz v3, :cond_3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 2046
    const-string v8, "Mms:app"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "headset device\'s number:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2047
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 2048
    .local v2, device:Landroid/bluetooth/BluetoothDevice;
    sget-object v8, Lcom/android/mms/transaction/MessagingNotification;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v8, v2}, Landroid/bluetooth/BluetoothHeadset;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    .line 2049
    .local v1, connectState:I
    if-eqz v1, :cond_0

    const/4 v8, 0x3

    if-ne v1, v8, :cond_1

    .line 2051
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2053
    :cond_1
    const/4 v5, 0x1

    .line 2066
    .end local v1           #connectState:I
    .end local v2           #device:Landroid/bluetooth/BluetoothDevice;
    .end local v3           #devicess:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    .end local v6           #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    const/4 v8, 0x1

    :try_start_0
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->sBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v8, v9}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2070
    :goto_2
    return v5

    .line 2058
    .restart local v3       #devicess:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_3
    const-string v8, "Mms:app"

    const-string v9, "headset device\'s number:0"

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    const/4 v5, 0x0

    goto :goto_1

    .line 2062
    .end local v3           #devicess:Ljava/util/List;,"Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_4
    const/4 v5, 0x0

    goto :goto_1

    .line 2067
    :catch_0
    move-exception v4

    .line 2068
    .local v4, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "Mms:app"

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2
.end method

.method public static isFailedToDeliver(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1629
    if-eqz p0, :cond_0

    const-string v1, "undelivered_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isFailedToDownload(Landroid/content/Intent;)Z
    .locals 2
    .parameter "intent"

    .prologue
    const/4 v0, 0x0

    .line 1633
    if-eqz p0, :cond_0

    const-string v1, "failed_download_flag"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private static isMuteOrVibrate(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x2

    const/4 v1, 0x1

    .line 2074
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 2075
    .local v0, audioManager:Landroid/media/AudioManager;
    const-string v2, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Audio manager ringer mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2076
    const-string v2, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stream volume = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2077
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v2

    if-eq v1, v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V
    .locals 3
    .parameter "context"
    .parameter "newMsgThreadId"
    .parameter "isStatusMessage"

    .prologue
    .line 326
    const-string v0, "Mms:app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nonBlockingUpdateNewMessageIndicator, newMsgThreadId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " isStatusMessage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/transaction/MessagingNotification$1;-><init>(Landroid/content/Context;JZ)V

    const-string v2, "MessagingNotification.nonBlockingUpdateNewMessageIndicator"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 334
    return-void
.end method

.method public static nonBlockingUpdateSendFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1574
    new-instance v0, Lcom/android/mms/transaction/MessagingNotification$3;

    invoke-direct {v0, p0}, Lcom/android/mms/transaction/MessagingNotification$3;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1588
    return-void
.end method

.method public static notifyClassZeroMessage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 10
    .parameter "context"
    .parameter "address"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x1

    .line 1702
    const-string v7, "Mms:app"

    const-string v8, "notifyClassZeroMessage"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 1705
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v7, "pref_key_enable_notifications"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1706
    .local v0, enabled:Z
    const-string v7, "Mms:app"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyClassZeroMessage, enabled = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    if-nez v0, :cond_0

    .line 1708
    const/4 v6, 0x0

    .line 1726
    :goto_0
    return v6

    .line 1711
    :cond_0
    const-string v7, "notification"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1713
    .local v1, nm:Landroid/app/NotificationManager;
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 1715
    .local v2, notification:Landroid/app/Notification;
    const/4 v7, -0x1

    invoke-static {v7, v6}, Lcom/android/mms/transaction/MessagingNotification;->getCurrentCardNotify(IZ)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1716
    .local v4, ringtoneStr:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1717
    .local v3, ringtone:Landroid/net/Uri;
    :goto_1
    invoke-static {p0, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->processNotificationSound(Landroid/content/Context;Landroid/app/Notification;Landroid/net/Uri;)V

    .line 1719
    iput-object p1, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1720
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x1

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 1721
    iget v7, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v2, Landroid/app/Notification;->flags:I

    .line 1722
    const v7, -0xff0100

    iput v7, v2, Landroid/app/Notification;->ledARGB:I

    .line 1723
    const/16 v7, 0x1f4

    iput v7, v2, Landroid/app/Notification;->ledOnMS:I

    .line 1724
    const/16 v7, 0x7d0

    iput v7, v2, Landroid/app/Notification;->ledOffMS:I

    .line 1725
    const/16 v7, 0x15be

    invoke-virtual {v1, v7, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_0

    .line 1716
    .end local v3           #ringtone:Landroid/net/Uri;
    :cond_1
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    goto :goto_1
.end method

.method public static notifyDownloadFailed(Landroid/content/Context;J)V
    .locals 2
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 1382
    const-string v0, "Mms:app"

    const-string v1, "notifyDownloadFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1383
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, p1, p2, v1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1384
    return-void
.end method

.method private static notifyFailed(Landroid/content/Context;ZJZ)V
    .locals 29
    .parameter "context"
    .parameter "isDownload"
    .parameter "threadId"
    .parameter "noisy"

    .prologue
    .line 1401
    invoke-static/range {p0 .. p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v13

    .line 1402
    .local v13, enabled:Z
    if-nez v13, :cond_1

    .line 1523
    :cond_0
    :goto_0
    return-void

    .line 1413
    :cond_1
    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v15, v0, [J

    fill-array-data v15, :array_0

    .line 1414
    .local v15, msgThreadId:[J
    move-object/from16 v0, p0

    invoke-static {v0, v15}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v24

    .line 1415
    .local v24, totalFailedCount:I
    if-nez v24, :cond_2

    if-eqz p1, :cond_0

    .line 1422
    :cond_2
    const/16 v25, 0x1

    aget-wide v25, v15, v25

    const-wide/16 v27, 0x0

    cmp-long v25, v25, v27

    if-nez v25, :cond_3

    if-eqz p1, :cond_8

    :cond_3
    const/4 v4, 0x1

    .line 1425
    .local v4, allFailedInSameThread:Z
    :goto_1
    new-instance v17, Landroid/app/Notification;

    invoke-direct/range {v17 .. v17}, Landroid/app/Notification;-><init>()V

    .line 1428
    .local v17, notification:Landroid/app/Notification;
    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_9

    .line 1429
    const v25, 0x7f0b02f2

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v28

    aput-object v28, v26, v27

    move-object/from16 v0, p0

    move/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 1431
    .local v11, description:Ljava/lang/String;
    const v25, 0x7f0b02f3

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1440
    .local v23, title:Ljava/lang/String;
    :goto_2
    invoke-static/range {p0 .. p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v22

    .line 1441
    .local v22, taskStackBuilder:Landroid/app/TaskStackBuilder;
    if-eqz v4, :cond_c

    .line 1442
    new-instance v14, Landroid/content/Intent;

    const-class v25, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1443
    .local v14, failedIntent:Landroid/content/Intent;
    if-eqz p1, :cond_b

    .line 1445
    const-string v25, "failed_download_flag"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1450
    :goto_3
    const-string v25, "thread_id"

    move-object/from16 v0, v25

    move-wide/from16 v1, p2

    invoke-virtual {v14, v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1451
    const-class v25, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 1457
    :goto_4
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v25

    if-eqz v25, :cond_4

    .line 1458
    if-eqz p1, :cond_d

    .line 1459
    new-instance v14, Landroid/content/Intent;

    .end local v14           #failedIntent:Landroid/content/Intent;
    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1460
    .restart local v14       #failedIntent:Landroid/content/Intent;
    const/high16 v25, 0x2400

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1463
    const-string v25, "floderview_key"

    const/16 v26, 0x0

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1464
    const-string v25, "com.android.mms"

    const-string v26, "com.android.mms.ui.FolderViewList"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1475
    :cond_4
    :goto_5
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1477
    const v25, 0x7f020169

    move/from16 v0, v25

    move-object/from16 v1, v17

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 1479
    move-object/from16 v0, v23

    move-object/from16 v1, v17

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 1481
    const/16 v25, 0x0

    const/high16 v26, 0x800

    move-object/from16 v0, v22

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v23

    move-object/from16 v3, v25

    invoke-virtual {v0, v1, v2, v11, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 1484
    if-eqz p4, :cond_7

    .line 1485
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v21

    .line 1486
    .local v21, sp:Landroid/content/SharedPreferences;
    const-string v25, "pref_key_mute"

    const/16 v26, 0x0

    invoke-static/range {v26 .. v26}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1487
    .local v16, muteStr:Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    move/from16 v0, v25

    int-to-long v5, v0

    .line 1488
    .local v5, appMute:J
    const-string v25, "mute_start"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-wide/from16 v2, v26

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v7

    .line 1489
    .local v7, appMuteStart:J
    const-wide/16 v25, 0x0

    cmp-long v25, v7, v25

    if-lez v25, :cond_5

    const-wide/16 v25, 0x0

    cmp-long v25, v5, v25

    if-lez v25, :cond_5

    .line 1490
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v25

    const-wide/16 v27, 0x3e8

    div-long v9, v25, v27

    .line 1491
    .local v9, currentTime:J
    const-wide/16 v25, 0xe10

    mul-long v25, v25, v5

    const-wide/16 v27, 0x3e8

    div-long v27, v7, v27

    add-long v25, v25, v27

    cmp-long v25, v25, v9

    if-gtz v25, :cond_5

    .line 1492
    const-string v25, "Mms:app"

    const-string v26, "notifyFailed appMute timeout, reset to default."

    invoke-static/range {v25 .. v26}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    const-wide/16 v5, 0x0

    .line 1494
    const-wide/16 v7, 0x0

    .line 1495
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    .line 1496
    .local v12, editor:Landroid/content/SharedPreferences$Editor;
    const-string v25, "mute_start"

    const-wide/16 v26, 0x0

    move-object/from16 v0, v25

    move-wide/from16 v1, v26

    invoke-interface {v12, v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1497
    const-string v25, "pref_key_mute"

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1498
    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1502
    .end local v9           #currentTime:J
    .end local v12           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_5
    const/16 v19, 0x0

    .line 1503
    .local v19, ringtone:Landroid/net/Uri;
    const-wide/16 v25, 0x0

    cmp-long v25, v5, v25

    if-nez v25, :cond_6

    .line 1506
    const/16 v25, -0x1

    const/16 v26, 0x1

    invoke-static/range {v25 .. v26}, Lcom/android/mms/transaction/MessagingNotification;->getCurrentCardNotify(IZ)Ljava/lang/String;

    move-result-object v25

    const/16 v26, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 1507
    .local v20, ringtoneStr:Ljava/lang/String;
    invoke-static/range {v20 .. v20}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v25

    if-eqz v25, :cond_e

    const/16 v19, 0x0

    .line 1508
    :goto_6
    const/16 v25, -0x1

    const/16 v26, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->getTongString(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/net/Uri;

    move-result-object v19

    .line 1511
    .end local v20           #ringtoneStr:Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v19

    invoke-static {v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->processNotificationSound(Landroid/content/Context;Landroid/app/Notification;Landroid/net/Uri;)V

    .line 1515
    .end local v5           #appMute:J
    .end local v7           #appMuteStart:J
    .end local v16           #muteStr:Ljava/lang/String;
    .end local v19           #ringtone:Landroid/net/Uri;
    .end local v21           #sp:Landroid/content/SharedPreferences;
    :cond_7
    const-string v25, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/app/NotificationManager;

    .line 1518
    .local v18, notificationMgr:Landroid/app/NotificationManager;
    if-eqz p1, :cond_f

    .line 1519
    const/16 v25, 0x213

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1422
    .end local v4           #allFailedInSameThread:Z
    .end local v11           #description:Ljava/lang/String;
    .end local v14           #failedIntent:Landroid/content/Intent;
    .end local v17           #notification:Landroid/app/Notification;
    .end local v18           #notificationMgr:Landroid/app/NotificationManager;
    .end local v22           #taskStackBuilder:Landroid/app/TaskStackBuilder;
    .end local v23           #title:Ljava/lang/String;
    :cond_8
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 1433
    .restart local v4       #allFailedInSameThread:Z
    .restart local v17       #notification:Landroid/app/Notification;
    :cond_9
    if-eqz p1, :cond_a

    const v25, 0x7f0b0306

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 1437
    .restart local v23       #title:Ljava/lang/String;
    :goto_7
    const v25, 0x7f0b0308

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .restart local v11       #description:Ljava/lang/String;
    goto/16 :goto_2

    .line 1433
    .end local v11           #description:Ljava/lang/String;
    .end local v23           #title:Ljava/lang/String;
    :cond_a
    const v25, 0x7f0b0307

    move-object/from16 v0, p0

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    goto :goto_7

    .line 1447
    .restart local v11       #description:Ljava/lang/String;
    .restart local v14       #failedIntent:Landroid/content/Intent;
    .restart local v22       #taskStackBuilder:Landroid/app/TaskStackBuilder;
    .restart local v23       #title:Ljava/lang/String;
    :cond_b
    const/16 v25, 0x0

    aget-wide p2, v15, v25

    .line 1448
    const-string v25, "undelivered_flag"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_3

    .line 1453
    .end local v14           #failedIntent:Landroid/content/Intent;
    :cond_c
    new-instance v14, Landroid/content/Intent;

    const-class v25, Lcom/android/mms/ui/ConversationList;

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-direct {v14, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v14       #failedIntent:Landroid/content/Intent;
    goto/16 :goto_4

    .line 1466
    :cond_d
    new-instance v14, Landroid/content/Intent;

    .end local v14           #failedIntent:Landroid/content/Intent;
    const-string v25, "android.intent.action.MAIN"

    move-object/from16 v0, v25

    invoke-direct {v14, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1467
    .restart local v14       #failedIntent:Landroid/content/Intent;
    const/high16 v25, 0x2400

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1470
    const-string v25, "floderview_key"

    const/16 v26, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1471
    const-string v25, "com.android.mms"

    const-string v26, "com.android.mms.ui.FolderViewList"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-virtual {v14, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_5

    .line 1507
    .restart local v5       #appMute:J
    .restart local v7       #appMuteStart:J
    .restart local v16       #muteStr:Ljava/lang/String;
    .restart local v19       #ringtone:Landroid/net/Uri;
    .restart local v20       #ringtoneStr:Ljava/lang/String;
    .restart local v21       #sp:Landroid/content/SharedPreferences;
    :cond_e
    invoke-static/range {v20 .. v20}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    goto/16 :goto_6

    .line 1521
    .end local v5           #appMute:J
    .end local v7           #appMuteStart:J
    .end local v16           #muteStr:Ljava/lang/String;
    .end local v19           #ringtone:Landroid/net/Uri;
    .end local v20           #ringtoneStr:Ljava/lang/String;
    .end local v21           #sp:Landroid/content/SharedPreferences;
    .restart local v18       #notificationMgr:Landroid/app/NotificationManager;
    :cond_f
    const/16 v25, 0x315

    move-object/from16 v0, v18

    move/from16 v1, v25

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto/16 :goto_0

    .line 1413
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public static notifySendFailed(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 1388
    const-string v0, "Mms:app"

    const-string v1, "notifySendFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    const-wide/16 v0, 0x0

    invoke-static {p0, v2, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1390
    return-void
.end method

.method public static notifySendFailed(Landroid/content/Context;Z)V
    .locals 3
    .parameter "context"
    .parameter "noisy"

    .prologue
    .line 1394
    const-string v0, "Mms:app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifySendFailed, noisy = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1395
    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p0, v0, v1, v2, p1}, Lcom/android/mms/transaction/MessagingNotification;->notifyFailed(Landroid/content/Context;ZJZ)V

    .line 1396
    return-void
.end method

.method private static playInConversationNotificationSound(Landroid/content/Context;Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;)V
    .locals 8
    .parameter "context"
    .parameter "notiProf"

    .prologue
    .line 403
    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->getRingtoneStr()Ljava/lang/String;

    move-result-object v6

    .line 404
    .local v6, ringtoneStr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->needMute()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    :cond_0
    :goto_0
    return-void

    .line 408
    :cond_1
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 411
    .local v2, ringtoneUri:Landroid/net/Uri;
    sget-object v7, Lcom/android/mms/transaction/MessagingNotification;->sPlayingInConversationSoundLock:Ljava/lang/Object;

    monitor-enter v7

    .line 412
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    if-nez v0, :cond_2

    .line 413
    new-instance v0, Lcom/android/mms/transaction/NotificationPlayer;

    const-string v1, "Mms:app"

    invoke-direct {v0, v1}, Lcom/android/mms/transaction/NotificationPlayer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    .line 415
    :cond_2
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NotificationPlayer;->stop()V

    .line 416
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    const/4 v3, 0x0

    const/4 v4, 0x5

    const/high16 v5, 0x3e80

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/mms/transaction/NotificationPlayer;->play(Landroid/content/Context;Landroid/net/Uri;ZIF)V

    .line 418
    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static playTone(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "tone"

    .prologue
    .line 1773
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1774
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v1

    .line 1775
    .local v1, ringerMode:I
    if-eqz v1, :cond_0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1793
    :cond_0
    :goto_0
    return-void

    .line 1780
    :cond_1
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_2

    .line 1781
    const-string v2, "Mms:app"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playTone: sToneGenerator == null, tone: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1785
    :cond_2
    sget-object v2, Lcom/android/mms/transaction/MessagingNotification;->sToneGenerator:Landroid/media/ToneGenerator;

    const/16 v3, 0x96

    invoke-virtual {v2, p1, v3}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 1790
    const-string v2, "SetWarningTone=16"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected static processNotificationSound(Landroid/content/Context;Landroid/app/Notification;Landroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "notification"
    .parameter "ringtone"

    .prologue
    .line 1732
    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    .line 1733
    .local v1, state:I
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1738
    .local v0, audioManager:Landroid/media/AudioManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->shouldVibrate(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1740
    iget v2, p1, Landroid/app/Notification;->defaults:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p1, Landroid/app/Notification;->defaults:I

    .line 1742
    :cond_0
    iput-object p2, p1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 1743
    return-void
.end method

.method public static setCurrentlyDisplayedThreadId(J)V
    .locals 2
    .parameter "threadId"

    .prologue
    .line 310
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadLock:Ljava/lang/Object;

    monitor-enter v1

    .line 311
    :try_start_0
    sput-wide p0, Lcom/android/mms/transaction/MessagingNotification;->sCurrentlyDisplayedThreadId:J

    .line 312
    monitor-exit v1

    .line 313
    return-void

    .line 312
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static setSlotId(I)V
    .locals 3
    .parameter "slotId"

    .prologue
    .line 2084
    const-string v0, "Mms:app"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSlotId slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    sput p0, Lcom/android/mms/transaction/MessagingNotification;->mSlotId:I

    .line 2086
    return-void
.end method

.method public static stopInConversationNotificationSound()V
    .locals 2

    .prologue
    .line 1973
    sget-object v1, Lcom/android/mms/transaction/MessagingNotification;->sPlayingInConversationSoundLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1974
    :try_start_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    if-nez v0, :cond_0

    .line 1975
    monitor-exit v1

    .line 1980
    :goto_0
    return-void

    .line 1977
    :cond_0
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    invoke-virtual {v0}, Lcom/android/mms/transaction/NotificationPlayer;->stop()V

    .line 1978
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/transaction/MessagingNotification;->sNotificationPlayer:Lcom/android/mms/transaction/NotificationPlayer;

    .line 1979
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateDeliveryNotification(Landroid/content/Context;ZLjava/lang/CharSequence;J)V
    .locals 2
    .parameter "context"
    .parameter "isStatusMessage"
    .parameter "message"
    .parameter "timeMillis"

    .prologue
    .line 1013
    if-nez p1, :cond_1

    .line 1028
    :cond_0
    :goto_0
    return-void

    .line 1018
    :cond_1
    invoke-static {p0}, Lcom/android/mms/ui/NotificationPreferenceActivity;->getNotificationEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    sget-object v0, Lcom/android/mms/transaction/MessagingNotification;->sToastHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/mms/transaction/MessagingNotification$2;

    invoke-direct {v1, p0, p2, p3, p4}, Lcom/android/mms/transaction/MessagingNotification$2;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static updateDownloadFailedNotification(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 1623
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->getDownloadFailedMessageCount(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 1624
    const/16 v0, 0x213

    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1626
    :cond_0
    return-void
.end method

.method private static updateNotification(Landroid/content/Context;ZIJLcom/android/mms/transaction/MessagingNotification$NotificationProfile;)V
    .locals 41
    .parameter "context"
    .parameter "isNew"
    .parameter "uniqueThreadCount"
    .parameter "threadId"
    .parameter "notiProf"

    .prologue
    .line 1044
    const-string v37, "Mms:app"

    new-instance v38, Ljava/lang/StringBuilder;

    invoke-direct/range {v38 .. v38}, Ljava/lang/StringBuilder;-><init>()V

    const-string v39, "isNew="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\tuniqueThreadCount="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string v39, "\tthreadId"

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-wide/from16 v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v38

    invoke-virtual/range {v38 .. v38}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v38

    invoke-static/range {v37 .. v38}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->notificationEnabled()Z

    move-result v37

    if-nez v37, :cond_1

    .line 1337
    :cond_0
    :goto_0
    return-void

    .line 1054
    :cond_1
    const/16 v22, 0x0

    .line 1055
    .local v22, mostRecentNotification:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    const/16 v20, 0x0

    .line 1056
    .local v20, messageCount:I
    sget-object v38, Lcom/android/mms/transaction/MessagingNotification;->objectLock:Ljava/lang/Object;

    monitor-enter v38

    .line 1057
    :try_start_0
    sget v37, Lcom/android/mms/transaction/MessagingNotification;->sMmsUnReadCount:I

    sget v39, Lcom/android/mms/transaction/MessagingNotification;->sSmsUnReadCount:I

    add-int v20, v37, v39

    .line 1059
    if-nez v20, :cond_2

    .line 1060
    const-string v37, "Mms:app"

    const-string v39, "updateNotification.messageCount is 0."

    move-object/from16 v0, v37

    move-object/from16 v1, v39

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1061
    monitor-exit v38

    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v37

    monitor-exit v38
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v37

    .line 1064
    :cond_2
    :try_start_1
    sget-object v37, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v37 .. v37}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v37

    move-object/from16 v0, v37

    check-cast v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-object/from16 v22, v0

    .line 1065
    monitor-exit v38
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    new-instance v37, Landroid/app/Notification$Builder;

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTimeMillis:J

    move-wide/from16 v38, v0

    invoke-virtual/range {v37 .. v39}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v24

    .line 1070
    .local v24, noti:Landroid/app/Notification$Builder;
    if-eqz p1, :cond_3

    .line 1071
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTicker:Ljava/lang/CharSequence;

    move-object/from16 v37, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1073
    :cond_3
    invoke-static/range {p0 .. p0}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v33

    .line 1085
    .local v33, taskStackBuilder:Landroid/app/TaskStackBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v28

    .line 1086
    .local v28, res:Landroid/content/res/Resources;
    const/16 v34, 0x0

    .line 1087
    .local v34, title:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1088
    .local v6, avatar:Landroid/graphics/Bitmap;
    const/16 v37, 0x1

    move/from16 v0, p2

    move/from16 v1, v37

    if-le v0, v1, :cond_8

    .line 1089
    new-instance v18, Landroid/content/Intent;

    const-string v37, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v18, mainActivityIntent:Landroid/content/Intent;
    const/high16 v37, 0x3400

    move-object/from16 v0, v18

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1095
    const-string v37, "vnd.android-dir/mms-sms"

    move-object/from16 v0, v18

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1096
    move-object/from16 v0, v33

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    .line 1097
    const v37, 0x7f0b0346

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v34

    .line 1147
    .end local v18           #mainActivityIntent:Landroid/content/Intent;
    :goto_1
    const v37, 0x7f020168

    move-object/from16 v0, v24

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1149
    const-string v37, "notification"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/app/NotificationManager;

    .line 1153
    .local v23, nm:Landroid/app/NotificationManager;
    move-object/from16 v0, v24

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v37

    const/16 v38, 0x0

    const/high16 v39, 0x800

    move-object/from16 v0, v33

    move/from16 v1, v38

    move/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/app/TaskStackBuilder;->getPendingIntent(II)Landroid/app/PendingIntent;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v37

    const-string v38, "android.message"

    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->addKind(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v37

    const/16 v38, 0x0

    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    .line 1160
    const/4 v10, 0x0

    .line 1162
    .local v10, defaults:I
    if-eqz p1, :cond_7

    .line 1163
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v31

    .line 1182
    .local v31, sp:Landroid/content/SharedPreferences;
    const-string v37, "audio"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    .line 1190
    .local v5, audioManager:Landroid/media/AudioManager;
    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->needVibrate()Z

    move-result v37

    if-eqz v37, :cond_4

    .line 1191
    or-int/lit8 v10, v10, 0x2

    .line 1197
    :cond_4
    invoke-virtual/range {p5 .. p5}, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->needMute()Z

    move-result v37

    if-eqz v37, :cond_d

    const/16 v29, 0x0

    .line 1201
    .local v29, ringtoneStr:Ljava/lang/String;
    :goto_2
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_5

    if-eqz v29, :cond_6

    .line 1202
    :cond_5
    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    const/16 v38, -0x1

    const/16 v39, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    move/from16 v2, v38

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Lcom/android/mms/transaction/MessagingNotification;->getTongString(Landroid/content/Context;Landroid/net/Uri;IZ)Landroid/net/Uri;

    move-result-object v30

    .line 1203
    .local v30, ringtoneUri:Landroid/net/Uri;
    if-eqz v30, :cond_6

    .line 1204
    invoke-virtual/range {v30 .. v30}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v29

    .line 1208
    .end local v30           #ringtoneUri:Landroid/net/Uri;
    :cond_6
    const-string v37, "phone"

    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Landroid/telephony/TelephonyManager;

    invoke-virtual/range {v37 .. v37}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v32

    .line 1209
    .local v32, state:I
    if-eqz v32, :cond_f

    .line 1210
    const/16 v37, 0x10

    move-object/from16 v0, p0

    move/from16 v1, v37

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->playTone(Landroid/content/Context;I)V

    .line 1220
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v29           #ringtoneStr:Ljava/lang/String;
    .end local v31           #sp:Landroid/content/SharedPreferences;
    .end local v32           #state:I
    :cond_7
    :goto_3
    or-int/lit8 v10, v10, 0x4

    .line 1222
    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    .line 1225
    const/16 v37, 0x0

    sget-object v38, Lcom/android/mms/transaction/MessagingNotification;->sNotificationOnDeleteIntent:Landroid/content/Intent;

    const/16 v39, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1230
    const/16 v37, 0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_12

    .line 1234
    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1236
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v37, v0

    if-eqz v37, :cond_11

    .line 1239
    new-instance v37, Landroid/app/Notification$BigPictureStyle;

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mAttachmentBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v38, v0

    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v37

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatPictureMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v25

    .line 1326
    .local v25, notification:Landroid/app/Notification;
    :goto_4
    const/16 v37, 0x7b

    move-object/from16 v0, v23

    move/from16 v1, v37

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1328
    if-eqz p1, :cond_0

    .line 1329
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->handleNewNotification(Landroid/content/Context;I)V

    .line 1331
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v37

    if-eqz v37, :cond_0

    .line 1332
    invoke-static/range {p0 .. p0}, Lcom/android/mms/transaction/MessagingNotification;->wakeUpScreen(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 1099
    .end local v10           #defaults:I
    .end local v23           #nm:Landroid/app/NotificationManager;
    .end local v25           #notification:Landroid/app/Notification;
    :cond_8
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mTitle:Ljava/lang/String;

    move-object/from16 v34, v0

    .line 1100
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mSender:Lcom/android/mms/data/Contact;

    move-object/from16 v37, v0

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move-object/from16 v1, p0

    move-object/from16 v2, v38

    move-wide/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/mms/data/Contact;->getAvatar(Landroid/content/Context;Landroid/graphics/drawable/Drawable;J)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    check-cast v9, Landroid/graphics/drawable/BitmapDrawable;

    .line 1102
    .local v9, contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    if-eqz v9, :cond_a

    .line 1105
    invoke-virtual {v9}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1106
    if-eqz v6, :cond_a

    .line 1107
    const v37, 0x1050005

    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 1109
    .local v13, idealIconWidth:I
    const v37, 0x1050006

    move-object/from16 v0, v28

    move/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 1111
    .local v12, idealIconHeight:I
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v37

    move/from16 v0, v37

    if-ge v0, v12, :cond_9

    .line 1113
    const/16 v37, 0x1

    move/from16 v0, v37

    invoke-static {v6, v13, v12, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 1116
    :cond_9
    if-eqz v6, :cond_a

    .line 1117
    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    .line 1122
    .end local v12           #idealIconHeight:I
    .end local v13           #idealIconWidth:I
    :cond_a
    const-class v37, Lcom/android/mms/ui/ComposeMessageActivity;

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addParentStack(Ljava/lang/Class;)Landroid/app/TaskStackBuilder;

    .line 1126
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v37

    if-eqz v37, :cond_c

    .line 1128
    new-instance v8, Landroid/content/Intent;

    const-string v37, "android.intent.action.MAIN"

    move-object/from16 v0, v37

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1129
    .local v8, clickIntent:Landroid/content/Intent;
    const/high16 v37, 0x2400

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1131
    const-string v37, "floderview_key"

    const/16 v38, 0x0

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1132
    const-string v37, "com.android.mms"

    const-string v38, "com.android.mms.ui.FolderViewList"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    move-object/from16 v0, v22

    iget-boolean v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mIsSms:Z

    move/from16 v37, v0

    if-eqz v37, :cond_b

    const/16 v37, 0x1

    move/from16 v0, v20

    move/from16 v1, v37

    if-ne v0, v1, :cond_b

    .line 1135
    const-string v37, "msg_type"

    const/16 v38, 0x1

    move-object/from16 v0, v37

    move/from16 v1, v38

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1136
    const/16 v37, 0x0

    move/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1137
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mUri:Landroid/net/Uri;

    move-object/from16 v37, v0

    move-object/from16 v0, v37

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1138
    const-string v37, "com.android.mms"

    const-string v38, "com.android.mms.ui.FolderModeSmsViewer"

    move-object/from16 v0, v37

    move-object/from16 v1, v38

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1140
    :cond_b
    move-object/from16 v0, v33

    invoke-virtual {v0, v8}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    goto/16 :goto_1

    .line 1142
    .end local v8           #clickIntent:Landroid/content/Intent;
    :cond_c
    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mClickIntent:Landroid/content/Intent;

    move-object/from16 v37, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/TaskStackBuilder;->addNextIntent(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    goto/16 :goto_1

    .line 1197
    .end local v9           #contactDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .restart local v5       #audioManager:Landroid/media/AudioManager;
    .restart local v10       #defaults:I
    .restart local v23       #nm:Landroid/app/NotificationManager;
    .restart local v31       #sp:Landroid/content/SharedPreferences;
    :cond_d
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    move-object/from16 v37, v0

    invoke-static/range {v37 .. v37}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_e

    const/16 v37, -0x1

    const/16 v38, 0x1

    invoke-static/range {v37 .. v38}, Lcom/android/mms/transaction/MessagingNotification;->getCurrentCardNotify(IZ)Ljava/lang/String;

    move-result-object v37

    const/16 v38, 0x0

    move-object/from16 v0, v31

    move-object/from16 v1, v37

    move-object/from16 v2, v38

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_2

    :cond_e
    move-object/from16 v0, p5

    iget-object v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationProfile;->threadRing:Ljava/lang/String;

    move-object/from16 v29, v0

    goto/16 :goto_2

    .line 1212
    .restart local v29       #ringtoneStr:Ljava/lang/String;
    .restart local v32       #state:I
    :cond_f
    invoke-static/range {v29 .. v29}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v37

    if-eqz v37, :cond_10

    const/16 v37, 0x0

    :goto_5
    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto/16 :goto_3

    :cond_10
    invoke-static/range {v29 .. v29}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v37

    goto :goto_5

    .line 1246
    .end local v5           #audioManager:Landroid/media/AudioManager;
    .end local v29           #ringtoneStr:Ljava/lang/String;
    .end local v31           #sp:Landroid/content/SharedPreferences;
    .end local v32           #state:I
    :cond_11
    new-instance v37, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v38

    invoke-virtual/range {v37 .. v38}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v25

    .restart local v25       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1252
    .end local v25           #notification:Landroid/app/Notification;
    :cond_12
    const/16 v37, 0x1

    move/from16 v0, p2

    move/from16 v1, v37

    if-ne v0, v1, :cond_16

    .line 1256
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1257
    .local v7, buf:Landroid/text/SpannableStringBuilder;
    sget-object v37, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    sget-object v38, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v38 .. v38}, Ljava/util/SortedSet;->size()I

    move-result v38

    move/from16 v0, v38

    new-array v0, v0, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    move-object/from16 v38, v0

    invoke-interface/range {v37 .. v38}, Ljava/util/SortedSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1259
    .local v16, infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    .line 1260
    .local v17, len:I
    add-int/lit8 v11, v17, -0x1

    .local v11, i:I
    :goto_6
    if-ltz v11, :cond_14

    .line 1261
    aget-object v15, v16, v11

    .line 1263
    .local v15, info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatBigMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1265
    if-eqz v11, :cond_13

    .line 1266
    const/16 v37, 0xa

    move/from16 v0, v37

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 1260
    :cond_13
    add-int/lit8 v11, v11, -0x1

    goto :goto_6

    .line 1270
    .end local v15           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_14
    const v37, 0x7f0b0346

    const/16 v38, 0x1

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, p0

    move/from16 v1, v37

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1274
    new-instance v37, Landroid/app/Notification$BigTextStyle;

    move-object/from16 v0, v37

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    move-object/from16 v0, v37

    invoke-virtual {v0, v7}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v38

    if-nez v6, :cond_15

    const/16 v37, 0x0

    :goto_7
    move-object/from16 v0, v38

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Landroid/app/Notification$BigTextStyle;->build()Landroid/app/Notification;

    move-result-object v25

    .line 1280
    .restart local v25       #notification:Landroid/app/Notification;
    goto/16 :goto_4

    .line 1274
    .end local v25           #notification:Landroid/app/Notification;
    :cond_15
    const-string v37, " "

    goto :goto_7

    .line 1285
    .end local v7           #buf:Landroid/text/SpannableStringBuilder;
    .end local v11           #i:I
    .end local v16           #infos:[Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v17           #len:I
    :cond_16
    new-instance v21, Ljava/util/ArrayList;

    invoke-direct/range {v21 .. v21}, Ljava/util/ArrayList;-><init>()V

    .line 1287
    .local v21, mostRecentNotifPerThread:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    sget-object v38, Lcom/android/mms/transaction/MessagingNotification;->objectLock:Ljava/lang/Object;

    monitor-enter v38

    .line 1288
    :try_start_2
    new-instance v36, Ljava/util/HashSet;

    sget-object v37, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v37 .. v37}, Ljava/util/SortedSet;->size()I

    move-result v37

    invoke-direct/range {v36 .. v37}, Ljava/util/HashSet;-><init>(I)V

    .line 1289
    .local v36, uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    sget-object v37, Lcom/android/mms/transaction/MessagingNotification;->sNotificationSet:Ljava/util/SortedSet;

    invoke-interface/range {v37 .. v37}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v27

    .line 1290
    .local v27, notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    :cond_17
    :goto_8
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->hasNext()Z

    move-result v37

    if-eqz v37, :cond_18

    .line 1291
    invoke-interface/range {v27 .. v27}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1292
    .local v26, notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v37

    if-nez v37, :cond_17

    .line 1293
    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->mThreadId:J

    move-wide/from16 v39, v0

    invoke-static/range {v39 .. v40}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1294
    move-object/from16 v0, v21

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_8

    .line 1297
    .end local v26           #notificationInfo:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    .end local v27           #notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .end local v36           #uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :catchall_1
    move-exception v37

    monitor-exit v38
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v37

    .restart local v27       #notifications:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;>;"
    .restart local v36       #uniqueThreads:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    :cond_18
    :try_start_3
    monitor-exit v38
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1301
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/android/mms/transaction/MessagingNotification;->formatSenders(Landroid/content/Context;Ljava/util/ArrayList;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v24

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1302
    new-instance v14, Landroid/app/Notification$InboxStyle;

    move-object/from16 v0, v24

    invoke-direct {v14, v0}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 1306
    .local v14, inboxStyle:Landroid/app/Notification$InboxStyle;
    const-string v37, " "

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1311
    invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I

    move-result v35

    .line 1312
    .local v35, uniqueThreadMessageCount:I
    const/16 v37, 0x8

    move/from16 v0, v37

    move/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v19

    .line 1314
    .local v19, maxMessages:I
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_9
    move/from16 v0, v19

    if-ge v11, v0, :cond_19

    .line 1315
    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;

    .line 1316
    .restart local v15       #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    move-object/from16 v0, p0

    invoke-virtual {v15, v0}, Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;->formatInboxMessage(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v37

    move-object/from16 v0, v37

    invoke-virtual {v14, v0}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 1314
    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    .line 1318
    .end local v15           #info:Lcom/android/mms/transaction/MessagingNotification$NotificationInfo;
    :cond_19
    invoke-virtual {v14}, Landroid/app/Notification$InboxStyle;->build()Landroid/app/Notification;

    move-result-object v25

    .restart local v25       #notification:Landroid/app/Notification;
    goto/16 :goto_4
.end method

.method public static updateSendFailedNotificationForThread(Landroid/content/Context;J)V
    .locals 5
    .parameter "context"
    .parameter "threadId"

    .prologue
    .line 1594
    const/4 v1, 0x2

    new-array v0, v1, [J

    fill-array-data v0, :array_0

    .line 1595
    .local v0, msgThreadId:[J
    invoke-static {p0, v0}, Lcom/android/mms/transaction/MessagingNotification;->getUndeliveredMessageCount(Landroid/content/Context;[J)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    aget-wide v1, v0, v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    .line 1598
    const/16 v1, 0x315

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 1600
    :cond_0
    return-void

    .line 1594
    :array_0
    .array-data 0x8
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private static wakeUpScreen(Landroid/content/Context;)V
    .locals 12
    .parameter "context"

    .prologue
    .line 1988
    if-nez p0, :cond_1

    .line 2017
    :cond_0
    :goto_0
    return-void

    .line 1991
    :cond_1
    const-string v9, "audio"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1992
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v3

    .line 1993
    .local v3, hasInsertedHeadSet:Z
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isBluetoothHandsetOn(Landroid/content/Context;)Z

    move-result v4

    .line 1994
    .local v4, headsetIsOn:Z
    const-string v9, "Mms:app"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasInsertedHeadSet:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\tHeadsetIsOn:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1996
    const-string v9, "power"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    move-object v5, v9

    check-cast v5, Landroid/os/PowerManager;

    .line 1997
    .local v5, powerManager:Landroid/os/PowerManager;
    const/4 v6, 0x0

    .line 1998
    .local v6, wakeLock:Landroid/os/PowerManager$WakeLock;
    const v9, 0x3000001a

    const-string v10, "MMS_wake_lock"

    invoke-virtual {v5, v9, v10}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v6

    .line 2000
    const-wide/16 v7, 0x0

    .line 2002
    .local v7, wakeUpTime:J
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2003
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v9, "screen_off_timeout"

    invoke-static {v1, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    int-to-long v7, v9

    .line 2007
    .end local v1           #cr:Landroid/content/ContentResolver;
    :goto_1
    invoke-virtual {v6, v7, v8}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 2010
    invoke-static {p0}, Lcom/android/mms/transaction/MessagingNotification;->isMuteOrVibrate(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 2011
    const-string v9, "Mms:app"

    const-string v10, "Mute and Vibrate mode..."

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->sMuteModeToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v9, :cond_0

    .line 2013
    sget-object v9, Lcom/android/mms/transaction/MessagingNotification;->sMuteModeToneGenerator:Landroid/media/ToneGenerator;

    const/16 v10, 0x10

    const/16 v11, 0x1f4

    invoke-virtual {v9, v10, v11}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 2004
    :catch_0
    move-exception v2

    .line 2005
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v9, "Mms:app"

    const-string v10, "Exception occured in wakeupScreen()"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

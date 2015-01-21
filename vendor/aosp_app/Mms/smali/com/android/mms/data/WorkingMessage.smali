.class public Lcom/android/mms/data/WorkingMessage;
.super Ljava/lang/Object;
.source "WorkingMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/data/WorkingMessage$DraftInterface;,
        Lcom/android/mms/data/WorkingMessage$MessageStatusListener;
    }
.end annotation


# static fields
.field public static final ACTION_SENDING_SMS:Ljava/lang/String; = "android.intent.action.SENDING_SMS"

.field public static final ATTACHMENT:I = 0x5

.field public static final AUDIO:I = 0x3

.field private static final CREATION_MODE_FREE:Ljava/lang/String; = "FREE"

.field private static final CREATION_MODE_RESTRICTED:Ljava/lang/String; = "RESTRICTED"

.field private static final CREATION_MODE_WARNING:Ljava/lang/String; = "WARNING"

.field private static final DEBUG:Z = false

.field public static final EXTRA_SMS_MESSAGE:Ljava/lang/String; = "android.mms.extra.MESSAGE"

.field public static final EXTRA_SMS_RECIPIENTS:Ljava/lang/String; = "android.mms.extra.RECIPIENTS"

.field public static final EXTRA_SMS_THREAD_ID:Ljava/lang/String; = "android.mms.extra.THREAD_ID"

.field private static final FILE_NOT_FOUND:Ljava/lang/String; = "File not found."

.field private static final FORCE_MMS:I = 0x10

.field private static final HAS_ATTACHMENT:I = 0x4

.field private static final HAS_SUBJECT:I = 0x2

.field public static final IMAGE:I = 0x1

.field public static final IMAGE_TOO_LARGE:I = -0x4

.field private static final LENGTH_REQUIRES_MMS:I = 0x8

.field public static final MESSAGE_SIZE_EXCEEDED:I = -0x2

.field private static final MMS_DRAFT_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_ID_INDEX:I = 0x0

.field private static final MMS_MESSAGE_SIZE_INDEX:I = 0x1

.field private static final MMS_MESSAGE_STATUS_INDEX:I = 0x2

.field private static final MMS_OUTBOX_PROJECTION:[Ljava/lang/String; = null

.field private static final MMS_SUBJECT_CS_INDEX:I = 0x2

.field private static final MMS_SUBJECT_INDEX:I = 0x1

.field private static final MULTIPLE_RECIPIENTS:I = 0x20

.field private static final M_TAG:Ljava/lang/String; = "Mms/WorkingMessage"

.field public static final OK:I = 0x0

.field private static final READ_WRITE_FAILURE:Ljava/lang/String; = "Read or write file failure."

.field private static final RECIPIENTS_REQUIRE_MMS:I = 0x1

.field public static final RESTRICTED_RESOLUTION:I = -0xc

.field public static final RESTRICTED_TYPE:I = -0xb

.field public static final SAVE_MSG_THREADID_KEY:Ljava/lang/String; = "pref_msg_threadid_key"

.field public static final SAVE_MSG_URI_KEY:Ljava/lang/String; = "pref_msg_uri_key"

.field public static final SLIDESHOW:I = 0x4

.field private static final SMS_BODY_INDEX:I = 0x0

.field private static final SMS_BODY_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_DRAFT_WHERE:Ljava/lang/String; = "type=3"

.field private static final TAG:Ljava/lang/String; = "WorkingMessage"

.field public static final TEXT:I = 0x0

.field public static final UNKNOWN_ERROR:I = -0x1

.field public static final UNSUPPORTED_TYPE:I = -0x3

.field public static final VCALENDAR:I = 0x7

.field public static final VCARD:I = 0x6

.field public static final VIDEO:I = 0x2

.field public static final WARNING_TYPE:I = -0xa

.field public static sCreationMode:I

.field public static sDraftMmsLock:Ljava/lang/Object;

.field private static sMmsEnabled:Z


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mAttachmentType:I

.field private mBundle:Landroid/os/Bundle;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private mDiscarded:Z

.field private mForceUpdateThreadId:Z

.field public mHasDrmPart:Z

.field public mHasDrmRight:Z

.field private volatile mHasMmsDraft:Z

.field private volatile mHasSmsDraft:Z

.field private mInterface:Lcom/android/mms/data/WorkingMessage$DraftInterface;

.field private mIsDeleteDraftWhenLoad:Z

.field private mIsDeleteVcardFile:Z

.field private mIsExceedSize:Z

.field private mIsUpdateAttachEditor:Z

.field private mMessageUri:Landroid/net/Uri;

.field private mMimeType:Ljava/lang/String;

.field private mMmsState:I

.field private mNeedDeleteOldMmsDraft:Z

.field private mOldMmsSaveThreadId:J

.field private mOldSmsSaveThreadId:J

.field private mOldThreadId:J

.field private mResizeImage:Z

.field private mSlideshow:Lcom/android/mms/model/SlideshowModel;

.field private final mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

.field private mSubject:Ljava/lang/CharSequence;

.field private mText:Ljava/lang/CharSequence;

.field private mWorkingRecipients:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 184
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v0

    sput-boolean v0, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    .line 193
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "m_size"

    aput-object v1, v0, v3

    const-string v1, "st"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->sDraftMmsLock:Ljava/lang/Object;

    .line 235
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "sub"

    aput-object v1, v0, v3

    const-string v1, "sub_cs"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->MMS_DRAFT_PROJECTION:[Ljava/lang/String;

    .line 254
    sput v2, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 2364
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "body"

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V
    .locals 4
    .parameter "activity"
    .parameter "l"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMimeType:Ljava/lang/String;

    .line 231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    .line 258
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    .line 263
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mResizeImage:Z

    .line 280
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteDraftWhenLoad:Z

    .line 284
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mForceUpdateThreadId:Z

    .line 2661
    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteVcardFile:Z

    .line 2983
    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mIsUpdateAttachEditor:Z

    .line 2667
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 2668
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 2669
    iput-object p2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 2670
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 2671
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 2675
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->updateCreationMode(Landroid/content/Context;)V

    .line 2677
    return-void
.end method

.method private constructor <init>(Lcom/android/mms/ui/ComposeMessageActivity;)V
    .locals 4
    .parameter "activity"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 343
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 221
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMimeType:Ljava/lang/String;

    .line 231
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    .line 258
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 259
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    .line 263
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mResizeImage:Z

    .line 280
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteDraftWhenLoad:Z

    .line 284
    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mForceUpdateThreadId:Z

    .line 2661
    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteVcardFile:Z

    .line 2983
    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mIsUpdateAttachEditor:Z

    .line 344
    const-string v0, "WorkingMessage"

    const-string v1, "new WorkingMessage(Composer)"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    .line 346
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    .line 347
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    .line 348
    iput v2, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 349
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 353
    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->updateCreationMode(Landroid/content/Context;)V

    .line 355
    new-instance v0, Lcom/android/mms/data/WorkingMessage$DraftInterface;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage$DraftInterface;-><init>(Lcom/android/mms/data/WorkingMessage;)V

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mInterface:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    .line 356
    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/data/WorkingMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/data/WorkingMessage;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/data/WorkingMessage;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/data/WorkingMessage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J

    return-wide v0
.end method

.method static synthetic access$1200(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->deleteOldMmsDraft(Landroid/net/Uri;J)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/data/WorkingMessage;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 113
    iget-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/mms/data/WorkingMessage;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-wide p1, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    return-wide p1
.end method

.method static synthetic access$1500(Lcom/android/mms/data/WorkingMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mNeedDeleteOldMmsDraft:Z

    return v0
.end method

.method static synthetic access$1502(Lcom/android/mms/data/WorkingMessage;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mNeedDeleteOldMmsDraft:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/mms/data/WorkingMessage;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteOldMmsDraft(J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-static {p0, p1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"

    .prologue
    .line 113
    invoke-direct/range {p0 .. p6}, Lcom/android/mms/data/WorkingMessage;->sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->updateSendStats(Lcom/android/mms/data/Conversation;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/model/SlideshowModel;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/data/WorkingMessage;->preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$202(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/model/SlideshowModel;)Lcom/android/mms/model/SlideshowModel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 113
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/data/WorkingMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/mms/data/WorkingMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/mms/data/WorkingMessage;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/data/WorkingMessage;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/data/WorkingMessage;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteVcardFile:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/data/WorkingMessage;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 113
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->deleteFileAttachmentTempFile()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/mms/data/WorkingMessage;)Landroid/os/Bundle;
    .locals 1
    .parameter "x0"

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method private addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z
    .locals 9
    .parameter "conv"
    .parameter "text"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 2040
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 2041
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 2042
    .local v0, dests:[Ljava/lang/String;
    array-length v2, v0

    .line 2043
    .local v2, length:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 2044
    aget-object v7, v0, v1

    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_0

    aget-object v7, v0, v1

    invoke-static {v7}, Lcom/android/mms/ui/MessageUtils;->isAlias(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 2045
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2046
    .local v3, mtext:Ljava/lang/String;
    invoke-static {v3, v6}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/String;Z)[I

    move-result-object v4

    .line 2047
    .local v4, params:[I
    aget v7, v4, v6

    if-le v7, v5, :cond_1

    .line 2048
    invoke-direct {p0, v5, v5, v5}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 2049
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 2050
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 2056
    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    .end local v3           #mtext:Ljava/lang/String;
    .end local v4           #params:[I
    :goto_1
    return v5

    .line 2043
    .restart local v0       #dests:[Ljava/lang/String;
    .restart local v1       #i:I
    .restart local v2       #length:I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v0           #dests:[Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #length:I
    :cond_2
    move v5, v6

    .line 2056
    goto :goto_1
.end method

.method private appendMedia(ILandroid/net/Uri;)V
    .locals 12
    .parameter "type"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 1214
    if-nez p1, :cond_1

    .line 1288
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    const/4 v0, 0x1

    .line 1224
    .local v0, addNewSlide:Z
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v8, :cond_2

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->isSimple()Z

    move-result v5

    if-nez v5, :cond_2

    .line 1225
    const/4 v0, 0x0

    .line 1227
    :cond_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v8, :cond_3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 1229
    const/4 v0, 0x1

    .line 1231
    :cond_3
    if-eqz v0, :cond_4

    .line 1232
    new-instance v4, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v4, v5, v6}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 1233
    .local v4, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    invoke-virtual {v4}, Lcom/android/mms/ui/SlideshowEditor;->addNewSlide()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1237
    .end local v4           #slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    :cond_4
    iput-boolean v9, p0, Lcom/android/mms/data/WorkingMessage;->mIsUpdateAttachEditor:Z

    .line 1240
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    .line 1241
    .local v3, slide:Lcom/android/mms/model/SlideModel;
    if-ne p1, v8, :cond_5

    .line 1242
    new-instance v2, Lcom/android/mms/model/ImageModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mMimeType:Ljava/lang/String;

    invoke-direct {v2, v5, p2, v6, v7}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Ljava/lang/String;)V

    .line 1244
    .local v2, media:Lcom/android/mms/model/MediaModel;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    sget-object v6, Lcom/android/mms/model/SlideshowModel$MediaType;->IMAGE:Lcom/android/mms/model/SlideshowModel$MediaType;

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->getAllMediaNames(Lcom/android/mms/model/SlideshowModel$MediaType;)[Ljava/lang/String;

    move-result-object v1

    .line 1245
    .local v1, fileNames:[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/ui/MessageUtils;->getUniqueName([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    .line 1260
    :goto_1
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v5

    if-gez v5, :cond_8

    .line 1261
    new-instance v5, Lcom/android/mms/ExceedMessageSizeException;

    const-string v6, "Exceed message size limitation"

    invoke-direct {v5, v6}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1246
    .end local v1           #fileNames:[Ljava/lang/String;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    :cond_5
    if-ne p1, v10, :cond_6

    .line 1247
    new-instance v2, Lcom/android/mms/model/VideoModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v6

    invoke-direct {v2, v5, p2, v6}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .line 1249
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    sget-object v6, Lcom/android/mms/model/SlideshowModel$MediaType;->VIDEO:Lcom/android/mms/model/SlideshowModel$MediaType;

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->getAllMediaNames(Lcom/android/mms/model/SlideshowModel$MediaType;)[Ljava/lang/String;

    move-result-object v1

    .line 1250
    .restart local v1       #fileNames:[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/ui/MessageUtils;->getUniqueName([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 1251
    .end local v1           #fileNames:[Ljava/lang/String;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    if-ne p1, v11, :cond_7

    .line 1252
    new-instance v2, Lcom/android/mms/model/AudioModel;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v5, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 1254
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    sget-object v6, Lcom/android/mms/model/SlideshowModel$MediaType;->AUDIO:Lcom/android/mms/model/SlideshowModel$MediaType;

    invoke-virtual {v5, v6}, Lcom/android/mms/model/SlideshowModel;->getAllMediaNames(Lcom/android/mms/model/SlideshowModel$MediaType;)[Ljava/lang/String;

    move-result-object v1

    .line 1255
    .restart local v1       #fileNames:[Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/mms/ui/MessageUtils;->getUniqueName([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/android/mms/model/MediaModel;->setSrc(Ljava/lang/String;)V

    goto :goto_1

    .line 1257
    .end local v1           #fileNames:[Ljava/lang/String;
    .end local v2           #media:Lcom/android/mms/model/MediaModel;
    :cond_7
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeMedia type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1264
    .restart local v1       #fileNames:[Ljava/lang/String;
    .restart local v2       #media:Lcom/android/mms/model/MediaModel;
    :cond_8
    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1267
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->removeAllFileAttaches()V

    .line 1271
    if-eq p1, v10, :cond_9

    if-ne p1, v11, :cond_a

    .line 1272
    :cond_9
    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 1276
    :cond_a
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v5

    if-ne v5, v8, :cond_b

    .line 1277
    iput-boolean v9, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 1278
    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    .line 1280
    :cond_b
    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    if-nez v5, :cond_c

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->hasDrmContent()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 1281
    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 1283
    :cond_c
    iget-boolean v5, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    if-eqz v5, :cond_d

    invoke-virtual {v2}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1284
    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    goto/16 :goto_0

    .line 1286
    :cond_d
    iput-boolean v9, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    goto/16 :goto_0
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    const/4 v1, 0x2

    .line 2521
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2522
    const-string v0, "asyncDelete %s where %s"

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2524
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$5;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage$5;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "WorkingMessage.asyncDelete"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2529
    return-void
.end method

.method private asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "r"

    .prologue
    .line 2943
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/data/WorkingMessage$8;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage$8;-><init>(Lcom/android/mms/data/WorkingMessage;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    const-string v1, "WorkingMessage.asyncDelete2"

    invoke-direct {v6, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 2952
    return-void
.end method

.method private asyncDeleteCurrentDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 6
    .parameter "conv"

    .prologue
    const/4 v5, 0x0

    .line 2914
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 2916
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2917
    .local v0, threadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_2

    .line 2918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2920
    .local v2, where:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isShowDraftIcon()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2921
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v2, v5}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2932
    :goto_0
    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2937
    .end local v2           #where:Ljava/lang/String;
    :cond_0
    :goto_1
    return-void

    .line 2923
    .restart local v2       #where:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    new-instance v4, Lcom/android/mms/data/WorkingMessage$7;

    invoke-direct {v4, p0}, Lcom/android/mms/data/WorkingMessage$7;-><init>(Lcom/android/mms/data/WorkingMessage;)V

    invoke-direct {p0, v3, v2, v5, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2933
    .end local v2           #where:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v3, :cond_0

    .line 2934
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v3, v5, v5}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2935
    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_1
.end method

.method private asyncDeleteOldMmsDraft(J)V
    .locals 1
    .parameter "threadId"

    .prologue
    .line 2634
    new-instance v0, Lcom/android/mms/data/WorkingMessage$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$6;-><init>(Lcom/android/mms/data/WorkingMessage;J)V

    invoke-static {v0}, Lcom/android/mms/ui/MessageUtils;->addRemoveOldMmsThread(Ljava/lang/Runnable;)V

    .line 2644
    return-void
.end method

.method private asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;ZLcom/android/mms/draft/IDraftInterface;)V
    .locals 9
    .parameter "conv"
    .parameter "isStopping"
    .parameter "callback"

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    .line 2344
    const-string v0, "Mms:app"

    invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2345
    const-string v0, "asyncUpdateDraftMmsMessage conv=%s mMessageUri=%s"

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    aput-object v5, v4, v1

    invoke-static {v0, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2348
    :cond_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 2350
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {p1, v0}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    .line 2351
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 2353
    .local v2, threadId:J
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[asyncUpdateDraftMmsMessage] before thread id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2355
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    .line 2356
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[asyncUpdateDraftMmsMessage] after thread id : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2359
    :cond_1
    invoke-static {}, Lcom/android/mms/draft/DraftManager;->getInstance()Lcom/android/mms/draft/DraftManager;

    move-result-object v0

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object v8, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/mms/draft/DraftManager;->saveDraft(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;

    .line 2361
    return-void
.end method

.method private asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 3
    .parameter "conv"
    .parameter "contents"

    .prologue
    .line 2451
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/mms/data/WorkingMessage$4;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    const-string v2, "WorkingMessage.asyncUpdateDraftSmsMessage"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 2473
    return-void
.end method

.method private cancelThumbnailLoading()V
    .locals 4

    .prologue
    .line 1026
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 1027
    .local v1, numSlides:I
    :goto_0
    if-lez v1, :cond_0

    .line 1028
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 1029
    .local v0, imgModel:Lcom/android/mms/model/ImageModel;
    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {v0}, Lcom/android/mms/model/ImageModel;->cancelThumbnailLoading()V

    .line 1033
    .end local v0           #imgModel:Lcom/android/mms/model/ImageModel;
    :cond_0
    return-void

    .line 1026
    .end local v1           #numSlides:I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private changeMedia(ILandroid/net/Uri;)V
    .locals 12
    .parameter "type"
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    .line 1076
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v6

    .line 1079
    .local v6, slide:Lcom/android/mms/model/SlideModel;
    const/4 v7, 0x0

    .line 1080
    .local v7, uriTemp:Landroid/net/Uri;
    if-nez v6, :cond_1

    .line 1081
    const-string v9, "Mms"

    const-string v10, "[WorkingMessage] changeMedia: no slides!"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    :cond_0
    :goto_0
    return-void

    .line 1088
    :cond_1
    const/4 v9, 0x5

    invoke-static {v9}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 1091
    .local v4, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-nez p1, :cond_4

    .line 1092
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v9

    if-lez v9, :cond_0

    .line 1096
    if-nez v4, :cond_3

    .line 1098
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    .line 1104
    :cond_2
    :goto_1
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->clear()V

    .line 1105
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1106
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1107
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->ismResizeImage()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 1109
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v9, :cond_0

    .line 1110
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-direct {p0, v9, v10, v11}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 1111
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/mms/data/WorkingMessage;->setmResizeImage(Z)V

    goto :goto_0

    .line 1099
    :cond_3
    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v9

    if-nez v9, :cond_2

    .line 1101
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    goto :goto_1

    .line 1119
    :cond_4
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1120
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v3

    .line 1121
    .local v3, imageModel:Lcom/android/mms/model/ImageModel;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "fname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 1131
    .end local v3           #imageModel:Lcom/android/mms/model/ImageModel;
    :cond_5
    :goto_2
    const/4 v9, 0x1

    if-ne p1, v9, :cond_7

    .line 1132
    new-instance v5, Lcom/android/mms/model/ImageModel;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mMimeType:Ljava/lang/String;

    invoke-direct {v5, v9, p2, v10, v11}, Lcom/android/mms/model/ImageModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;Ljava/lang/String;)V

    .line 1141
    .local v5, media:Lcom/android/mms/model/MediaModel;
    :goto_3
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v9

    if-gez v9, :cond_a

    .line 1142
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 1143
    new-instance v9, Lcom/android/mms/ExceedMessageSizeException;

    const-string v10, "Exceed message size limitation"

    invoke-direct {v9, v10}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1123
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_6
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1124
    invoke-virtual {v6}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v8

    .line 1125
    .local v8, videoModel:Lcom/android/mms/model/VideoModel;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "fname="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v8}, Lcom/android/mms/model/MediaModel;->getSrc()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    goto :goto_2

    .line 1133
    .end local v8           #videoModel:Lcom/android/mms/model/VideoModel;
    :cond_7
    const/4 v9, 0x2

    if-ne p1, v9, :cond_8

    .line 1134
    new-instance v5, Lcom/android/mms/model/VideoModel;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/mms/model/LayoutModel;->getImageRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v10

    invoke-direct {v5, v9, p2, v10}, Lcom/android/mms/model/VideoModel;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/android/mms/model/RegionModel;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_3

    .line 1135
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_8
    const/4 v9, 0x3

    if-ne p1, v9, :cond_9

    .line 1136
    new-instance v5, Lcom/android/mms/model/AudioModel;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v5, v9, p2}, Lcom/android/mms/model/AudioModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    goto :goto_3

    .line 1138
    .end local v5           #media:Lcom/android/mms/model/MediaModel;
    :cond_9
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeMedia type="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", uri="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1147
    .restart local v5       #media:Lcom/android/mms/model/MediaModel;
    :cond_a
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v9}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v0

    .line 1148
    .local v0, attachFiles:Ljava/util/List;,"Ljava/util/List<Lcom/android/mms/model/FileAttachmentModel;>;"
    const/4 v1, 0x0

    .line 1150
    .local v1, attachSize:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-ge v2, v9, :cond_b

    .line 1151
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/model/FileAttachmentModel;

    invoke-virtual {v9}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v9

    add-int/2addr v1, v9

    .line 1150
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1154
    :cond_b
    if-eqz v4, :cond_d

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_d

    .line 1160
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v9

    add-int/lit16 v9, v9, 0x580

    add-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v10

    if-le v9, v10, :cond_c

    .line 1162
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v10

    add-int/lit16 v10, v10, 0x580

    add-int/2addr v10, v1

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    .line 1173
    :cond_c
    :goto_5
    if-eqz v4, :cond_e

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_e

    .line 1176
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v9

    add-int/lit16 v9, v9, 0x580

    add-int/2addr v9, v1

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v10

    if-le v9, v10, :cond_f

    .line 1178
    new-instance v9, Lcom/android/mms/ExceedMessageSizeException;

    const-string v10, "Exceed MessageSizeException"

    invoke-direct {v9, v10}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1167
    :cond_d
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v9

    iget-object v10, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v10}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v10

    if-le v9, v10, :cond_c

    .line 1168
    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v10

    add-int/lit16 v10, v10, 0x580

    iget-object v11, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v11}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v11

    sub-int/2addr v10, v11

    invoke-virtual {v9, v10}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    goto :goto_5

    .line 1182
    :cond_e
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getMediaPackagedSize()I

    move-result v9

    add-int/lit16 v9, v9, 0x580

    const/4 v10, 0x1

    invoke-static {v10}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v10

    if-le v9, v10, :cond_f

    .line 1184
    new-instance v9, Lcom/android/mms/ExceedMessageSizeException;

    const-string v10, "Exceed MessageSizeException"

    invoke-direct {v9, v10}, Lcom/android/mms/ExceedMessageSizeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1190
    :cond_f
    invoke-direct {p0, v6}, Lcom/android/mms/data/WorkingMessage;->removeSlideAttachments(Lcom/android/mms/model/SlideModel;)V

    .line 1192
    invoke-virtual {v6, v5}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z

    .line 1194
    if-eqz v7, :cond_10

    .line 1195
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v9

    invoke-virtual {v9, v7}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 1199
    :cond_10
    const/4 v9, 0x2

    if-eq p1, v9, :cond_11

    const/4 v9, 0x3

    if-ne p1, v9, :cond_12

    .line 1200
    :cond_11
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->getDuration()I

    move-result v9

    invoke-virtual {v6, v9}, Lcom/android/mms/model/SlideModel;->updateDuration(I)V

    .line 1204
    :cond_12
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->hasDrmContent()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 1205
    invoke-virtual {v5}, Lcom/android/mms/model/MediaModel;->hasDrmRight()Z

    move-result v9

    iput-boolean v9, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    goto/16 :goto_0
.end method

.method private correctAttachmentState()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 420
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    .line 422
    .local v2, slideCount:I
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v0

    .line 427
    .local v0, fileAttachCount:I
    if-nez v0, :cond_6

    .line 429
    if-eqz v2, :cond_0

    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->isEmptySlide()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 430
    :cond_0
    const-string v3, "WorkingMessage"

    const-string v4, "WorkingMessage CorrectAttachmentState RemoveAttachment"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    invoke-virtual {p0, v5}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 449
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    invoke-direct {p0, v7, v3, v6}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 450
    return-void

    .line 432
    :cond_2
    if-le v2, v5, :cond_3

    .line 433
    iput v7, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 435
    :cond_3
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v6}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v1

    .line 436
    .local v1, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 437
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 438
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 439
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 440
    :cond_5
    invoke-virtual {v1}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 441
    const/4 v3, 0x3

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0

    .line 445
    .end local v1           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    const/4 v3, 0x5

    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    goto :goto_0
.end method

.method public static createEmpty(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "activity"
    .parameter "l"

    .prologue
    .line 2681
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0, p1}, Lcom/android/mms/data/WorkingMessage;-><init>(Landroid/app/Activity;Lcom/android/mms/data/WorkingMessage$MessageStatusListener;)V

    .line 2682
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method public static createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;
    .locals 1
    .parameter "activity"

    .prologue
    .line 363
    new-instance v0, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v0, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 364
    .local v0, msg:Lcom/android/mms/data/WorkingMessage;
    return-object v0
.end method

.method private delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V
    .locals 7
    .parameter "uri"
    .parameter "selection"
    .parameter "selectionArgs"

    .prologue
    .line 2885
    iget-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteVcardFile:Z

    if-eqz v4, :cond_0

    .line 2886
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->deleteFileAttachmentTempFile()V

    .line 2891
    :cond_0
    if-eqz p1, :cond_1

    .line 2892
    const/4 v2, -0x1

    .line 2894
    .local v2, result:I
    const/4 v3, 0x0

    .line 2895
    .local v3, retryCount:I
    const/16 v1, 0xa

    .line 2896
    .local v1, maxRetryCount:I
    :goto_0
    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    if-ge v3, v1, :cond_1

    .line 2898
    :try_start_0
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v4, v5, p1, p2, p3}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteDiskIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 2904
    add-int/lit8 v3, v3, 0x1

    .line 2905
    goto :goto_0

    .line 2900
    :catch_0
    move-exception v0

    .line 2901
    .local v0, e:Landroid/database/sqlite/SQLiteDiskIOException;
    :try_start_1
    const-string v4, "WorkingMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "asyncDelete(): SQLiteDiskIOException: delete thread unsuccessful! Try time="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2904
    add-int/lit8 v3, v3, 0x1

    .line 2905
    goto :goto_0

    .line 2904
    .end local v0           #e:Landroid/database/sqlite/SQLiteDiskIOException;
    :catchall_0
    move-exception v4

    add-int/lit8 v3, v3, 0x1

    throw v4

    .line 2909
    .end local v1           #maxRetryCount:I
    .end local v2           #result:I
    .end local v3           #retryCount:I
    :cond_1
    return-void
.end method

.method private deleteDraftSmsMessage(J)V
    .locals 5
    .parameter "threadId"

    .prologue
    .line 2542
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1, p2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2545
    return-void
.end method

.method private deleteFileAttachmentTempFile()V
    .locals 8

    .prologue
    .line 2736
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/content/ContextWrapper;->fileList()[Ljava/lang/String;

    move-result-object v2

    .line 2737
    .local v2, filenames:[Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 2738
    .local v1, file:Ljava/lang/String;
    const-string v5, ".vcf"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2739
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v1}, Landroid/content/ContextWrapper;->deleteFile(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 2740
    const-string v5, "WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete temp file, cannot delete file \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2737
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2742
    :cond_1
    const-string v5, "WorkingMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "delete temp file, deleted file \'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\'"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2746
    .end local v1           #file:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private deleteOldMmsDraft(Landroid/net/Uri;J)V
    .locals 5
    .parameter "msgUri"
    .parameter "tid"

    .prologue
    .line 2621
    if-eqz p1, :cond_0

    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-lez v2, :cond_0

    .line 2622
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 2623
    .local v0, pduId:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "thread_id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " and "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_id"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " != "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2625
    .local v1, where:Ljava/lang/String;
    const-string v2, "surplus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deleteOldMmsDraft where : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2626
    sget-object v2, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-direct {p0, v2, v1, v3}, Lcom/android/mms/data/WorkingMessage;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2628
    .end local v0           #pduId:Ljava/lang/String;
    .end local v1           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private dumpWorkingRecipients()V
    .locals 5

    .prologue
    .line 1777
    const-string v2, "WorkingMessage"

    const-string v3, "-- mWorkingRecipients:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1779
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 1780
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .line 1781
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1782
    const-string v3, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "   ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1781
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1784
    :cond_0
    const-string v2, "WorkingMessage"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1786
    .end local v0           #count:I
    .end local v1           #i:I
    :cond_1
    return-void
.end method

.method private ensureSlideshow()V
    .locals 5

    .prologue
    .line 1049
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    .line 1051
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 1069
    :goto_0
    return-void

    .line 1054
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    new-instance v3, Lcom/android/mms/model/SlideModel;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v3, v4}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    goto :goto_0

    .line 1060
    :cond_1
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    .line 1061
    .local v1, slideshow:Lcom/android/mms/model/SlideshowModel;
    new-instance v0, Lcom/android/mms/model/SlideModel;

    invoke-direct {v0, v1}, Lcom/android/mms/model/SlideModel;-><init>(Lcom/android/mms/model/SlideshowModel;)V

    .line 1062
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v1, v0}, Lcom/android/mms/model/SlideshowModel;->add(Lcom/android/mms/model/SlideModel;)Z

    .line 1064
    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1066
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->checkDrmContent()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 1067
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->checkDrmRight()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    goto :goto_0
.end method

.method private isEmptySlide()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 454
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v0

    .line 456
    .local v0, slideCount:I
    if-ne v0, v1, :cond_1

    .line 457
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v3, :cond_1

    .line 458
    const-string v3, "WorkingMessage"

    const-string v4, "mSlideshow != null"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 461
    const-string v3, "WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mAttachmentType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v3

    if-ne v3, v1, :cond_1

    .line 465
    const-string v3, "WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mSlideshow.get(0).get(0).size "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v5, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideModel;->get(I)Lcom/android/mms/model/MediaModel;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/model/MediaModel;->getContentType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "text/plain"

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v4, 0x6

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    .line 469
    :cond_0
    const-string v2, "WorkingMessage"

    const-string v3, "isEmptySlide return true"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    :goto_0
    return v1

    .line 479
    :cond_1
    const-string v1, "WorkingMessage"

    const-string v3, "isEmptySlide return false"

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 480
    goto :goto_0
.end method

.method public static load(Lcom/android/mms/ui/ComposeMessageActivity;Landroid/net/Uri;)Lcom/android/mms/data/WorkingMessage;
    .locals 13
    .parameter "activity"
    .parameter "uri"

    .prologue
    const/4 v4, 0x0

    const/4 v12, 0x1

    const/4 v6, 0x0

    .line 373
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v11

    .line 375
    .local v11, persister:Lcom/google/android/mms/pdu/PduPersister;
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 376
    const-string v0, "load: moving %s to drafts"

    new-array v1, v12, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 379
    :cond_0
    :try_start_0
    sget-object v0, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v11, p1, v0}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 386
    .end local v11           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :cond_1
    new-instance v9, Lcom/android/mms/data/WorkingMessage;

    invoke-direct {v9, p0}, Lcom/android/mms/data/WorkingMessage;-><init>(Lcom/android/mms/ui/ComposeMessageActivity;)V

    .line 389
    .local v9, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v9, v0}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 391
    const-wide/16 v2, 0x0

    .line 392
    .local v2, threadId:J
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    .line 393
    .local v10, noRecipientes:Z
    if-nez v10, :cond_2

    .line 394
    invoke-virtual {p0}, Lcom/android/mms/ui/ComposeMessageActivity;->getConversation()Lcom/android/mms/data/Conversation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    .line 397
    :cond_2
    invoke-static {}, Lcom/android/mms/draft/DraftManager;->getInstance()Lcom/android/mms/draft/DraftManager;

    move-result-object v0

    const/16 v1, 0x20

    move-object v4, p1

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/draft/DraftManager;->loadDraft(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;

    move-result-object v8

    .line 399
    .local v8, mdd:Lcom/android/mms/draft/MmsDraftData;
    if-nez v8, :cond_4

    .line 400
    const-string v0, "[Mms][Draft][WorkingMessage]"

    const-string v1, "[load] load from DraftManager result is null!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    .end local v2           #threadId:J
    .end local v8           #mdd:Lcom/android/mms/draft/MmsDraftData;
    .end local v9           #msg:Lcom/android/mms/data/WorkingMessage;
    .end local v10           #noRecipientes:Z
    :cond_3
    :goto_0
    return-object v6

    .line 380
    .restart local v11       #persister:Lcom/google/android/mms/pdu/PduPersister;
    :catch_0
    move-exception v7

    .line 381
    .local v7, e:Lcom/google/android/mms/MmsException;
    const-string v0, "Can\'t move %s to drafts"

    new-array v1, v12, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 403
    .end local v7           #e:Lcom/google/android/mms/MmsException;
    .end local v11           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v2       #threadId:J
    .restart local v8       #mdd:Lcom/android/mms/draft/MmsDraftData;
    .restart local v9       #msg:Lcom/android/mms/data/WorkingMessage;
    .restart local v10       #noRecipientes:Z
    :cond_4
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[load] boolean result is : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/android/mms/draft/MmsDraftData;->getBooleanResult()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-virtual {v8}, Lcom/android/mms/draft/MmsDraftData;->getBooleanResult()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 405
    iput-boolean v12, v9, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 406
    invoke-virtual {v8}, Lcom/android/mms/draft/MmsDraftData;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, v9, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 407
    invoke-virtual {v8}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, v9, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 408
    iget-object v0, v9, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->checkDrmContent()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 409
    iget-object v0, v9, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->checkDrmRight()Z

    move-result v0

    iput-boolean v0, v9, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    .line 410
    invoke-direct {v9}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 411
    invoke-direct {v9}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    .line 412
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[load] message uri : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v9, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    .line 413
    goto :goto_0
.end method

.method public static loadDraft(Lcom/android/mms/ui/ComposeMessageActivity;Lcom/android/mms/data/Conversation;Ljava/lang/Runnable;)Lcom/android/mms/data/WorkingMessage;
    .locals 11
    .parameter "activity"
    .parameter "conv"
    .parameter "onDraftLoaded"

    .prologue
    const/4 v1, 0x2

    const/4 v6, 0x1

    .line 490
    const-string v0, "Mms:app"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "loadDraft %s"

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-static {v0, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 492
    :cond_0
    invoke-static {p0}, Lcom/android/mms/data/WorkingMessage;->createEmpty(Lcom/android/mms/ui/ComposeMessageActivity;)Lcom/android/mms/data/WorkingMessage;

    move-result-object v8

    .line 494
    .local v8, msg:Lcom/android/mms/data/WorkingMessage;
    invoke-virtual {v8, p1}, Lcom/android/mms/data/WorkingMessage;->setConversation(Lcom/android/mms/data/Conversation;)V

    .line 496
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    const-wide/16 v9, 0x0

    cmp-long v0, v4, v9

    if-gtz v0, :cond_2

    .line 497
    if-eqz p2, :cond_1

    .line 498
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 518
    :cond_1
    :goto_0
    return-object v8

    .line 503
    :cond_2
    invoke-direct {v8, p1}, Lcom/android/mms/data/WorkingMessage;->readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;

    move-result-object v7

    .line 504
    .local v7, draftText:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 505
    .local v2, threadId:J
    iput-wide v2, v8, Lcom/android/mms/data/WorkingMessage;->mOldThreadId:J

    .line 506
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[loadDraft] draftText : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 508
    iget-object v0, v8, Lcom/android/mms/data/WorkingMessage;->mInterface:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    iput-object p2, v0, Lcom/android/mms/data/WorkingMessage$DraftInterface;->loadRunnable:Ljava/lang/Runnable;

    .line 509
    invoke-static {}, Lcom/android/mms/draft/DraftManager;->getInstance()Lcom/android/mms/draft/DraftManager;

    move-result-object v0

    const/4 v4, 0x0

    iget-object v6, v8, Lcom/android/mms/data/WorkingMessage;->mInterface:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    move-object v5, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/draft/DraftManager;->loadDraft(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;

    goto :goto_0

    .line 512
    :cond_3
    invoke-virtual {v8, v7}, Lcom/android/mms/data/WorkingMessage;->setText(Ljava/lang/CharSequence;)V

    .line 513
    iput-boolean v6, v8, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    .line 514
    if-eqz p2, :cond_1

    .line 515
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method

.method private static makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;
    .locals 7
    .parameter "conv"
    .parameter "subject"

    .prologue
    .line 2325
    invoke-virtual {p0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v0

    .line 2328
    .local v0, dests:[Ljava/lang/String;
    new-instance v2, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v2}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 2329
    .local v2, req:Lcom/google/android/mms/pdu/SendReq;
    invoke-static {v0}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v1

    .line 2330
    .local v1, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v1, :cond_0

    .line 2331
    invoke-virtual {v2, v1}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2334
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 2335
    new-instance v3, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2338
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setDate(J)V

    .line 2340
    return-object v2
.end method

.method private markMmsMessageWithError(Landroid/net/Uri;I)V
    .locals 14
    .parameter "mmsUri"
    .parameter "simId"

    .prologue
    .line 2290
    :try_start_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v13

    .line 2293
    .local v13, p:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v0, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, p1, v0}, Lcom/google/android/mms/pdu/PduPersister;->move(Landroid/net/Uri;Landroid/net/Uri;)Landroid/net/Uri;

    .line 2298
    new-instance v3, Landroid/content/ContentValues;

    const/4 v0, 0x2

    invoke-direct {v3, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2299
    .local v3, valuePendingTable:Landroid/content/ContentValues;
    const-string v0, "err_type"

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2300
    const-string v0, "pending_sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2301
    invoke-static {p1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v11

    .line 2302
    .local v11, msgId:J
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Landroid/provider/Telephony$MmsSms$PendingMessages;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "msg_id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2307
    new-instance v7, Landroid/content/ContentValues;

    const/4 v0, 0x1

    invoke-direct {v7, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 2308
    .local v7, valuePduTable:Landroid/content/ContentValues;
    const-string v0, "sim_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2309
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v9}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2316
    .end local v3           #valuePendingTable:Landroid/content/ContentValues;
    .end local v7           #valuePduTable:Landroid/content/ContentValues;
    .end local v11           #msgId:J
    .end local v13           #p:Lcom/google/android/mms/pdu/PduPersister;
    :goto_0
    return-void

    .line 2311
    :catch_0
    move-exception v10

    .line 2314
    .local v10, e:Lcom/google/android/mms/MmsException;
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to move message to outbox and mark as error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private preSendSmsWorker(Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11
    .parameter "conv"
    .parameter "msgText"
    .parameter "recipientsInUI"
    .parameter "simId"

    .prologue
    const-wide/16 v9, 0x0

    .line 2064
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 2066
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 2069
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 2071
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    .line 2074
    .local v7, origThreadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v3

    .line 2076
    .local v3, threadId:J
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 2079
    .local v2, semiSepRecipients:Ljava/lang/String;
    cmp-long v0, v7, v9

    if-eqz v0, :cond_0

    cmp-long v0, v7, v3

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2081
    :cond_1
    cmp-long v0, v7, v9

    if-eqz v0, :cond_3

    cmp-long v0, v7, v3

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WorkingMessage.preSendSmsWorker threadId changed or recipients changed. origThreadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " new threadId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " also mConversation.getThreadId(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 2092
    .local v6, msg:Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v6, v0}, Lcom/android/mms/LogTag;->warnPossibleRecipientMismatch(Ljava/lang/String;Landroid/app/Activity;)V

    .end local v6           #msg:Ljava/lang/String;
    :cond_2
    move-object v0, p0

    move-object v1, p2

    move v5, p4

    .line 2098
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/data/WorkingMessage;->sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JI)V

    .line 2102
    invoke-direct {p0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 2103
    return-void

    .line 2081
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Recipients in window: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\" differ from recipients from conv: \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_0
.end method

.method private prepareForSave(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 1450
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->syncWorkingRecipients()V

    .line 1452
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1453
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 1454
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 1456
    invoke-direct {p0, p1}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1458
    :cond_0
    return-void
.end method

.method private readDraftSmsMessage(Lcom/android/mms/data/Conversation;)Ljava/lang/String;
    .locals 12
    .parameter "conv"

    .prologue
    .line 2373
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v10

    .line 2374
    .local v10, thread_id:J
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2375
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readDraftSmsMessage conv: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-gtz v0, :cond_2

    .line 2379
    const-string v7, ""

    .line 2415
    :cond_1
    :goto_0
    return-object v7

    .line 2382
    :cond_2
    sget-object v0, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 2383
    .local v2, thread_uri:Landroid/net/Uri;
    const-string v7, ""

    .line 2385
    .local v7, body:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/mms/data/WorkingMessage;->SMS_BODY_PROJECTION:[Ljava/lang/String;

    const-string v4, "type=3"

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 2387
    .local v8, c:Landroid/database/Cursor;
    const/4 v9, 0x0

    .line 2388
    .local v9, haveDraft:Z
    if-eqz v8, :cond_4

    .line 2390
    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2391
    const/4 v0, 0x0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    .line 2392
    const/4 v9, 0x1

    .line 2395
    :cond_3
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 2402
    :cond_4
    if-eqz v9, :cond_5

    .line 2403
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2409
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 2411
    :cond_5
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2412
    const-string v1, "readDraftSmsMessage haveDraft: "

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2395
    :catchall_0
    move-exception v0

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    throw v0

    .line 2412
    :cond_6
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private removeSlideAttachments(Lcom/android/mms/model/SlideModel;)V
    .locals 2
    .parameter "slide"

    .prologue
    .line 2706
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 2707
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 2708
    invoke-virtual {p1}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 2712
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 2716
    .local v0, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 2719
    if-nez v0, :cond_1

    .line 2721
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    .line 2728
    :cond_0
    :goto_0
    return-void

    .line 2722
    :cond_1
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2724
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    goto :goto_0
.end method

.method private removeSubjectIfEmpty(Z)V
    .locals 1
    .parameter "notify"

    .prologue
    .line 1438
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1439
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1441
    :cond_0
    return-void
.end method

.method public static removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V
    .locals 8
    .parameter "slideshow"

    .prologue
    .line 803
    if-eqz p0, :cond_3

    .line 804
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v4

    .line 805
    .local v4, thumbnailManager:Lcom/android/mms/util/ThumbnailManager;
    const/4 v2, 0x0

    .line 806
    .local v2, removedSomething:Z
    invoke-virtual {p0}, Lcom/android/mms/model/SlideshowModel;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 807
    .local v1, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 808
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/mms/model/SlideModel;

    .line 809
    .local v3, slideModel:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 811
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v0

    .line 812
    .local v0, im:Lcom/android/mms/model/ImageModel;
    invoke-static {v0}, Lcom/android/mms/util/ThumbnailManager;->getThumbnailUri(Lcom/android/mms/model/MediaModel;)Landroid/net/Uri;

    move-result-object v5

    .line 813
    .local v5, uri:Landroid/net/Uri;
    invoke-virtual {v4, v5}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 815
    const/4 v2, 0x1

    .line 816
    goto :goto_0

    .end local v0           #im:Lcom/android/mms/model/ImageModel;
    .end local v5           #uri:Landroid/net/Uri;
    :cond_1
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 818
    invoke-virtual {v3}, Lcom/android/mms/model/SlideModel;->getVideo()Lcom/android/mms/model/VideoModel;

    move-result-object v6

    .line 819
    .local v6, vm:Lcom/android/mms/model/VideoModel;
    invoke-static {v6}, Lcom/android/mms/util/ThumbnailManager;->getThumbnailUri(Lcom/android/mms/model/MediaModel;)Landroid/net/Uri;

    move-result-object v5

    .line 820
    .restart local v5       #uri:Landroid/net/Uri;
    invoke-virtual {v4, v5}, Lcom/android/mms/util/ThumbnailManager;->removeThumbnail(Landroid/net/Uri;)V

    .line 822
    const/4 v2, 0x1

    goto :goto_0

    .line 825
    .end local v3           #slideModel:Lcom/android/mms/model/SlideModel;
    .end local v5           #uri:Landroid/net/Uri;
    .end local v6           #vm:Lcom/android/mms/model/VideoModel;
    :cond_2
    if-eqz v2, :cond_3

    .line 831
    invoke-static {}, Lcom/android/mms/MmsApp;->getApplication()Lcom/android/mms/MmsApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/MmsApp;->getThumbnailManager()Lcom/android/mms/util/ThumbnailManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/mms/util/ThumbnailManager;->clearBackingStore()V

    .line 834
    .end local v1           #iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/mms/model/SlideModel;>;"
    .end local v2           #removedSomething:Z
    .end local v4           #thumbnailManager:Lcom/android/mms/util/ThumbnailManager;
    :cond_3
    return-void
.end method

.method private sendMmsWorker(Lcom/android/mms/data/Conversation;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;I)V
    .locals 27
    .parameter "conv"
    .parameter "mmsUri"
    .parameter "persister"
    .parameter "slideshow"
    .parameter "sendReq"
    .parameter "simId"

    .prologue
    .line 2137
    const-wide/16 v22, 0x0

    .line 2138
    .local v22, threadId:J
    const/4 v12, 0x0

    .line 2139
    .local v12, cursor:Landroid/database/Cursor;
    const/16 v19, 0x0

    .line 2142
    .local v19, newMessage:Z
    :try_start_0
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 2143
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onPreMessageSent()V

    .line 2147
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mForceUpdateThreadId:Z

    if-eqz v3, :cond_0

    .line 2148
    const/4 v3, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->setNeedForceUpdateThreadId(Z)V

    .line 2149
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mForceUpdateThreadId:Z

    .line 2151
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v22

    .line 2152
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->setNeedForceUpdateThreadId(Z)V

    .line 2154
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2155
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMmsWorker: update draft MMS message "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " threadId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v22

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2160
    :cond_1
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/data/ContactList;->getNumbers(Z)[Ljava/lang/String;

    move-result-object v13

    .line 2161
    .local v13, dests:[Ljava/lang/String;
    array-length v3, v13

    const/4 v4, 0x1

    if-ne v3, v4, :cond_4

    .line 2164
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v4

    const/4 v6, 0x0

    aget-object v6, v13, v6

    invoke-static {v3, v4, v5, v6}, Lcom/android/mms/data/Conversation;->verifySingleRecipient(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 2167
    .local v18, newAddress:Ljava/lang/String;
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 2168
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendMmsWorker: newAddress "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " dests[0]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2172
    :cond_2
    const/4 v3, 0x0

    aget-object v3, v13, v3

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2173
    const/4 v3, 0x0

    aput-object v18, v13, v3

    .line 2174
    invoke-static {v13}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v15

    .line 2175
    .local v15, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v15, :cond_4

    .line 2176
    const-string v3, "Mms:app"

    const/4 v4, 0x2

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2177
    const-string v3, "sendMmsWorker: REPLACING number!!!"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2179
    :cond_3
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 2183
    .end local v15           #encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    .end local v18           #newAddress:Ljava/lang/String;
    :cond_4
    if-nez p2, :cond_7

    const/16 v19, 0x1

    .line 2184
    :goto_0
    if-eqz v19, :cond_5

    .line 2186
    new-instance v26, Landroid/content/ContentValues;

    invoke-direct/range {v26 .. v26}, Landroid/content/ContentValues;-><init>()V

    .line 2187
    .local v26, values:Landroid/content/ContentValues;
    const-string v3, "msg_box"

    const/4 v4, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2188
    const-string v3, "thread_id"

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2189
    const-string v3, "m_type"

    const/16 v4, 0x80

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2191
    const-string v3, "sim_id"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2193
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    move-object/from16 v0, v26

    invoke-static {v3, v4, v5, v0}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object p2

    .line 2196
    .end local v26           #values:Landroid/content/ContentValues;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2200
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/common/userhappiness/UserHappinessSignals;->userAcceptedImeText(Landroid/content/Context;)V

    .line 2203
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    sget-object v6, Lcom/android/mms/data/WorkingMessage;->MMS_OUTBOX_PROJECTION:[Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-static/range {v3 .. v9}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v12

    .line 2205
    if-eqz v12, :cond_a

    .line 2206
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxSizeScaleForPendingMmsAllowed()I

    move-result v3

    const/4 v4, 0x1

    invoke-static {v4}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v4

    mul-int/2addr v3, v4

    int-to-long v0, v3

    move-wide/from16 v16, v0

    .line 2210
    .local v16, maxMessageSize:J
    const-wide/16 v24, 0x0

    .line 2211
    .local v24, totalPendingSize:J
    :cond_6
    :goto_1
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 2213
    const-wide/16 v3, 0x87

    const/4 v5, 0x2

    invoke-interface {v12, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-eqz v3, :cond_6

    .line 2214
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    add-long v24, v24, v3

    goto :goto_1

    .line 2183
    .end local v16           #maxMessageSize:J
    .end local v24           #totalPendingSize:J
    :cond_7
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 2218
    .restart local v16       #maxMessageSize:J
    .restart local v24       #totalPendingSize:J
    :cond_8
    cmp-long v3, v24, v16

    if-ltz v3, :cond_a

    .line 2219
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->unDiscard()V

    .line 2220
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v3}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMaxPendingMessagesReached()V

    .line 2221
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p6

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->markMmsMessageWithError(Landroid/net/Uri;I)V

    .line 2222
    const-string v3, "Mms/Txn"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "totalPendingSize >= maxMessageSize, totalPendingSize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v24

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2227
    if-eqz v12, :cond_9

    .line 2228
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2286
    .end local v16           #maxMessageSize:J
    .end local v24           #totalPendingSize:J
    :cond_9
    :goto_2
    return-void

    .line 2227
    :cond_a
    if-eqz v12, :cond_b

    .line 2228
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    .line 2233
    :cond_b
    :try_start_1
    invoke-static {}, Lcom/android/mms/draft/DraftManager;->getInstance()Lcom/android/mms/draft/DraftManager;

    move-result-object v3

    const/16 v4, 0x10

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const/4 v11, 0x0

    move-wide/from16 v5, v22

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    invoke-virtual/range {v3 .. v11}, Lcom/android/mms/draft/DraftManager;->saveDraft(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;

    move-result-object v20

    .line 2235
    .local v20, res:Lcom/android/mms/draft/MmsDraftData;
    if-eqz v20, :cond_c

    .line 2236
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 2237
    const-string v3, "[Mms][Draft][WorkingMessage]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[sendMmsWorker] mmsUir : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    invoke-virtual/range {v20 .. v20}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object p2

    .line 2251
    :cond_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v22

    invoke-direct {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2253
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 2257
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 2260
    :try_start_2
    new-instance v21, Lcom/android/mms/transaction/MmsMessageSender;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual/range {p4 .. p4}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v4

    int-to-long v4, v4

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-direct {v0, v3, v1, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 2263
    .local v21, sender:Lcom/android/mms/transaction/MessageSender;
    move-object/from16 v0, v21

    move/from16 v1, p6

    invoke-interface {v0, v1}, Lcom/android/mms/transaction/MessageSender;->setSimId(I)V

    .line 2265
    invoke-interface/range {v21 .. v23}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    move-result v3

    if-nez v3, :cond_f

    .line 2268
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p2

    invoke-static {v3, v4, v0, v5, v6}, Landroid/database/sqlite/SqliteWrapper;->delete(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 2279
    :cond_d
    :goto_3
    invoke-static {}, Lcom/android/mms/util/Recycler;->getMmsRecycler()Lcom/android/mms/util/Recycler$MmsRecycler;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-wide/from16 v0, v22

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 2283
    .end local v21           #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2285
    const/4 v3, 0x0

    sput-boolean v3, Lcom/android/mms/transaction/SendTransaction;->sMMSSent:Z

    goto/16 :goto_2

    .line 2227
    .end local v13           #dests:[Ljava/lang/String;
    .end local v20           #res:Lcom/android/mms/draft/MmsDraftData;
    :catchall_0
    move-exception v3

    if-eqz v12, :cond_e

    .line 2228
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    :cond_e
    throw v3

    .line 2253
    .restart local v13       #dests:[Ljava/lang/String;
    :catchall_1
    move-exception v3

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v3

    .line 2271
    .restart local v20       #res:Lcom/android/mms/draft/MmsDraftData;
    .restart local v21       #sender:Lcom/android/mms/transaction/MessageSender;
    :cond_f
    :try_start_3
    invoke-static {}, Lcom/android/mms/MmsConfig;->isShowDraftIcon()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2272
    const-string v3, "WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendMmsWorker: sendMessage success, mark draft false. threadId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2273
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 2274
    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2275
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 2280
    .end local v21           #sender:Lcom/android/mms/transaction/MessageSender;
    :catch_0
    move-exception v14

    .line 2281
    .local v14, e:Ljava/lang/Exception;
    const-string v3, "WorkingMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to send message: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", threadId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v22

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4
.end method

.method private sendSmsWorker(Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 7
    .parameter "msgText"
    .parameter "semiSepRecipients"
    .parameter "threadId"
    .parameter "simId"

    .prologue
    .line 2108
    const-string v1, ";"

    invoke-static {p2, v1}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 2109
    .local v2, dests:[Ljava/lang/String;
    const-string v1, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v1, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2110
    const-string v1, "Mms:transaction"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sendSmsWorker sending message: recipients="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    :cond_0
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    move-object v3, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 2115
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    invoke-interface {v0, p5}, Lcom/android/mms/transaction/MessageSender;->setSimId(I)V

    .line 2119
    :try_start_0
    invoke-interface {v0, p3, p4}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z

    .line 2122
    invoke-static {}, Lcom/android/mms/util/Recycler;->getSmsRecycler()Lcom/android/mms/util/Recycler$SmsRecycler;

    move-result-object v1

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1, v3, p3, p4}, Lcom/android/mms/util/Recycler;->deleteOldMessagesByThreadId(Landroid/content/Context;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2127
    :goto_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onMessageSent()V

    .line 2128
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2130
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/mms/transaction/SmsReceiverService;->sSmsSent:Z

    .line 2131
    return-void

    .line 2123
    :catch_0
    move-exception v6

    .line 2124
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to send SMS message, threadId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private setOrAppendFileAttachment(ILandroid/net/Uri;Z)V
    .locals 10
    .parameter "type"
    .parameter "uri"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/mms/MmsException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 2782
    const/4 v1, 0x0

    .line 2783
    .local v1, fileAttach:Lcom/android/mms/model/FileAttachmentModel;
    const/4 v6, 0x6

    if-ne p1, v6, :cond_0

    .line 2784
    const-string v6, "WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WorkingMessage.setOrAppendFileAttachment(): for vcard "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2785
    new-instance v1, Lcom/android/mms/model/VCardModel;

    .end local v1           #fileAttach:Lcom/android/mms/model/FileAttachmentModel;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v1, v6, p2}, Lcom/android/mms/model/VCardModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .line 2792
    .restart local v1       #fileAttach:Lcom/android/mms/model/FileAttachmentModel;
    :goto_0
    if-nez v1, :cond_2

    .line 2793
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOrAppendFileAttachment failedto create FileAttachmentModel "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " uri = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2786
    :cond_0
    const/4 v6, 0x7

    if-ne p1, v6, :cond_1

    .line 2787
    const-string v6, "WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "WorkingMessage.setOrAppendFileAttachment(): for vcalendar "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2788
    new-instance v1, Lcom/android/mms/model/VCalendarModel;

    .end local v1           #fileAttach:Lcom/android/mms/model/FileAttachmentModel;
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v6

    invoke-direct {v1, v6, p2}, Lcom/android/mms/model/VCalendarModel;-><init>(Landroid/content/Context;Landroid/net/Uri;)V

    .restart local v1       #fileAttach:Lcom/android/mms/model/FileAttachmentModel;
    goto :goto_0

    .line 2790
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setOrAppendFileAttachment type="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", uri="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2797
    :cond_2
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v7

    invoke-virtual {v6, v7, p3}, Lcom/android/mms/model/SlideshowModel;->checkAttachmentSize(IZ)V

    .line 2801
    const/4 v6, 0x5

    invoke-static {v6}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 2803
    .local v3, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2805
    const/4 v0, 0x0

    .line 2806
    .local v0, attachSize:I
    invoke-virtual {v1}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I

    move-result v0

    .line 2807
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v0}, Lcom/android/mms/model/SlideshowModel;->increaseSlideshowSize(I)V

    .line 2816
    .end local v0           #attachSize:I
    :cond_3
    const-string v6, "WorkingMessage"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "In add slideshow attach mMmsAttachmentEnhancePlugin = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v6

    if-ne v6, v9, :cond_4

    .line 2823
    const-string v6, "WorkingMessage"

    const-string v7, "Add vcard or vcalender and belong to OP01."

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2838
    :goto_1
    if-eqz p3, :cond_6

    .line 2839
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->addFileAttachment(Lcom/android/mms/model/FileAttachmentModel;)Z

    .line 2845
    :goto_2
    return-void

    .line 2826
    :cond_4
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v5

    .line 2827
    .local v5, slide:Lcom/android/mms/model/SlideModel;
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeImage()Z

    .line 2828
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeVideo()Z

    .line 2829
    invoke-virtual {v5}, Lcom/android/mms/model/SlideModel;->removeAudio()Z

    .line 2830
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 2831
    .local v4, size:I
    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_3
    if-lt v2, v9, :cond_5

    .line 2832
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v2}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 2831
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 2834
    :cond_5
    const-string v6, "WorkingMessage"

    const-string v7, "Replace vcard or vcalender or Not OP01"

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2842
    .end local v2           #i:I
    .end local v4           #size:I
    .end local v5           #slide:Lcom/android/mms/model/SlideModel;
    :cond_6
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    .line 2843
    iget-object v6, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v6, v1}, Lcom/android/mms/model/SlideshowModel;->addFileAttachment(Lcom/android/mms/model/FileAttachmentModel;)Z

    goto :goto_2
.end method

.method private static stateString(I)Ljava/lang/String;
    .locals 3
    .parameter "state"

    .prologue
    .line 1862
    if-nez p0, :cond_0

    .line 1863
    const-string v1, "<none>"

    .line 1881
    :goto_0
    return-object v1

    .line 1865
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1866
    .local v0, sb:Ljava/lang/StringBuilder;
    and-int/lit8 v1, p0, 0x1

    if-lez v1, :cond_1

    .line 1867
    const-string v1, "RECIPIENTS_REQUIRE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1868
    :cond_1
    and-int/lit8 v1, p0, 0x2

    if-lez v1, :cond_2

    .line 1869
    const-string v1, "HAS_SUBJECT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1870
    :cond_2
    and-int/lit8 v1, p0, 0x4

    if-lez v1, :cond_3

    .line 1871
    const-string v1, "HAS_ATTACHMENT | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1872
    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-lez v1, :cond_4

    .line 1873
    const-string v1, "LENGTH_REQUIRES_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1874
    :cond_4
    and-int/lit8 v1, p0, 0x10

    if-lez v1, :cond_5

    .line 1875
    const-string v1, "FORCE_MMS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1877
    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-lez v1, :cond_6

    .line 1878
    const-string v1, "MULTIPLE_RECIPIENTS | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1880
    :cond_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 1881
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private syncTextFromSlideshow()V
    .locals 3

    .prologue
    .line 1422
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1432
    :cond_0
    :goto_0
    return-void

    .line 1426
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 1427
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1431
    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method private syncTextToSlideshow()V
    .locals 15

    .prologue
    .line 1355
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 1414
    :cond_0
    :goto_0
    return-void

    .line 1358
    :cond_1
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v14

    .line 1373
    .local v14, slide:Lcom/android/mms/model/SlideModel;
    const/4 v13, 0x0

    .line 1374
    .local v13, oldText:Lcom/android/mms/model/TextModel;
    if-eqz v14, :cond_2

    .line 1375
    invoke-virtual {v14}, Lcom/android/mms/model/SlideModel;->getText()Lcom/android/mms/model/TextModel;

    move-result-object v13

    .line 1378
    :cond_2
    const-string v2, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncTextToSlideshow() mSlideshow = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v1, :cond_4

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1380
    new-instance v0, Lcom/android/mms/model/TextModel;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const-string v2, "text/plain"

    const-string v3, "text_0.txt"

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    :goto_2
    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v5

    if-ltz v5, :cond_6

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    :goto_3
    invoke-direct/range {v0 .. v5}, Lcom/android/mms/model/TextModel;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/mms/model/RegionModel;[B)V

    .line 1386
    .local v0, text:Lcom/android/mms/model/TextModel;
    if-eqz v14, :cond_0

    .line 1387
    if-eqz v13, :cond_7

    :try_start_0
    invoke-virtual {v13}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {v13}, Lcom/android/mms/model/TextModel;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v12, v1

    .line 1389
    .local v12, oldLength:I
    :goto_4
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    array-length v11, v1

    .line 1390
    .local v11, newLength:I
    :goto_5
    sub-int v1, v11, v12

    if-lez v1, :cond_a

    .line 1391
    const/4 v6, 0x0

    .line 1392
    .local v6, attachmentSize:I
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 1394
    .local v10, mmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v10, :cond_3

    invoke-interface {v10}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1396
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :goto_6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/mms/model/FileAttachmentModel;

    .line 1397
    .local v8, fileAttachment:Lcom/android/mms/model/FileAttachmentModel;
    invoke-virtual {v8}, Lcom/android/mms/model/FileAttachmentModel;->getAttachSize()I
    :try_end_0
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v6, v1

    goto :goto_6

    .line 1378
    .end local v0           #text:Lcom/android/mms/model/TextModel;
    .end local v6           #attachmentSize:I
    .end local v8           #fileAttachment:Lcom/android/mms/model/FileAttachmentModel;
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v10           #mmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v11           #newLength:I
    .end local v12           #oldLength:I
    :cond_4
    const/4 v1, 0x0

    goto/16 :goto_1

    .line 1380
    :cond_5
    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v4}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getLayout()Lcom/android/mms/model/LayoutModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/LayoutModel;->getTextRegion()Lcom/android/mms/model/RegionModel;

    move-result-object v4

    goto/16 :goto_2

    :cond_6
    const/4 v5, 0x0

    goto :goto_3

    .line 1387
    .restart local v0       #text:Lcom/android/mms/model/TextModel;
    :cond_7
    const/4 v12, 0x0

    goto :goto_4

    .line 1389
    .restart local v12       #oldLength:I
    :cond_8
    const/4 v11, 0x0

    goto :goto_5

    .line 1400
    .restart local v6       #attachmentSize:I
    .restart local v10       #mmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .restart local v11       #newLength:I
    :cond_9
    :try_start_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getCurrentMessageSize()I

    move-result v1

    add-int/2addr v1, v6

    sub-int v2, v11, v12

    add-int/2addr v1, v2

    const/4 v2, 0x1

    invoke-static {v2}, Lcom/android/mms/MmsConfig;->getUserSetMmsSizeLimit(Z)I

    move-result v2

    if-le v1, v2, :cond_a

    .line 1402
    new-instance v1, Lcom/android/mms/ExceedMessageSizeException;

    invoke-direct {v1}, Lcom/android/mms/ExceedMessageSizeException;-><init>()V

    throw v1
    :try_end_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1407
    .end local v6           #attachmentSize:I
    .end local v10           #mmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .end local v11           #newLength:I
    .end local v12           #oldLength:I
    :catch_0
    move-exception v7

    .line 1408
    .local v7, e:Lcom/android/mms/ExceedMessageSizeException;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 1409
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mIsExceedSize:Z

    goto/16 :goto_0

    .line 1405
    .end local v7           #e:Lcom/android/mms/ExceedMessageSizeException;
    .restart local v11       #newLength:I
    .restart local v12       #oldLength:I
    :cond_a
    :try_start_2
    invoke-virtual {v14, v0}, Lcom/android/mms/model/SlideModel;->add(Lcom/android/mms/model/MediaModel;)Z
    :try_end_2
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0
.end method

.method public static updateCreationMode(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2585
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 2586
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "pref_key_mms_creation_mode"

    const-string v3, "FREE"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2587
    .local v0, creationMode:Ljava/lang/String;
    const-string v2, "WARNING"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2588
    const/16 v2, -0xa

    sput v2, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 2594
    :goto_0
    return-void

    .line 2589
    :cond_0
    const-string v2, "RESTRICTED"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2590
    const/16 v2, -0xb

    sput v2, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    goto :goto_0

    .line 2592
    :cond_1
    const/4 v2, 0x0

    sput v2, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    goto :goto_0
.end method

.method private updateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V
    .locals 10
    .parameter "conv"
    .parameter "contents"

    .prologue
    const/4 v9, 0x3

    const/4 v4, 0x2

    const/4 v8, 0x0

    const-wide/16 v6, 0x0

    .line 2476
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2477
    .local v0, threadId:J
    const-string v3, "Mms:app"

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2478
    const-string v3, "updateDraftSmsMessage tid=%d, contents=\"%s\""

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x1

    aput-object p2, v4, v5

    invoke-static {v3, v4}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2481
    :cond_0
    cmp-long v3, v0, v6

    if-gtz v3, :cond_1

    .line 2518
    :goto_0
    return-void

    .line 2485
    :cond_1
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2, v9}, Landroid/content/ContentValues;-><init>(I)V

    .line 2486
    .local v2, values:Landroid/content/ContentValues;
    const-string v3, "thread_id"

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 2487
    const-string v3, "body"

    invoke-virtual {v2, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2488
    const-string v3, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 2489
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v5, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v3, v4, v5, v2}, Landroid/database/sqlite/SqliteWrapper;->insert(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 2490
    invoke-virtual {p0, p1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2491
    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldThreadId:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_2

    .line 2492
    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldThreadId:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_2

    .line 2493
    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldThreadId:J

    invoke-virtual {p0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(J)V

    .line 2499
    :cond_2
    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J

    cmp-long v3, v3, v6

    if-lez v3, :cond_3

    .line 2500
    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_3

    .line 2501
    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J

    invoke-direct {p0, v3, v4}, Lcom/android/mms/data/WorkingMessage;->deleteDraftSmsMessage(J)V

    .line 2504
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2507
    :cond_3
    iput-wide v0, p0, Lcom/android/mms/data/WorkingMessage;->mOldSmsSaveThreadId:J

    .line 2512
    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    cmp-long v3, v3, v6

    if-eqz v3, :cond_4

    iget-wide v3, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    cmp-long v3, v3, v0

    if-eqz v3, :cond_4

    .line 2513
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    invoke-virtual {v3, v4, v5, v8}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    .line 2514
    iput-wide v6, p0, Lcom/android/mms/data/WorkingMessage;->mOldMmsSaveThreadId:J

    .line 2517
    :cond_4
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method private updateSendStats(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter "conv"

    .prologue
    .line 2032
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->getNumbers()[Ljava/lang/String;

    move-result-object v0

    .line 2033
    .local v0, dests:[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2035
    .local v1, phoneNumbers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v2, Lcom/android/common/contacts/DataUsageStatUpdater;

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/android/common/contacts/DataUsageStatUpdater;-><init>(Landroid/content/Context;)V

    .line 2036
    .local v2, updater:Lcom/android/common/contacts/DataUsageStatUpdater;
    invoke-virtual {v2, v1}, Lcom/android/common/contacts/DataUsageStatUpdater;->updateWithPhoneNumber(Ljava/util/Collection;)Z

    .line 2037
    return-void
.end method

.method private updateState(IZZ)V
    .locals 7
    .parameter "state"
    .parameter "on"
    .parameter "notify"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1893
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WorkingMessage.updateState("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1894
    sget-boolean v1, Lcom/android/mms/data/WorkingMessage;->sMmsEnabled:Z

    if-nez v1, :cond_1

    .line 1940
    :cond_0
    :goto_0
    return-void

    .line 1900
    :cond_1
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1901
    .local v0, oldState:I
    if-eqz p2, :cond_5

    .line 1902
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    or-int/2addr v1, p1

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1905
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v1, v1, -0x11

    if-lez v1, :cond_2

    .line 1906
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1915
    :cond_2
    :goto_1
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v2, 0x10

    if-ne v1, v2, :cond_3

    and-int/lit8 v1, v0, -0x11

    if-lez v1, :cond_3

    .line 1916
    iput v5, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    .line 1919
    :cond_3
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateState(): notify="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mMmsState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1922
    if-eqz p3, :cond_4

    .line 1923
    if-nez v0, :cond_6

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eqz v1, :cond_6

    .line 1925
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v4, v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZZ)V

    .line 1934
    :cond_4
    :goto_2
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-eq v0, v1, :cond_0

    .line 1935
    const-string v1, "WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v3}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1936
    const-string v1, "Mms:app"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v2, "updateState: %s%s = %s"

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/Object;

    if-eqz p2, :cond_7

    const-string v1, "+"

    :goto_3
    aput-object v1, v3, v5

    invoke-static {p1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    invoke-static {v1}, Lcom/android/mms/data/WorkingMessage;->stateString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v6

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1910
    :cond_5
    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    goto/16 :goto_1

    .line 1927
    :cond_6
    if-eqz v0, :cond_4

    iget v1, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-nez v1, :cond_4

    .line 1929
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v1, v5, v4}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onProtocolChanged(ZZ)V

    goto :goto_2

    .line 1936
    :cond_7
    const-string v1, "-"

    goto :goto_3
.end method


# virtual methods
.method public asyncDeleteAllMmsDraft(J)V
    .locals 3
    .parameter "threadId"

    .prologue
    .line 2653
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 2654
    const-string v1, "WorkingMessage"

    const-string v2, "asyncDeleteAllMmsDraft"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2655
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2656
    .local v0, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2658
    .end local v0           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public asyncDeleteDraftMmsMessage(J)V
    .locals 4
    .parameter "threadId"

    .prologue
    const/4 v3, 0x0

    .line 2562
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 2563
    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    .line 2564
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "thread_id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2565
    .local v0, where:Ljava/lang/String;
    sget-object v1, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v1, v0, v3}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2568
    iput-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2570
    .end local v0           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 6
    .parameter "conv"

    .prologue
    const/4 v5, 0x0

    .line 2548
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 2550
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2551
    .local v0, threadId:J
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-lez v3, :cond_0

    .line 2552
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "thread_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2553
    .local v2, where:Ljava/lang/String;
    sget-object v3, Landroid/provider/Telephony$Mms$Draft;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {p0, v3, v2, v5}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2556
    iput-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 2559
    .end local v2           #where:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V
    .locals 5
    .parameter "conv"

    .prologue
    .line 2532
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    .line 2534
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 2535
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 2536
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "type=3"

    const/4 v4, 0x0

    invoke-direct {p0, v2, v3, v4}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 2539
    :cond_0
    return-void
.end method

.method public checkSizeBeforeAppend()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2698
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v0, :cond_0

    .line 2702
    :goto_0
    return v2

    .line 2701
    :cond_0
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/model/SlideshowModel;->checkMessageSize(I)V

    goto :goto_0
.end method

.method public clearConversation(Lcom/android/mms/data/Conversation;Z)V
    .locals 12
    .parameter "conv"
    .parameter "resetThreadId"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x0

    .line 2420
    const/4 v8, 0x0

    .line 2421
    .local v8, messageCount:I
    sget-object v0, Landroid/provider/Telephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "simple"

    const-string v3, "true"

    invoke-virtual {v0, v1, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 2423
    .local v2, sAllThreadsUri:Landroid/net/Uri;
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 2424
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "message_count"

    aput-object v4, v3, v11

    const/4 v4, 0x1

    const-string v6, "_id"

    aput-object v6, v3, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "_id="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v9

    invoke-virtual {v4, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v6, v5

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 2430
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    .line 2432
    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2433
    const-string v0, "message_count"

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v8

    .line 2436
    :cond_0
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 2441
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v0

    if-nez v0, :cond_2

    if-nez v8, :cond_2

    .line 2443
    const-string v0, "clearConversation calling clearThreadId"

    new-array v1, v11, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2444
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->clearThreadId()V

    .line 2447
    :cond_2
    invoke-virtual {p1, v11}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 2448
    return-void

    .line 2436
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public deleteGruoupMmsDraft()V
    .locals 2

    .prologue
    .line 2961
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2962
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachedFiles()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasMediaAttachments()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2964
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2965
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 2968
    :cond_0
    return-void
.end method

.method public declared-synchronized discard()V
    .locals 1

    .prologue
    .line 1639
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->discard(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1640
    monitor-exit p0

    return-void

    .line 1639
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized discard(Z)V
    .locals 4
    .parameter "isDiscard"

    .prologue
    .line 2854
    monitor-enter p0

    :try_start_0
    const-string v0, "Mms/WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "discard(): Start. mConversation.ThreadId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", MessageCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getMessageCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2856
    const-string v0, "Mms:app"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2857
    const-string v0, "[WorkingMessage] discard"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2860
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_2

    .line 2878
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    .line 2865
    :cond_2
    :try_start_1
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 2866
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->cancelThumbnailLoading()V

    .line 2869
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    if-eqz v0, :cond_3

    .line 2870
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteCurrentDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2872
    :cond_3
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    if-eqz v0, :cond_4

    .line 2873
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 2875
    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 2876
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 2854
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dump()V
    .locals 3

    .prologue
    .line 1789
    const-string v0, "WorkingMessage"

    const-string v1, "WorkingMessage:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1790
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->dumpWorkingRecipients()V

    .line 1791
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_0

    .line 1792
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1794
    :cond_0
    return-void
.end method

.method public getConversation()Lcom/android/mms/data/Conversation;
    .locals 1

    .prologue
    .line 1814
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method public getCurrentMessageSize()I
    .locals 2

    .prologue
    .line 2574
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 2575
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v0

    .line 2578
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIsExceedSize()Z
    .locals 1

    .prologue
    .line 2975
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsExceedSize:Z

    return v0
.end method

.method public getIsUpdateAttachEditor()Z
    .locals 2

    .prologue
    .line 2986
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsUpdateAttachEditor:Z

    if-nez v0, :cond_0

    .line 2987
    const-string v0, "WorkingMessage"

    const-string v1, "mIsUpdateAttachEditor == false"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2989
    :cond_0
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsUpdateAttachEditor:Z

    return v0
.end method

.method public getMessageUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 2606
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    return-object v0
.end method

.method public getSlideshow()Lcom/android/mms/model/SlideshowModel;
    .locals 1

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 3000
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    return v0
.end method

.method public getSubject()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 1338
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getWorkingRecipients()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1480
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1481
    const/4 v1, 0x0

    .line 1484
    :goto_0
    return-object v1

    .line 1483
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1484
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public hasAttachedFiles()Z
    .locals 1

    .prologue
    .line 2849
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->sizeOfFilesAttach()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasAttachment()Z
    .locals 1

    .prologue
    .line 1294
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMediaAttachments()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2769
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v3, :cond_1

    move v1, v2

    .line 2776
    :cond_0
    :goto_0
    return v1

    .line 2772
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2775
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v3, v2}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v0

    .line 2776
    .local v0, slide:Lcom/android/mms/model/SlideModel;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasAudio()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasVideo()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/mms/model/SlideModel;->hasImage()Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public hasSlideshow()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1310
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    if-le v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSubject()Z
    .locals 1

    .prologue
    .line 1347
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 745
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 746
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v2

    if-lez v2, :cond_1

    .line 748
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 746
    goto :goto_0

    .line 748
    :cond_2
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public isDiscarded()Z
    .locals 1

    .prologue
    .line 1653
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    return v0
.end method

.method public isFakeMmsForDraft()Z
    .locals 1

    .prologue
    .line 1042
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    and-int/lit8 v0, v0, 0x10

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWorthSaving()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 1010
    const-string v1, "Mms/WorkingMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isWorthSaving(): hasText()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasSubject()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasAttachment()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasSlideshow()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return v0

    .line 1019
    :cond_1
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->isFakeMmsForDraft()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1022
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public ismResizeImage()Z
    .locals 1

    .prologue
    .line 2598
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mResizeImage:Z

    return v0
.end method

.method public readStateFromBundle(Landroid/os/Bundle;)V
    .locals 13
    .parameter "bundle"

    .prologue
    .line 1689
    if-nez p1, :cond_1

    .line 1749
    :cond_0
    :goto_0
    return-void

    .line 1693
    :cond_1
    const-string v0, "subject"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1694
    .local v11, subject:Ljava/lang/String;
    const/4 v0, 0x0

    invoke-virtual {p0, v11, v0}, Lcom/android/mms/data/WorkingMessage;->setSubject(Ljava/lang/CharSequence;Z)V

    .line 1696
    const-string v0, "msg_uri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    .line 1699
    .local v4, uri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1700
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v0, "pref_msg_threadid_key"

    const-wide/16 v5, -0x1

    invoke-interface {v10, v0, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 1701
    .local v2, threadId:J
    if-nez v4, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_2

    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_2

    .line 1703
    const-string v0, "pref_msg_uri_key"

    const/4 v1, 0x0

    invoke-interface {v10, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1704
    .local v12, uriString:Ljava/lang/String;
    if-eqz v12, :cond_2

    const-string v0, ""

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1705
    invoke-static {v12}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1708
    .end local v12           #uriString:Ljava/lang/String;
    :cond_2
    invoke-interface {v10}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    .line 1709
    .local v8, editor:Landroid/content/SharedPreferences$Editor;
    const-string v0, "pref_msg_uri_key"

    const-string v1, ""

    invoke-interface {v8, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1710
    const-string v0, "pref_msg_threadid_key"

    const-wide/16 v5, -0x1

    invoke-interface {v8, v0, v5, v6}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1711
    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1713
    if-eqz v4, :cond_5

    .line 1714
    const-wide/16 v2, 0x0

    .line 1715
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-eqz v0, :cond_3

    .line 1716
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1717
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gtz v0, :cond_3

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1718
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    move-result-wide v2

    .line 1722
    :cond_3
    invoke-static {}, Lcom/android/mms/draft/DraftManager;->getInstance()Lcom/android/mms/draft/DraftManager;

    move-result-object v0

    const/16 v1, 0x20

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/android/mms/draft/DraftManager;->loadDraft(IJLandroid/net/Uri;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;

    move-result-object v9

    .line 1724
    .local v9, mdd:Lcom/android/mms/draft/MmsDraftData;
    if-eqz v9, :cond_4

    invoke-virtual {v9}, Lcom/android/mms/draft/MmsDraftData;->getBooleanResult()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1725
    invoke-virtual {v9}, Lcom/android/mms/draft/MmsDraftData;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1726
    invoke-virtual {v9}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1727
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->checkDrmContent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmPart:Z

    .line 1728
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->checkDrmRight()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasDrmRight:Z

    .line 1729
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextFromSlideshow()V

    .line 1730
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    .line 1734
    :cond_4
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v0, :cond_0

    .line 1735
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    goto/16 :goto_0

    .line 1739
    .end local v9           #mdd:Lcom/android/mms/draft/MmsDraftData;
    :cond_5
    const-string v0, "sms_body"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1742
    .local v7, body:Ljava/lang/String;
    if-nez v7, :cond_6

    .line 1743
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto/16 :goto_0

    .line 1745
    :cond_6
    iput-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    goto/16 :goto_0
.end method

.method public removeAllFileAttaches()V
    .locals 2

    .prologue
    .line 2752
    const/4 v1, 0x5

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 2756
    .local v0, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v1, :cond_0

    .line 2757
    if-nez v0, :cond_1

    .line 2759
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    .line 2765
    :cond_0
    :goto_0
    return-void

    .line 2760
    :cond_1
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2762
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v1}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    goto :goto_0
.end method

.method public removeAttachment(Z)V
    .locals 4
    .parameter "notify"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 753
    const-string v0, "WorkingMessage"

    const-string v1, "WorkingMessage RemoveAttachment"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-static {v0}, Lcom/android/mms/data/WorkingMessage;->removeThumbnailsFromCache(Lcom/android/mms/model/SlideshowModel;)V

    .line 756
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSlideshow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 757
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 759
    :cond_0
    iput v3, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 760
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 761
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v0, :cond_1

    .line 762
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v2, v2}, Lcom/android/mms/data/WorkingMessage;->asyncDelete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    .line 763
    iput-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 766
    :cond_1
    const/4 v0, 0x4

    invoke-direct {p0, v0, v3, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 767
    if-eqz p1, :cond_2

    .line 771
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 774
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 775
    return-void
.end method

.method public removeExternalAttachment()V
    .locals 2

    .prologue
    .line 779
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->getAttachFiles()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 780
    const-string v0, "WorkingMessage"

    const-string v1, "removeExternalAttachment"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v0}, Lcom/android/mms/model/SlideshowModel;->removeAllAttachFiles()V

    .line 782
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    .line 783
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v0}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 785
    :cond_0
    return-void
.end method

.method public removeFakeMmsForDraft()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1491
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1, v1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1492
    return-void
.end method

.method public removeSlidesAttachment()V
    .locals 5

    .prologue
    .line 789
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v2, :cond_1

    .line 790
    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mSlideshow.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v2}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v1

    .line 792
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 793
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/mms/model/SlideshowModel;->remove(I)Lcom/android/mms/model/SlideModel;

    .line 792
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 795
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    .line 797
    const-string v2, "WorkingMessage"

    const-string v3, "removeSlidesAttachment"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 798
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v2}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 800
    .end local v0           #i:I
    .end local v1           #size:I
    :cond_1
    return-void
.end method

.method public requiresMms()Z
    .locals 1

    .prologue
    .line 1848
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized saveAsMms(Z)Landroid/net/Uri;
    .locals 11
    .parameter "notify"

    .prologue
    const/4 v0, 0x0

    const/4 v10, 0x1

    .line 1503
    monitor-enter p0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_0

    .line 1504
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "saveAsMms mDiscarded: true mConversation: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " returning NULL uri and bailing"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v1, v4}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1574
    :goto_0
    monitor-exit p0

    return-object v0

    .line 1513
    :cond_0
    const/16 v0, 0x10

    const/4 v1, 0x1

    :try_start_1
    invoke-direct {p0, v0, v1, p1}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1516
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1520
    :try_start_2
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1521
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1522
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->ensureThreadId()J

    .line 1524
    :cond_1
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    .line 1527
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/android/mms/data/WorkingMessage;->makeSendReq(Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;)Lcom/google/android/mms/pdu/SendReq;

    move-result-object v6

    .line 1528
    .local v6, sendReq:Lcom/google/android/mms/pdu/SendReq;
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    .line 1530
    .local v2, threadId:J
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[saveAsMms] threadId : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1532
    invoke-static {}, Lcom/android/mms/draft/DraftManager;->getInstance()Lcom/android/mms/draft/DraftManager;

    move-result-object v0

    const/16 v1, 0x10

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    iget-object v7, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    const/4 v8, 0x0

    invoke-virtual/range {v0 .. v8}, Lcom/android/mms/draft/DraftManager;->saveDraft(IJLandroid/net/Uri;Lcom/android/mms/model/SlideshowModel;Lcom/google/android/mms/pdu/SendReq;Landroid/content/Context;Lcom/android/mms/draft/IDraftInterface;)Lcom/android/mms/draft/MmsDraftData;

    move-result-object v9

    .line 1534
    .local v9, mdd:Lcom/android/mms/draft/MmsDraftData;
    if-eqz v9, :cond_4

    .line 1536
    invoke-virtual {v9}, Lcom/android/mms/draft/MmsDraftData;->getMessageUri()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1537
    invoke-virtual {v9}, Lcom/android/mms/draft/MmsDraftData;->getCreateOrUpdate()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 1538
    iget-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteVcardFile:Z

    if-eqz v0, :cond_2

    .line 1539
    const-string v0, "[Mms][Draft][WorkingMessage]"

    const-string v1, "[saveAsMms] remove file attachment temp files"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1541
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->deleteFileAttachmentTempFile()V

    .line 1543
    :cond_2
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v0, :cond_3

    invoke-virtual {v9}, Lcom/android/mms/draft/MmsDraftData;->getBooleanResult()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1544
    const-string v0, "[Mms][Draft][WorkingMessage]"

    const-string v1, "[saveAsMms] MmsException happened, and save failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1546
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->removeAllFileAttaches()V

    .line 1547
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->removeAttachment(Z)V

    .line 1548
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    new-instance v1, Lcom/android/mms/data/WorkingMessage$1;

    invoke-direct {v1, p0}, Lcom/android/mms/data/WorkingMessage$1;-><init>(Lcom/android/mms/data/WorkingMessage;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1560
    :cond_3
    const-string v0, "[Mms][Draft][WorkingMessage]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[saveAsMms] call draft manager return , and mMessageUri : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1562
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1570
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1572
    :try_start_3
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    .line 1574
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto/16 :goto_0

    .line 1572
    .end local v2           #threadId:J
    .end local v6           #sendReq:Lcom/google/android/mms/pdu/SendReq;
    .end local v9           #mdd:Lcom/android/mms/draft/MmsDraftData;
    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/mms/util/DraftCache;->setSavingDraft(Z)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1503
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public saveDraft(Z)V
    .locals 5
    .parameter "isStopping"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1583
    iget-boolean v1, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    if-eqz v1, :cond_0

    .line 1584
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDraft mDiscarded: true mConversation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " skipping saving draft and bailing"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1635
    :goto_0
    return-void

    .line 1590
    :cond_0
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    if-nez v1, :cond_1

    .line 1591
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "saveDraft() called with no conversation"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1594
    :cond_1
    const-string v1, "Mms:app"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1595
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveDraft for mConversation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1599
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1601
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1602
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mInterface:Lcom/android/mms/data/WorkingMessage$DraftInterface;

    invoke-direct {p0, v1, p1, v2}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftMmsMessage(Lcom/android/mms/data/Conversation;ZLcom/android/mms/draft/IDraftInterface;)V

    .line 1603
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 1606
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v1, v4}, Lcom/android/mms/data/Conversation;->setDraftState(Z)V

    goto :goto_0

    .line 1608
    :cond_3
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1616
    .local v0, content:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1617
    iget-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-direct {p0, v1, v0}, Lcom/android/mms/data/WorkingMessage;->asyncUpdateDraftSmsMessage(Lcom/android/mms/data/Conversation;Ljava/lang/String;)V

    .line 1618
    iput-boolean v4, p0, Lcom/android/mms/data/WorkingMessage;->mHasSmsDraft:Z

    goto :goto_0

    .line 1628
    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    goto :goto_0
.end method

.method public send(Ljava/lang/String;I)V
    .locals 20
    .parameter "recipientsInUI"
    .parameter "simId"

    .prologue
    .line 1952
    const-string v2, "Mms/Txn"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Enter send(). SIM_ID = "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1953
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    .line 1955
    .local v18, origThreadId:J
    const-string v2, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1956
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "send origThreadId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-wide/from16 v0, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1959
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/data/WorkingMessage;->removeSubjectIfEmpty(Z)V

    .line 1962
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/mms/data/WorkingMessage;->prepareForSave(Z)V

    .line 1965
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1966
    .local v4, conv:Lcom/android/mms/data/Conversation;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1968
    .local v17, msgTxt:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/mms/data/WorkingMessage;->requiresMms()Z

    move-result v2

    if-nez v2, :cond_1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v4, v1}, Lcom/android/mms/data/WorkingMessage;->addressContainsEmailToMms(Lcom/android/mms/data/Conversation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1971
    :cond_1
    invoke-static {}, Lcom/android/mms/MmsConfig;->getUaProfUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 1972
    const-string v15, "WorkingMessage.send MMS sending failure. mms_config.xml is missing uaProfUrl setting.  uaProfUrl is required for MMS service, but can be absent for SMS."

    .line 1975
    .local v15, err:Ljava/lang/String;
    new-instance v16, Ljava/lang/NullPointerException;

    move-object/from16 v0, v16

    invoke-direct {v0, v15}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 1976
    .local v16, ex:Ljava/lang/RuntimeException;
    const-string v2, "WorkingMessage"

    move-object/from16 v0, v16

    invoke-static {v2, v15, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1978
    throw v16

    .line 1984
    .end local v15           #err:Ljava/lang/String;
    .end local v16           #ex:Ljava/lang/RuntimeException;
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    .line 1985
    .local v7, mmsUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v8

    .line 1987
    .local v8, persister:Lcom/google/android/mms/pdu/PduPersister;
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 1988
    .local v6, slideshow:Lcom/android/mms/model/SlideshowModel;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 1990
    .local v5, subject:Ljava/lang/CharSequence;
    const-string v2, "Mms:transaction"

    const/4 v3, 0x2

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1991
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Send mmsUri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1995
    :cond_3
    new-instance v10, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/data/WorkingMessage$2;

    move-object/from16 v3, p0

    move/from16 v9, p2

    invoke-direct/range {v2 .. v9}, Lcom/android/mms/data/WorkingMessage$2;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/CharSequence;Lcom/android/mms/model/SlideshowModel;Landroid/net/Uri;Lcom/google/android/mms/pdu/PduPersister;I)V

    const-string v3, "WorkingMessage.send MMS"

    invoke-direct {v10, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 2023
    .end local v5           #subject:Ljava/lang/CharSequence;
    .end local v6           #slideshow:Lcom/android/mms/model/SlideshowModel;
    .end local v7           #mmsUri:Landroid/net/Uri;
    .end local v8           #persister:Lcom/google/android/mms/pdu/PduPersister;
    :goto_0
    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v2

    invoke-virtual {v4}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-static {v2, v3, v9}, Lcom/android/mms/data/RecipientIdCache;->updateNumbers(JLcom/android/mms/data/ContactList;)V

    .line 2028
    return-void

    .line 2011
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    .line 2012
    .local v12, msgText:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v9, Lcom/android/mms/data/WorkingMessage$3;

    move-object/from16 v10, p0

    move-object v11, v4

    move-object/from16 v13, p1

    move/from16 v14, p2

    invoke-direct/range {v9 .. v14}, Lcom/android/mms/data/WorkingMessage$3;-><init>(Lcom/android/mms/data/WorkingMessage;Lcom/android/mms/data/Conversation;Ljava/lang/String;Ljava/lang/String;I)V

    const-string v3, "WorkingMessage.send SMS"

    invoke-direct {v2, v9, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method public setAttachment(ILandroid/net/Uri;Z)I
    .locals 12
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"

    .prologue
    .line 844
    const-string v8, "WorkingMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAttachment type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " uri = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    const-string v8, "Mms:app"

    const/4 v9, 0x2

    invoke-static {v8, v9}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 846
    const-string v8, "setAttachment type=%d uri %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object p2, v9, v10

    invoke-static {v8, v9}, Lcom/android/mms/LogTag;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    :cond_0
    const/4 v6, 0x0

    .line 849
    .local v6, result:I
    new-instance v7, Lcom/android/mms/ui/SlideshowEditor;

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    iget-object v9, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-direct {v7, v8, v9}, Lcom/android/mms/ui/SlideshowEditor;-><init>(Landroid/content/Context;Lcom/android/mms/model/SlideshowModel;)V

    .line 859
    .local v7, slideShowEditor:Lcom/android/mms/ui/SlideshowEditor;
    if-nez p1, :cond_1

    iget v8, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    const/4 v9, 0x4

    if-ne v8, v9, :cond_1

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v8, :cond_1

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    .line 861
    invoke-virtual {v7}, Lcom/android/mms/ui/SlideshowEditor;->removeAllSlides()V

    .line 865
    :cond_1
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v8, :cond_2

    .line 866
    const/4 p3, 0x1

    .line 871
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->ensureSlideshow()V

    .line 872
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->setSlideshow(Lcom/android/mms/model/SlideshowModel;)V

    .line 878
    const/4 v8, 0x5

    if-lt p1, v8, :cond_4

    .line 879
    :try_start_0
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v8, :cond_3

    .line 880
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v8}, Lcom/android/mms/model/SlideshowModel;->createNew(Landroid/content/Context;)Lcom/android/mms/model/SlideshowModel;

    move-result-object v8

    iput-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    .line 882
    :cond_3
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->setOrAppendFileAttachment(ILandroid/net/Uri;Z)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/android/mms/RestrictedResolutionException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7

    .line 916
    :goto_0
    const-string v8, "WorkingMessage"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setAttachment result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 920
    if-nez v6, :cond_9

    .line 921
    iput p1, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 923
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v8, :cond_6

    .line 924
    const/4 v6, -0x1

    .line 1002
    .end local v6           #result:I
    :goto_1
    return v6

    .line 884
    .restart local v6       #result:I
    :cond_4
    if-eqz p3, :cond_5

    .line 885
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->appendMedia(ILandroid/net/Uri;)V
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lcom/android/mms/RestrictedResolutionException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_7

    goto :goto_0

    .line 891
    :catch_0
    move-exception v0

    .line 893
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v8, "WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    const/4 v6, -0x1

    .line 913
    goto :goto_0

    .line 887
    .end local v0           #e:Lcom/google/android/mms/MmsException;
    :cond_5
    :try_start_2
    invoke-direct {p0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->changeMedia(ILandroid/net/Uri;)V
    :try_end_2
    .catch Lcom/google/android/mms/MmsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lcom/android/mms/UnsupportContentTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/android/mms/ExceedMessageSizeException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lcom/android/mms/ResolutionException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/android/mms/ContentRestrictionException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Lcom/android/mms/RestrictedResolutionException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_7

    goto :goto_0

    .line 895
    :catch_1
    move-exception v0

    .line 897
    .local v0, e:Lcom/android/mms/UnsupportContentTypeException;
    const/4 v6, -0x3

    .line 913
    goto :goto_0

    .line 898
    .end local v0           #e:Lcom/android/mms/UnsupportContentTypeException;
    :catch_2
    move-exception v0

    .line 899
    .local v0, e:Lcom/android/mms/ExceedMessageSizeException;
    const/4 v6, -0x2

    .line 913
    goto :goto_0

    .line 900
    .end local v0           #e:Lcom/android/mms/ExceedMessageSizeException;
    :catch_3
    move-exception v0

    .line 901
    .local v0, e:Lcom/android/mms/ResolutionException;
    const/4 v6, -0x4

    .line 913
    goto :goto_0

    .line 903
    .end local v0           #e:Lcom/android/mms/ResolutionException;
    :catch_4
    move-exception v0

    .line 904
    .local v0, e:Lcom/android/mms/ContentRestrictionException;
    sget v6, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    .line 913
    goto :goto_0

    .line 905
    .end local v0           #e:Lcom/android/mms/ContentRestrictionException;
    :catch_5
    move-exception v0

    .line 906
    .local v0, e:Lcom/android/mms/RestrictedResolutionException;
    const/16 v6, -0xc

    .line 913
    goto :goto_0

    .line 907
    .end local v0           #e:Lcom/android/mms/RestrictedResolutionException;
    :catch_6
    move-exception v0

    .line 908
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v8, "WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const/4 v6, -0x1

    .line 913
    goto :goto_0

    .line 910
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_7
    move-exception v0

    .line 911
    .local v0, e:Ljava/lang/IllegalArgumentException;
    const-string v8, "WorkingMessage"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    const/4 v6, -0x1

    goto :goto_0

    .line 926
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_6
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_7

    .line 927
    const/4 v8, 0x4

    iput v8, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    .line 957
    :cond_7
    :goto_2
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/mms/data/WorkingMessage;->mIsUpdateAttachEditor:Z

    .line 959
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-eqz v8, :cond_8

    const/4 v8, 0x1

    if-ne p1, v8, :cond_8

    .line 962
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v4

    .line 963
    .local v4, numSlides:I
    if-lez v4, :cond_8

    .line 964
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    add-int/lit8 v9, v4, -0x1

    invoke-virtual {v8, v9}, Lcom/android/mms/model/SlideshowModel;->get(I)Lcom/android/mms/model/SlideModel;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/mms/model/SlideModel;->getImage()Lcom/android/mms/model/ImageModel;

    move-result-object v1

    .line 965
    .local v1, imgModel:Lcom/android/mms/model/ImageModel;
    if-eqz v1, :cond_8

    .line 966
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->cancelThumbnailLoading()V

    .line 967
    const/4 v8, 0x0

    invoke-virtual {v1, v8}, Lcom/android/mms/model/ImageModel;->loadThumbnailBitmap(Lcom/android/mms/util/ItemLoadedCallback;)Lcom/android/mms/util/ItemLoadedFuture;

    .line 971
    .end local v1           #imgModel:Lcom/android/mms/model/ImageModel;
    .end local v4           #numSlides:I
    :cond_8
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mStatusListener:Lcom/android/mms/data/WorkingMessage$MessageStatusListener;

    invoke-interface {v8}, Lcom/android/mms/data/WorkingMessage$MessageStatusListener;->onAttachmentChanged()V

    .line 974
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMultipartSmsEnabled()Z

    move-result v8

    if-nez v8, :cond_f

    .line 975
    if-nez p3, :cond_e

    iget v8, p0, Lcom/android/mms/data/WorkingMessage;->mAttachmentType:I

    if-nez v8, :cond_e

    if-nez p1, :cond_e

    .line 976
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    const/4 v9, 0x0

    invoke-static {v8, v9}, Landroid/telephony/SmsMessage;->calculateLength(Ljava/lang/CharSequence;Z)[I

    move-result-object v5

    .line 983
    .local v5, params:[I
    const/4 v8, 0x0

    aget v3, v5, v8

    .line 989
    .local v3, msgCount:I
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSmsToMmsTextThreshold()I

    move-result v8

    if-lt v3, v8, :cond_d

    .line 990
    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-virtual {p0, v8, v9}, Lcom/android/mms/data/WorkingMessage;->setLengthRequiresMms(ZZ)V

    .line 1001
    .end local v3           #msgCount:I
    .end local v5           #params:[I
    :goto_3
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->correctAttachmentState()V

    goto/16 :goto_1

    .line 930
    :cond_9
    if-eqz p3, :cond_7

    .line 935
    if-eqz v7, :cond_a

    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    if-nez v8, :cond_b

    .line 936
    :cond_a
    const/4 v6, -0x1

    goto/16 :goto_1

    .line 941
    :cond_b
    const/4 v8, 0x5

    invoke-static {v8}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;

    .line 943
    .local v2, mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    if-eqz v2, :cond_c

    invoke-interface {v2}, Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;->isSupportAttachmentEnhance()Z

    move-result v8

    if-eqz v8, :cond_c

    .line 947
    const/4 v8, 0x5

    if-ge p1, v8, :cond_7

    .line 948
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto :goto_2

    .line 952
    :cond_c
    iget-object v8, p0, Lcom/android/mms/data/WorkingMessage;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v8}, Lcom/android/mms/model/SlideshowModel;->size()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v7, v8}, Lcom/android/mms/ui/SlideshowEditor;->removeSlide(I)V

    goto/16 :goto_2

    .line 992
    .end local v2           #mMmsAttachmentEnhancePlugin:Lcom/mediatek/mms/ext/IMmsAttachmentEnhance;
    .restart local v3       #msgCount:I
    .restart local v5       #params:[I
    :cond_d
    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v9

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_3

    .line 995
    .end local v3           #msgCount:I
    .end local v5           #params:[I
    :cond_e
    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v9

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_3

    .line 999
    :cond_f
    const/4 v8, 0x4

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachment()Z

    move-result v9

    const/4 v10, 0x1

    invoke-direct {p0, v8, v9, v10}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_3
.end method

.method public setAttachment(ILandroid/net/Uri;ZLjava/lang/String;)I
    .locals 1
    .parameter "type"
    .parameter "dataUri"
    .parameter "append"
    .parameter "mimeType"

    .prologue
    .line 2692
    iput-object p4, p0, Lcom/android/mms/data/WorkingMessage;->mMimeType:Ljava/lang/String;

    .line 2693
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/mms/data/WorkingMessage;->setAttachment(ILandroid/net/Uri;Z)I

    move-result v0

    return v0
.end method

.method public setConversation(Lcom/android/mms/data/Conversation;)V
    .locals 4
    .parameter "conv"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1802
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    .line 1805
    if-eqz p1, :cond_0

    .line 1806
    invoke-virtual {p1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1807
    .local v0, contactList:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v3

    invoke-virtual {p0, v3, v2}, Lcom/android/mms/data/WorkingMessage;->setHasEmail(ZZ)V

    .line 1809
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_1

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1811
    .end local v0           #contactList:Lcom/android/mms/data/ContactList;
    :cond_0
    return-void

    .restart local v0       #contactList:Lcom/android/mms/data/ContactList;
    :cond_1
    move v1, v2

    .line 1809
    goto :goto_0
.end method

.method public setForceUpdateThreadId(Z)V
    .locals 0
    .parameter "update"

    .prologue
    .line 287
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mForceUpdateThreadId:Z

    .line 288
    return-void
.end method

.method public setHasEmail(ZZ)V
    .locals 4
    .parameter "hasEmail"
    .parameter "notify"

    .prologue
    const/4 v3, 0x1

    .line 1823
    const-string v0, "WorkingMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WorkingMessage.setHasEmail("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 1824
    invoke-static {}, Lcom/android/mms/MmsConfig;->getEmailGateway()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1825
    const/4 v0, 0x0

    invoke-direct {p0, v3, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1829
    :goto_0
    return-void

    .line 1827
    :cond_0
    invoke-direct {p0, v3, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_0
.end method

.method public setHasMmsDraft(Z)V
    .locals 0
    .parameter "hasMmsDraft"

    .prologue
    .line 2686
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mHasMmsDraft:Z

    .line 2687
    return-void
.end method

.method public setHasMultipleRecipients(ZZ)V
    .locals 2
    .parameter "hasMultipleRecipients"
    .parameter "notify"

    .prologue
    .line 1838
    const/16 v1, 0x20

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-direct {p0, v1, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1842
    return-void

    .line 1838
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setIsDeleteVcardFile(Z)V
    .locals 0
    .parameter "isDeleteVcardFile"

    .prologue
    .line 2663
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsDeleteVcardFile:Z

    .line 2664
    return-void
.end method

.method public setIsExceedSize(Z)V
    .locals 0
    .parameter "isExceedSize"

    .prologue
    .line 2979
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsExceedSize:Z

    .line 2980
    return-void
.end method

.method public setIsUpdateAttachEditor(Z)V
    .locals 0
    .parameter "update"

    .prologue
    .line 2993
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mIsUpdateAttachEditor:Z

    .line 2994
    return-void
.end method

.method public setLengthRequiresMms(ZZ)V
    .locals 1
    .parameter "mmsRequired"
    .parameter "notify"

    .prologue
    .line 1858
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1859
    return-void
.end method

.method public setNeedDeleteOldMmsDraft(Ljava/lang/Boolean;)V
    .locals 1
    .parameter "delete"

    .prologue
    .line 2612
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mNeedDeleteOldMmsDraft:Z

    .line 2613
    return-void
.end method

.method public setSubject(Ljava/lang/CharSequence;Z)V
    .locals 3
    .parameter "s"
    .parameter "notify"

    .prologue
    const/4 v2, 0x2

    .line 1324
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    .line 1325
    .local v0, flag:Z
    :goto_0
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    .line 1326
    if-eqz v0, :cond_1

    .line 1327
    invoke-direct {p0, v2, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    .line 1332
    :goto_1
    return-void

    .line 1324
    .end local v0           #flag:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1329
    .restart local v0       #flag:Z
    :cond_1
    invoke-direct {p0, v2, v0, p2}, Lcom/android/mms/data/WorkingMessage;->updateState(IZZ)V

    goto :goto_1
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    .line 722
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 723
    invoke-direct {p0}, Lcom/android/mms/data/WorkingMessage;->syncTextToSlideshow()V

    .line 726
    :cond_0
    iget v0, p0, Lcom/android/mms/data/WorkingMessage;->mMmsState:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasMediaAttachments()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasAttachedFiles()Z

    move-result v0

    if-nez v0, :cond_1

    .line 728
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {p0, v0}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftMmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 729
    iget-object v0, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 731
    :cond_1
    return-void
.end method

.method public setWorkingRecipients(Ljava/util/List;)V
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1757
    .local p1, numbers:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 1758
    const/4 v0, 0x0

    .line 1759
    .local v0, s:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 1760
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 1761
    .local v1, size:I
    packed-switch v1, :pswitch_data_0

    .line 1769
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{...} len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1773
    .end local v1           #size:I
    :cond_0
    :goto_0
    const-string v2, "WorkingMessage"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setWorkingRecipients: numbers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return-void

    .line 1763
    .restart local v1       #size:I
    :pswitch_0
    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #s:Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 1764
    .restart local v0       #s:Ljava/lang/String;
    goto :goto_0

    .line 1766
    :pswitch_1
    const-string v0, "empty"

    .line 1767
    goto :goto_0

    .line 1761
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setmResizeImage(Z)V
    .locals 0
    .parameter "resizeImage"

    .prologue
    .line 2602
    iput-boolean p1, p0, Lcom/android/mms/data/WorkingMessage;->mResizeImage:Z

    .line 2603
    return-void
.end method

.method public syncWorkingRecipients()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1464
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    if-eqz v3, :cond_1

    .line 1465
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    invoke-static {v3, v1}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/Iterable;Z)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1466
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3, v0}, Lcom/android/mms/data/Conversation;->setRecipients(Lcom/android/mms/data/ContactList;)V

    .line 1468
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v2, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1469
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/mms/data/WorkingMessage;->mWorkingRecipients:Ljava/util/List;

    .line 1471
    .end local v0           #recipients:Lcom/android/mms/data/ContactList;
    :cond_1
    return-void
.end method

.method public unDiscard()V
    .locals 1

    .prologue
    .line 1646
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/data/WorkingMessage;->mDiscarded:Z

    .line 1647
    return-void
.end method

.method public updateStateForGroupMmsChanged()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1474
    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v3}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 1475
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v1, :cond_0

    :goto_0
    invoke-virtual {p0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->setHasMultipleRecipients(ZZ)V

    .line 1476
    return-void

    :cond_0
    move v1, v2

    .line 1475
    goto :goto_0
.end method

.method public writeStateToBundle(Landroid/os/Bundle;)V
    .locals 5
    .parameter "bundle"

    .prologue
    .line 1663
    iput-object p1, p0, Lcom/android/mms/data/WorkingMessage;->mBundle:Landroid/os/Bundle;

    .line 1664
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasSubject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1665
    const-string v2, "subject"

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mSubject:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1668
    :cond_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-eqz v2, :cond_3

    .line 1669
    const-string v2, "msg_uri"

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1674
    :cond_1
    :goto_0
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mMessageUri:Landroid/net/Uri;

    if-nez v2, :cond_2

    .line 1675
    iget-object v2, p0, Lcom/android/mms/data/WorkingMessage;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1676
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1677
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "pref_msg_uri_key"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1678
    const-string v2, "pref_msg_threadid_key"

    const-wide/16 v3, -0x1

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1679
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1681
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #sp:Landroid/content/SharedPreferences;
    :cond_2
    return-void

    .line 1670
    :cond_3
    invoke-virtual {p0}, Lcom/android/mms/data/WorkingMessage;->hasText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1671
    const-string v2, "sms_body"

    iget-object v3, p0, Lcom/android/mms/data/WorkingMessage;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

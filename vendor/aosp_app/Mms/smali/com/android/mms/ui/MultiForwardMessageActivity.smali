.class public Lcom/android/mms/ui/MultiForwardMessageActivity;
.super Landroid/app/Activity;
.source "MultiForwardMessageActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;,
        Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;
    }
.end annotation


# static fields
.field private static final ALL_COUNT:Ljava/lang/String; = "AllCount"

.field private static final ERROR_DIALOG_MSG:Ljava/lang/String; = "ErrorDialogMsg"

.field private static final ERROR_DIALOG_TITLE:Ljava/lang/String; = "ErrorDialogTitle"

.field private static final EXIT_ECM_RESULT:Ljava/lang/String; = "exit_ecm_result"

.field private static final FAILED_COUNT:Ljava/lang/String; = "FailedCount"

.field private static final INCREASE_PROCESS:I = 0x1

.field private static final MMS:Ljava/lang/String; = "mms"

.field private static final MMS_PROJECTION:[Ljava/lang/String; = null

.field private static final MSG_SAVE_MESSAGE_TO_SIM_AFTER_SELECT_SIM:I = 0x68

.field public static final MULTI_FORWARD_ACTION:Ljava/lang/String; = "com.android.mms.ui.MultiForwardMessageActivity"

.field public static final MULTI_FORWARD_PARAM_MESSAGEIDS:Ljava/lang/String; = "MultiForwardMessageParamMessageIds"

.field public static final MULTI_FORWARD_PARAM_NUMBERS:Ljava/lang/String; = "MultiForwardMessageParamNumbers"

.field public static final MULTI_FORWARD_PARAM_THREADID:Ljava/lang/String; = "MultiForwardMessageParamThreadId"

.field private static final PROCESSING_FORWARD:Ljava/lang/String; = "forwardingMsg"

.field private static final REQUEST_CODE_ECM_EXIT_DIALOG:I = 0x6b

.field private static final SELECT_TYPE:Ljava/lang/String; = "Select_type"

.field private static final SENT_COUNT:Ljava/lang/String; = "SentCount"

.field private static final SHOW_ERROR:I = 0x3

.field private static final SHOW_RESULT:I = 0x2

.field private static final SIM_SELECT_FOR_SAVE_MSG_TO_SIM:I = 0x2

.field private static final SIM_SELECT_FOR_SEND_MSG:I = 0x1

.field private static final SMS:Ljava/lang/String; = "sms"

.field private static final SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final TAG:Ljava/lang/String; = "Mms/MultiForwardMessage"

.field private static mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;


# instance fields
.field private mAllCount:I

.field private mAssociatedSimId:I

.field private mFailedCount:I

.field private mForwardingMsg:Z

.field private mHandler:Landroid/os/Handler;

.field private mMessageSimId:J

.field private mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

.field private mMsgIds:Ljava/lang/String;

.field private mNumbers:Ljava/lang/String;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mProgressBarText:Landroid/widget/TextView;

.field private mSelectedSimId:I

.field private mSentCount:I

.field private mSimCount:I

.field private mSimInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;

.field private mUnDownloadedIpMessageCounter:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 175
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "body"

    aput-object v1, v0, v3

    const-string v1, "ipmsg_id"

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->SMS_PROJECTION:[Ljava/lang/String;

    .line 193
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v2

    const-string v1, "thread_id"

    aput-object v1, v0, v3

    const-string v1, "sub"

    aput-object v1, v0, v4

    const-string v1, "sub_cs"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "m_type"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "msg_box"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "d_rpt"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "rr"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "st"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->MMS_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 143
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    .line 144
    iput v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    .line 145
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMessageSimId:J

    .line 147
    iput-boolean v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z

    .line 148
    iput v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAllCount:I

    .line 149
    iput v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSentCount:I

    .line 150
    iput v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mFailedCount:I

    .line 151
    iput v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    .line 152
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mNumbers:Ljava/lang/String;

    .line 153
    const-string v0, ""

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMsgIds:Ljava/lang/String;

    .line 154
    new-instance v0, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    .line 155
    new-instance v0, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;

    invoke-direct {v0}, Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;

    .line 173
    iput v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mUnDownloadedIpMessageCounter:I

    .line 364
    new-instance v0, Lcom/android/mms/ui/MultiForwardMessageActivity$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultiForwardMessageActivity$2;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/mms/ui/MultiForwardMessageActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MultiForwardMessageActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->getSimInfoList()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MultiForwardMessageActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MultiForwardMessageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MultiForwardMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->forwardDirectly(Z)V

    return-void
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/MultiForwardMessageActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput p1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAllCount:I

    return p1
.end method

.method static synthetic access$1300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->MMS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MultiForwardMessageActivity;Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->getMessageItemFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/mms/ui/MessageItem;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1508(Lcom/android/mms/ui/MultiForwardMessageActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 123
    iget v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mUnDownloadedIpMessageCounter:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mUnDownloadedIpMessageCounter:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MultiForwardMessageActivity;Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->forwardMms(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->SMS_PROJECTION:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MultiForwardMessageActivity;)Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$SmsColumnsMap;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MultiForwardMessageActivity;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->isRecipientIpMessageUser([Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MultiForwardMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mNumbers:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/MultiForwardMessageActivity;Lcom/android/mms/data/WorkingMessage;JI)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMms(Lcom/android/mms/data/WorkingMessage;JI)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;[Ljava/lang/String;IJ)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 123
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MultiForwardMessageActivity;->forwardSms(Ljava/lang/String;[Ljava/lang/String;IJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MultiForwardMessageActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MultiForwardMessageActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MultiForwardMessageActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->checkEcmMode(Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MultiForwardMessageActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMsgIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->simSelection(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/MultiForwardMessageActivity;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/mms/ui/MultiForwardMessageActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->finishSelf(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    .locals 1

    .prologue
    .line 123
    sget-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MultiForwardMessageActivity;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 123
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V

    return-void
.end method

.method private checkEcmMode(Z)V
    .locals 7
    .parameter "bCheckEcmMode"

    .prologue
    .line 428
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z

    .line 429
    const/16 v1, 0x12e

    .line 430
    .local v1, requestType:I
    new-instance v3, Ljava/lang/Object;

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 433
    .local v3, waitObject:Ljava/lang/Object;
    const/16 v1, 0x132

    .line 434
    iget v4, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    int-to-long v4, v4

    invoke-static {p0, v4, v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 435
    .local v2, slotId:I
    const-string v4, "Mms/Txn"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check pin and...: simId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\t slotId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    move v0, p1

    .line 441
    .local v0, bCEM:Z
    sget-object v4, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    new-instance v5, Lcom/android/mms/ui/MultiForwardMessageActivity$3;

    invoke-direct {v5, p0, v2, v0}, Lcom/android/mms/ui/MultiForwardMessageActivity$3;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;IZ)V

    invoke-virtual {v4, v2, v1, v5}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I

    .line 466
    return-void
.end method

.method private checkSimInfoAndSendAsync()V
    .locals 4

    .prologue
    .line 350
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0xa3

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    .line 352
    .local v1, stepOne:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x9e

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, stepForward:Ljava/lang/String;
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/MultiForwardMessageActivity$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/MultiForwardMessageActivity$1;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 362
    return-void
.end method

.method private doForward(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "numbers"
    .parameter "ids"

    .prologue
    const/16 v9, 0xa9

    const/16 v8, 0xa8

    const/4 v7, 0x1

    const/16 v6, 0xa7

    const/4 v5, 0x3

    .line 564
    const-string v3, "Mms/MultiForwardMessage"

    const-string v4, "doForward begin"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 566
    :cond_0
    const-string v3, "Mms/MultiForwardMessage"

    const-string v4, "multiForard failed for empty numbers"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    invoke-direct {p0, v5, v6, v8}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V

    .line 740
    :goto_0
    return-void

    .line 571
    :cond_1
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 572
    :cond_2
    const-string v3, "Mms/MultiForwardMessage"

    const-string v4, "multiForard failed for empty message ids"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    invoke-direct {p0, v5, v6, v9}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V

    goto :goto_0

    .line 577
    :cond_3
    const-string v3, ","

    const-string v4, ";"

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 578
    const-string v3, ";"

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 579
    .local v2, numbersArray:[Ljava/lang/String;
    if-eqz v2, :cond_4

    array-length v3, v2

    if-ge v3, v7, :cond_5

    .line 580
    :cond_4
    const-string v3, "Mms/MultiForwardMessage"

    const-string v4, "multiForard failed for empty numbers"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    invoke-direct {p0, v5, v6, v8}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V

    goto :goto_0

    .line 585
    :cond_5
    const-string v3, ";"

    const-string v4, ","

    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 586
    const-string v3, ","

    invoke-virtual {p2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 587
    .local v1, messageIdsArray:[Ljava/lang/String;
    if-eqz v1, :cond_6

    array-length v3, v1

    if-ge v3, v7, :cond_7

    .line 588
    :cond_6
    const-string v3, "Mms/MultiForwardMessage"

    const-string v4, "multiForard failed for empty message ids"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 589
    invoke-direct {p0, v5, v6, v9}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V

    goto :goto_0

    .line 593
    :cond_7
    const-string v3, "Mms/MultiForwardMessage"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Forward Begin; simId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msgIds:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    move-object v0, p1

    .line 595
    .local v0, finalNumbers:Ljava/lang/String;
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/MultiForwardMessageActivity$4;

    invoke-direct {v4, p0, v0, v1, v2}, Lcom/android/mms/ui/MultiForwardMessageActivity$4;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    const-string v5, "ForwardThread"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_0
.end method

.method private finishSelf(I)V
    .locals 2
    .parameter "resultOK"

    .prologue
    .line 335
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 336
    iget v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mUnDownloadedIpMessageCounter:I

    if-lez v0, :cond_0

    .line 337
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    const/16 v1, 0xef

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 343
    return-void
.end method

.method private forwardDirectly(Z)V
    .locals 5
    .parameter "checkECM"

    .prologue
    .line 401
    if-eqz p1, :cond_1

    .line 403
    const-string v2, "ril.cdma.inecmmode"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 404
    .local v1, inEcm:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 406
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/16 v3, 0x6b

    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 421
    .end local v1           #inEcm:Ljava/lang/String;
    :goto_0
    return-void

    .line 409
    .restart local v1       #inEcm:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v2, "Mms/MultiForwardMessage"

    const-string v3, "Cannot find EmergencyCallbackModeExitDialog"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 412
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->finishSelf(I)V

    goto :goto_0

    .line 416
    .end local v0           #e:Landroid/content/ActivityNotFoundException;
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mNumbers:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMsgIds:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->doForward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 419
    .end local v1           #inEcm:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mNumbers:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMsgIds:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/MultiForwardMessageActivity;->doForward(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private forwardMms(Lcom/android/mms/ui/MessageItem;[Ljava/lang/String;IJ)Z
    .locals 13
    .parameter "msgItem"
    .parameter "dests"
    .parameter "simId"
    .parameter "threadId"

    .prologue
    .line 857
    new-instance v3, Lcom/google/android/mms/pdu/SendReq;

    invoke-direct {v3}, Lcom/google/android/mms/pdu/SendReq;-><init>()V

    .line 858
    .local v3, sendReq:Lcom/google/android/mms/pdu/SendReq;
    const v4, 0x7f0b0272

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 859
    .local v11, subject:Ljava/lang/String;
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/mms/ui/MessageItem;->mSubject:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 862
    :cond_0
    new-instance v4, Lcom/google/android/mms/pdu/EncodedStringValue;

    invoke-direct {v4, v11}, Lcom/google/android/mms/pdu/EncodedStringValue;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setSubject(Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 863
    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->makeCopy()Lcom/google/android/mms/pdu/PduBody;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/android/mms/pdu/MultimediaMessagePdu;->setBody(Lcom/google/android/mms/pdu/PduBody;)V

    .line 864
    invoke-static {p2}, Lcom/google/android/mms/pdu/EncodedStringValue;->encodeStrings([Ljava/lang/String;)[Lcom/google/android/mms/pdu/EncodedStringValue;

    move-result-object v9

    .line 865
    .local v9, encodedNumbers:[Lcom/google/android/mms/pdu/EncodedStringValue;
    if-eqz v9, :cond_1

    .line 866
    invoke-virtual {v3, v9}, Lcom/google/android/mms/pdu/SendReq;->setTo([Lcom/google/android/mms/pdu/EncodedStringValue;)V

    .line 868
    :cond_1
    const/4 v12, 0x0

    .line 870
    .local v12, uri:Landroid/net/Uri;
    :try_start_0
    invoke-static {p0}, Lcom/google/android/mms/pdu/PduPersister;->getPduPersister(Landroid/content/Context;)Lcom/google/android/mms/pdu/PduPersister;

    move-result-object v2

    .line 872
    .local v2, persister:Lcom/google/android/mms/pdu/PduPersister;
    sget-object v4, Landroid/provider/Telephony$Mms$Outbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Lcom/google/android/mms/pdu/PduPersister;->persist(Lcom/google/android/mms/pdu/GenericPdu;Landroid/net/Uri;ZZLjava/util/HashMap;)Landroid/net/Uri;
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    .line 877
    new-instance v10, Lcom/android/mms/transaction/MmsMessageSender;

    iget-object v4, p1, Lcom/android/mms/ui/MessageItem;->mSlideshow:Lcom/android/mms/model/SlideshowModel;

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v10, p0, v12, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 881
    .local v10, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_1
    move/from16 v0, p3

    invoke-interface {v10, v0}, Lcom/android/mms/transaction/MessageSender;->setSimId(I)V

    .line 882
    move-wide/from16 v0, p4

    invoke-interface {v10, v0, v1}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_1
    .catch Lcom/google/android/mms/MmsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 890
    const/4 v4, 0x1

    .end local v2           #persister:Lcom/google/android/mms/pdu/PduPersister;
    .end local v10           #sender:Lcom/android/mms/transaction/MessageSender;
    :goto_0
    return v4

    .line 873
    :catch_0
    move-exception v8

    .line 874
    .local v8, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/MultiForwardMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forwardMms Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 875
    const/4 v4, 0x0

    goto :goto_0

    .line 886
    .end local v8           #e:Lcom/google/android/mms/MmsException;
    .restart local v2       #persister:Lcom/google/android/mms/pdu/PduPersister;
    .restart local v10       #sender:Lcom/android/mms/transaction/MessageSender;
    :catch_1
    move-exception v8

    .line 887
    .restart local v8       #e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/MultiForwardMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forwardMms Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/mms/ui/MessageItem;->mMessageUri:Landroid/net/Uri;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v8}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 888
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private forwardSms(Ljava/lang/String;[Ljava/lang/String;IJ)Z
    .locals 7
    .parameter "smsBody"
    .parameter "dests"
    .parameter "simId"
    .parameter "threadId"

    .prologue
    .line 936
    new-instance v0, Lcom/android/mms/transaction/SmsMessageSender;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/transaction/SmsMessageSender;-><init>(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;J)V

    .line 938
    .local v0, smsMessageSender:Lcom/android/mms/transaction/SmsMessageSender;
    invoke-virtual {v0, p3}, Lcom/android/mms/transaction/SmsMessageSender;->setSimId(I)V

    .line 944
    :try_start_0
    invoke-virtual {v0, p4, p5}, Lcom/android/mms/transaction/SmsMessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 949
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 945
    :catch_0
    move-exception v6

    .line 946
    .local v6, e:Ljava/lang/Exception;
    const-string v1, "Mms/MultiForwardMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send SMS message, threadId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 947
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMessageItemFromCursor(Landroid/content/Context;Landroid/database/Cursor;Ljava/lang/String;)Lcom/android/mms/ui/MessageItem;
    .locals 27
    .parameter "context"
    .parameter "c"
    .parameter "type"

    .prologue
    .line 811
    if-eqz p2, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->isCursorValid(Landroid/database/Cursor;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 812
    const/16 v18, 0x0

    .line 813
    .local v18, isDrawTimeDivider:Z
    const/16 v19, 0x0

    .line 814
    .local v19, isDrawUnreadDivider:Z
    const/16 v21, 0x0

    .line 815
    .local v21, isDrawLoadAllMessagesButton:Z
    const/16 v20, 0x0

    .line 816
    .local v20, unreadCount:I
    const-string v3, "mms"

    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsMessageBox:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 818
    .local v4, boxId:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsMessageType:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 819
    .local v5, messageType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsSimId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 821
    .local v6, simId:I
    const/4 v7, 0x0

    .line 822
    .local v7, errorType:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsLocked:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 823
    .local v8, locked:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsSubjectCharset:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 824
    .local v9, charset:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMsgId:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 825
    .local v10, mMsgId:J
    move-object/from16 v12, p3

    .line 826
    .local v12, mmsType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsSubject:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 827
    .local v13, subject:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsServiceCenter:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 828
    .local v14, serviceCenter:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsDeliveryReport:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 829
    .local v15, deliveryReport:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsReadReport:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 831
    .local v16, readReport:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsStatus:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v24

    .line 832
    .local v24, mmsStatus:I
    const/16 v17, 0x0

    .line 833
    .local v17, highlight:Ljava/util/regex/Pattern;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMmsColumnsMap:Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;

    iget v3, v3, Lcom/android/mms/ui/MultiForwardMessageActivity$MmsColumnsMap;->mColumnMmsDate:I

    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v22

    .line 835
    .local v22, indDate:J
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/MessageItem;

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v24}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;IIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ZZIZJI)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 845
    .end local v4           #boxId:I
    .end local v5           #messageType:I
    .end local v6           #simId:I
    .end local v7           #errorType:I
    .end local v8           #locked:I
    .end local v9           #charset:I
    .end local v10           #mMsgId:J
    .end local v12           #mmsType:Ljava/lang/String;
    .end local v13           #subject:Ljava/lang/String;
    .end local v14           #serviceCenter:Ljava/lang/String;
    .end local v15           #deliveryReport:Ljava/lang/String;
    .end local v16           #readReport:Ljava/lang/String;
    .end local v17           #highlight:Ljava/util/regex/Pattern;
    .end local v18           #isDrawTimeDivider:Z
    .end local v19           #isDrawUnreadDivider:Z
    .end local v20           #unreadCount:I
    .end local v21           #isDrawLoadAllMessagesButton:Z
    .end local v22           #indDate:J
    .end local v24           #mmsStatus:I
    :goto_0
    return-object v2

    .line 840
    .restart local v4       #boxId:I
    .restart local v5       #messageType:I
    .restart local v6       #simId:I
    .restart local v7       #errorType:I
    .restart local v8       #locked:I
    .restart local v9       #charset:I
    .restart local v10       #mMsgId:J
    .restart local v12       #mmsType:Ljava/lang/String;
    .restart local v13       #subject:Ljava/lang/String;
    .restart local v14       #serviceCenter:Ljava/lang/String;
    .restart local v15       #deliveryReport:Ljava/lang/String;
    .restart local v16       #readReport:Ljava/lang/String;
    .restart local v17       #highlight:Ljava/util/regex/Pattern;
    .restart local v18       #isDrawTimeDivider:Z
    .restart local v19       #isDrawUnreadDivider:Z
    .restart local v20       #unreadCount:I
    .restart local v21       #isDrawLoadAllMessagesButton:Z
    .restart local v22       #indDate:J
    .restart local v24       #mmsStatus:I
    :catch_0
    move-exception v25

    .line 841
    .local v25, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MultiForwardMessage"

    const-string v26, "getMessageItemFromCursor failed: "

    move-object/from16 v0, v26

    move-object/from16 v1, v25

    invoke-static {v3, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 845
    .end local v4           #boxId:I
    .end local v5           #messageType:I
    .end local v6           #simId:I
    .end local v7           #errorType:I
    .end local v8           #locked:I
    .end local v9           #charset:I
    .end local v10           #mMsgId:J
    .end local v12           #mmsType:Ljava/lang/String;
    .end local v13           #subject:Ljava/lang/String;
    .end local v14           #serviceCenter:Ljava/lang/String;
    .end local v15           #deliveryReport:Ljava/lang/String;
    .end local v16           #readReport:Ljava/lang/String;
    .end local v17           #highlight:Ljava/util/regex/Pattern;
    .end local v18           #isDrawTimeDivider:Z
    .end local v19           #isDrawUnreadDivider:Z
    .end local v20           #unreadCount:I
    .end local v21           #isDrawLoadAllMessagesButton:Z
    .end local v22           #indDate:J
    .end local v24           #mmsStatus:I
    .end local v25           #e:Lcom/google/android/mms/MmsException;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private getSimInfoList()V
    .locals 3

    .prologue
    .line 953
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    .line 954
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimCount:I

    .line 955
    const-string v0, "Mms/MultiForwardMessage"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MultiforwardMessage: getSimInfoList; mSimCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    return-void

    .line 954
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method private initProgressDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 270
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v1, :cond_0

    .line 271
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x9e

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v0

    .line 273
    .local v0, stepForward:Ljava/lang/String;
    const v1, 0x7f0f014e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ProgressBar;

    iput-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 274
    const v1, 0x7f0f014f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBarText:Landroid/widget/TextView;

    .line 275
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 276
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBarText:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 277
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBarText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 278
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v2, 0x64

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 279
    iget-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 281
    .end local v0           #stepForward:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private isCursorValid(Landroid/database/Cursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 850
    invoke-interface {p1}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isBeforeFirst()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 851
    :cond_0
    const/4 v0, 0x0

    .line 853
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isRecipientIpMessageUser([Ljava/lang/String;)Z
    .locals 7
    .parameter "numbers"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 959
    if-eqz p1, :cond_0

    array-length v6, p1

    if-ge v6, v5, :cond_1

    .line 967
    :cond_0
    :goto_0
    return v4

    .line 962
    :cond_1
    move-object v0, p1

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 963
    .local v3, number:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/mediatek/mms/ipmessage/ContactManager;->isIpMessageNumber(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 962
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v3           #number:Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 967
    goto :goto_0
.end method

.method private sendMms(Lcom/android/mms/data/WorkingMessage;JI)Z
    .locals 7
    .parameter "workingMessage"
    .parameter "threadId"
    .parameter "simId"

    .prologue
    const/4 v3, 0x0

    .line 899
    if-nez p1, :cond_1

    .line 920
    :cond_0
    :goto_0
    return v3

    .line 902
    :cond_1
    invoke-virtual {p1, v3}, Lcom/android/mms/data/WorkingMessage;->saveAsMms(Z)Landroid/net/Uri;

    .line 903
    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getMessageUri()Landroid/net/Uri;

    move-result-object v2

    .line 904
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    .line 907
    new-instance v1, Lcom/android/mms/transaction/MmsMessageSender;

    invoke-virtual {p1}, Lcom/android/mms/data/WorkingMessage;->getSlideshow()Lcom/android/mms/model/SlideshowModel;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/mms/model/SlideshowModel;->getCurrentSlideshowSize()I

    move-result v4

    int-to-long v4, v4

    invoke-direct {v1, p0, v2, v4, v5}, Lcom/android/mms/transaction/MmsMessageSender;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 911
    .local v1, sender:Lcom/android/mms/transaction/MessageSender;
    :try_start_0
    invoke-interface {v1, p4}, Lcom/android/mms/transaction/MessageSender;->setSimId(I)V

    .line 912
    invoke-interface {v1, p2, p3}, Lcom/android/mms/transaction/MessageSender;->sendMessage(J)Z
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 920
    const/4 v3, 0x1

    goto :goto_0

    .line 916
    :catch_0
    move-exception v0

    .line 917
    .local v0, e:Lcom/google/android/mms/MmsException;
    const-string v4, "Mms/MultiForwardMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "forwardMms Failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private sendMsgToHandler(III)V
    .locals 5
    .parameter "target"
    .parameter "title"
    .parameter "message"

    .prologue
    .line 389
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 390
    .local v2, msg:Landroid/os/Message;
    iput p1, v2, Landroid/os/Message;->what:I

    .line 391
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, titleStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v4

    invoke-virtual {v4, p3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, messageStr:Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 394
    .local v0, data:Landroid/os/Bundle;
    const-string v4, "ErrorDialogTitle"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string v4, "ErrorDialogMsg"

    invoke-virtual {v0, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    invoke-virtual {v2, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 397
    iget-object v4, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 398
    return-void
.end method

.method private showErrorDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "title"
    .parameter "message"

    .prologue
    .line 783
    new-instance v1, Landroid/app/AlertDialog$Builder;

    new-instance v2, Landroid/view/ContextThemeWrapper;

    const v3, 0x7f0d0004

    invoke-direct {v2, p0, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 784
    .local v1, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0295

    new-instance v4, Lcom/android/mms/ui/MultiForwardMessageActivity$7;

    invoke-direct {v4, p0}, Lcom/android/mms/ui/MultiForwardMessageActivity$7;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 791
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 792
    .local v0, alDialog:Landroid/app/AlertDialog;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 793
    new-instance v2, Lcom/android/mms/ui/MultiForwardMessageActivity$8;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MultiForwardMessageActivity$8;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V

    invoke-virtual {v0, v2}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 807
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 808
    return-void
.end method

.method private showResultDialog(III)V
    .locals 10
    .parameter "allCount"
    .parameter "failedCount"
    .parameter "successCount"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 743
    const-string v5, "Mms/MultiForwardMessage"

    const-string v6, "showResultDialog begin"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 744
    new-instance v2, Landroid/app/AlertDialog$Builder;

    new-instance v5, Landroid/view/ContextThemeWrapper;

    const v6, 0x7f0d0004

    invoke-direct {v5, p0, v6}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v2, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 746
    .local v2, builder:Landroid/app/AlertDialog$Builder;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0xa0

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 748
    .local v1, allStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0xa1

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 750
    .local v4, sentStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0xa2

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 752
    .local v3, failedStr:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x9f

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x7f0b0295

    new-instance v7, Lcom/android/mms/ui/MultiForwardMessageActivity$5;

    invoke-direct {v7, p0}, Lcom/android/mms/ui/MultiForwardMessageActivity$5;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 762
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 763
    .local v0, alDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 764
    new-instance v5, Lcom/android/mms/ui/MultiForwardMessageActivity$6;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/MultiForwardMessageActivity$6;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;)V

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 778
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 779
    const-string v5, "Mms/MultiForwardMessage"

    const-string v6, "showResultDialog end"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 780
    return-void
.end method

.method private showSimSelectedDialog(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V
    .locals 13
    .parameter "intent"
    .parameter "numbers"
    .parameter "ids"

    .prologue
    .line 971
    const-string v9, "Mms/MultiForwardMessage"

    const-string v10, "showSimSelectedDialog begin"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 972
    move-object v5, p1

    .line 973
    .local v5, it:Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 974
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v9, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimCount:I

    if-ge v4, v9, :cond_7

    .line 975
    iget-object v9, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v9, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 976
    .local v6, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 978
    .local v3, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v9, "simIcon"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundRes()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 979
    iget-object v9, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-static {}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getDefault()Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    move-result-object v10

    invoke-static {v4, v9, v10}, Lcom/android/mms/ui/MessageUtils;->getSimStatus(ILjava/util/List;Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;)I

    move-result v8

    .line 980
    .local v8, state:I
    const-string v9, "simStatus"

    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->getSimStatusResource(I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 981
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v9

    long-to-int v9, v9

    invoke-static {p0, v9}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 982
    const-string v9, "Mms/MultiForwardMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "show ipmessage icon, simId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 983
    const-string v9, "ipmsg_indicator"

    const/16 v10, 0x232a

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 988
    :goto_1
    const-string v7, ""

    .line 989
    .local v7, simNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 990
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDispalyNumberFormat()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 1012
    :cond_0
    :goto_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1013
    const-string v9, "simNumberShort"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1018
    :goto_3
    const-string v9, "simName"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1019
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1020
    const-string v9, "simNumber"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1024
    :goto_4
    iget v9, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v10

    long-to-int v10, v10

    if-ne v9, v10, :cond_6

    const-string v9, "Select_type"

    const/4 v10, -0x1

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_6

    .line 1027
    const-string v9, "suggested"

    const v10, 0x7f0b0086

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1032
    :goto_5
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 974
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 985
    .end local v7           #simNumber:Ljava/lang/String;
    :cond_1
    const-string v9, "Mms/MultiForwardMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hide ipmessage icon, simId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v11

    invoke-virtual {v10, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string v9, "ipmsg_indicator"

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 992
    .restart local v7       #simNumber:Ljava/lang/String;
    :pswitch_0
    const-string v7, ""

    .line 993
    goto :goto_2

    .line 995
    :pswitch_1
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_2

    .line 996
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 998
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x4

    invoke-virtual {v9, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 1000
    goto/16 :goto_2

    .line 1002
    :pswitch_2
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x4

    if-gt v9, v10, :cond_3

    .line 1003
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_2

    .line 1005
    :cond_3
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x4

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 1007
    goto/16 :goto_2

    .line 1015
    :cond_4
    const-string v9, "simNumberShort"

    invoke-virtual {v3, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3

    .line 1022
    :cond_5
    const-string v9, "simNumber"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 1030
    :cond_6
    const-string v9, "suggested"

    const-string v10, ""

    invoke-virtual {v3, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 1035
    .end local v3           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v7           #simNumber:Ljava/lang/String;
    .end local v8           #state:I
    :cond_7
    invoke-static {v2, p0}, Lcom/android/mms/ui/MessageUtils;->createSimpleAdapter(Ljava/util/List;Landroid/content/Context;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    .line 1036
    .local v0, a:Landroid/widget/SimpleAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1037
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v9, 0x7f0b0085

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1038
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1039
    new-instance v9, Lcom/android/mms/ui/MultiForwardMessageActivity$9;

    invoke-direct {v9, p0, v5}, Lcom/android/mms/ui/MultiForwardMessageActivity$9;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v9}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1055
    new-instance v9, Lcom/android/mms/ui/MultiForwardMessageActivity$10;

    invoke-direct {v9, p0, v1}, Lcom/android/mms/ui/MultiForwardMessageActivity$10;-><init>(Lcom/android/mms/ui/MultiForwardMessageActivity;Landroid/app/AlertDialog$Builder;)V

    invoke-virtual {p0, v9}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1078
    const-string v9, "Mms/MultiForwardMessage"

    const-string v10, "showSimSelectedDialog end"

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    return-void

    .line 990
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private simSelection(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "numbers"
    .parameter "ids"

    .prologue
    const/16 v10, 0xa7

    const/4 v8, 0x3

    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 488
    const-string v5, "Mms/MultiForwardMessage"

    const-string v6, "simSelection begin"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v2, 0x0

    .line 490
    .local v2, simId:I
    const-string v5, "Mms/MultiForwardMessage"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "simSelection begin. mSelectedSimId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v5, v4, :cond_1

    .line 492
    :cond_0
    const/16 v4, 0xa4

    invoke-direct {p0, v8, v10, v4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V

    .line 555
    :goto_0
    return v3

    .line 495
    :cond_1
    iget-object v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ne v5, v4, :cond_2

    .line 496
    iget-object v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v5

    long-to-int v3, v5

    iput v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    .line 497
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->checkEcmMode(Z)V

    move v3, v4

    .line 498
    goto :goto_0

    .line 504
    :cond_2
    iget v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    if-lt v5, v4, :cond_3

    .line 505
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->checkEcmMode(Z)V

    move v3, v4

    .line 506
    goto :goto_0

    .line 508
    :cond_3
    iget-object v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSimInfoList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v4, :cond_a

    .line 509
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 510
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "Select_type"

    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiForwardMessageActivity;->splitNumbers(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 513
    .local v1, numberArray:[Ljava/lang/String;
    array-length v5, v1

    if-ne v5, v4, :cond_4

    .line 514
    aget-object v3, v1, v3

    invoke-static {p0, v3}, Lcom/android/mms/ui/MultiForwardUtils;->getContactSIM(Landroid/content/Context;Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    .line 519
    :goto_1
    const-string v3, "Mms/MultiForwardMessage"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mAssociatedSimId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "sms_sim_setting"

    const-wide/16 v6, -0x5

    invoke-static {v3, v5, v6, v7}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMessageSimId:J

    .line 523
    iget-wide v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMessageSimId:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-nez v3, :cond_5

    .line 525
    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->showSimSelectedDialog(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    :goto_2
    const-string v3, "Mms/MultiForwardMessage"

    const-string v5, "simSelection end"

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v3, v4

    .line 555
    goto/16 :goto_0

    .line 517
    :cond_4
    iput v9, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    goto :goto_1

    .line 526
    :cond_5
    iget-wide v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMessageSimId:J

    const-wide/16 v7, -0x5

    cmp-long v3, v5, v7

    if-nez v3, :cond_7

    .line 531
    iget v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    if-ne v3, v9, :cond_6

    .line 532
    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->showSimSelectedDialog(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 534
    :cond_6
    iget v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    iput v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    .line 535
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->checkEcmMode(Z)V

    goto :goto_2

    .line 542
    :cond_7
    iget v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    if-eq v3, v9, :cond_8

    iget-wide v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMessageSimId:J

    iget v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mAssociatedSimId:I

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-nez v3, :cond_9

    .line 543
    :cond_8
    iget-wide v5, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMessageSimId:J

    long-to-int v3, v5

    iput v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mSelectedSimId:I

    .line 544
    invoke-direct {p0, v4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->checkEcmMode(Z)V

    goto :goto_2

    .line 546
    :cond_9
    invoke-direct {p0, v0, p1, p2}, Lcom/android/mms/ui/MultiForwardMessageActivity;->showSimSelectedDialog(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 550
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #numberArray:[Ljava/lang/String;
    :cond_a
    const/16 v4, 0xa5

    invoke-direct {p0, v8, v10, v4}, Lcom/android/mms/ui/MultiForwardMessageActivity;->sendMsgToHandler(III)V

    goto/16 :goto_0
.end method

.method private splitNumbers(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "numbers"

    .prologue
    .line 474
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    :cond_0
    const/4 v0, 0x0

    .line 478
    :goto_0
    return-object v0

    .line 477
    :cond_1
    const-string v0, ","

    const-string v1, ";"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 478
    const-string v0, ";"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 329
    const/16 v0, 0x6b

    if-ne p1, v0, :cond_0

    .line 330
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->finishSelf(I)V

    .line 332
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 251
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 252
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 253
    const v0, 0x7f04004a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 255
    invoke-direct {p0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->initProgressDialog()V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    const-string v0, "forwardingMsg"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z

    .line 260
    :cond_0
    sget-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v0, :cond_1

    .line 261
    new-instance v0, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-direct {v0}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;-><init>()V

    sput-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 263
    :cond_1
    sget-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->register(Landroid/content/Context;)V

    .line 264
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-eqz v0, :cond_0

    .line 314
    sget-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-virtual {v0}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->unregister()V

    .line 315
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 317
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 318
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 284
    sparse-switch p1, :sswitch_data_0

    .line 291
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 287
    :sswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 284
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_0
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 308
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 309
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 295
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 296
    iget-boolean v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z

    if-nez v1, :cond_0

    .line 297
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 299
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "MultiForwardMessageParamMessageIds"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMsgIds:Ljava/lang/String;

    .line 300
    const-string v1, "MultiForwardMessageParamNumbers"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mNumbers:Ljava/lang/String;

    .line 301
    const-string v1, "Mms/MultiForwardMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MessageIds:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mMsgIds:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Numbers:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mNumbers:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    invoke-direct {p0}, Lcom/android/mms/ui/MultiForwardMessageActivity;->checkSimInfoAndSendAsync()V

    .line 304
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 322
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiForwardMessageActivity;->mForwardingMsg:Z

    if-eqz v0, :cond_0

    .line 323
    const-string v0, "forwardingMsg"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 325
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 267
    const/4 v0, 0x1

    return v0
.end method

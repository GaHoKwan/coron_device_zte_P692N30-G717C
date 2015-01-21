.class public Lcom/android/mms/ui/FolderModeSmsViewer;
.super Landroid/app/Activity;
.source "FolderModeSmsViewer.java"

# interfaces
.implements Lcom/android/mms/data/Contact$UpdateListener;
.implements Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgHandler;,
        Lcom/android/mms/ui/FolderModeSmsViewer$SaveMsgThread;,
        Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;
    }
.end annotation


# static fields
.field private static final CB_PROJECTION:[Ljava/lang/String; = null

.field private static final CB_URI:Landroid/net/Uri; = null

.field private static final MENU_ADD_ADDRESS_TO_CONTACTS:I = 0x1b

.field private static final MENU_ADD_CONTACT:I = 0x5

.field private static final MENU_ADD_TO_BOOKMARK:I = 0x23

.field private static final MENU_CALL_BACK:I = 0x16

.field private static final MENU_CALL_RECIPIENT:I = 0x7

.field private static final MENU_CALL_RECIPIENT_BY_VT:I = 0x8

.field private static final MENU_COPY_MESSAGE_TEXT:I = 0x18

.field private static final MENU_DELETE:I = 0x4

.field private static final MENU_DELETE_MESSAGE:I = 0x12

.field private static final MENU_FORWORD:I = 0x2

.field private static final MENU_LOCK:I = 0x9

.field private static final MENU_LOCK_MESSAGE:I = 0x1c

.field private static final MENU_REPLY:I = 0x1

.field private static final MENU_RESEND:I = 0x3

.field private static final MENU_SAVE_MESSAGE_TO_SIM:I = 0x1f

.field private static final MENU_SELECT_TEXT:I = 0x22

.field private static final MENU_SEND_EMAIL:I = 0x17

.field private static final MENU_SEND_SMS:I = 0x21

.field private static final MENU_UNLOCK:I = 0xa

.field private static final MENU_UNLOCK_MESSAGE:I = 0x1d

.field private static final MENU_VIEW_MESSAGE_DETAILS:I = 0x11

.field private static final MENU_VIEW_REPORT:I = 0x6

.field private static final MSG_QUIT_SAVE_MESSAGE_THREAD:I = 0x64

.field private static final MSG_SAVE_MESSAGE_TO_SIM:I = 0x66

.field private static final MSG_SAVE_MESSAGE_TO_SIM_AFTER_SELECT_SIM:I = 0x68

.field private static final MSG_SAVE_MESSAGE_TO_SIM_FAILED_GENERIC:I = 0x6c

.field private static final MSG_SAVE_MESSAGE_TO_SIM_FAILED_SIM_FULL:I = 0x6e

.field private static final MSG_SAVE_MESSAGE_TO_SIM_SUCCEED:I = 0x6a

.field private static final SELECT_TYPE:Ljava/lang/String; = "Select_type"

.field private static final SIM_SELECT_FOR_SAVE_MSG_TO_SIM:I = 0x2

.field private static final SIM_SELECT_FOR_SEND_MSG:I = 0x1

.field private static final SMS_PROJECTION:[Ljava/lang/String; = null

.field private static final SMS_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "Mms/FolderModeSmsViewer"

.field private static final WAPPUSH_PROJECTION:[Ljava/lang/String;

.field private static final WAPPUSH_URI:Landroid/net/Uri;

.field private static mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;


# instance fields
.field private date:Landroid/widget/TextView;

.field private isDlgShow:Z

.field private mByCard:Landroid/widget/TextView;

.field private mClickListener:Landroid/view/View$OnClickListener;

.field private mContactList:Lcom/android/mms/data/ContactList;

.field private mContactNumber:Ljava/lang/String;

.field private final mContextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

.field mGetSimInfoRunnable:Ljava/lang/Runnable;

.field private mHighlight:Ljava/util/regex/Pattern;

.field private mHomeBox:I

.field private mLocked:Z

.field private mLockedInd:Landroid/widget/ImageView;

.field private mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

.field private mMsgBox:I

.field private mNumber:Ljava/lang/String;

.field private mSIMSelectDialog:Landroid/app/AlertDialog;

.field private mSaveMsgHandler:Landroid/os/Handler;

.field private mSaveMsgThread:Ljava/lang/Thread;

.field private mSelectedSimId:I

.field private mServiceCenter:Ljava/lang/String;

.field private mSimCount:I

.field private mSimId:I

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

.field private mSimReceiver:Landroid/content/BroadcastReceiver;

.field private mSmsSentDate:J

.field private mURLs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUiHandler:Landroid/os/Handler;

.field private msgType:I

.field private msgid:J

.field private reciBody:Ljava/lang/String;

.field private reciDate:Ljava/lang/String;

.field private reciDateLong:Ljava/lang/Long;

.field private reciNumber:Ljava/lang/String;

.field private reciTime:Ljava/lang/String;

.field private recipent:Landroid/widget/TextView;

.field private searchUri:Landroid/net/Uri;

.field private status:I

.field private textContent:Landroid/widget/TextView;

.field private threadId:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 200
    const/4 v0, 0x0

    sput-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 203
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "status"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "date_sent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->SMS_PROJECTION:[Ljava/lang/String;

    .line 216
    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "address"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "text"

    aput-object v1, v0, v5

    const-string v1, "type"

    aput-object v1, v0, v6

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "error"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "url"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "service_center"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "locked"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->WAPPUSH_PROJECTION:[Ljava/lang/String;

    .line 229
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "channel_id"

    aput-object v1, v0, v3

    const-string v1, "date"

    aput-object v1, v0, v4

    const-string v1, "body"

    aput-object v1, v0, v5

    const-string v1, "seen"

    aput-object v1, v0, v6

    const-string v1, "thread_id"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "locked"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "read"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->CB_PROJECTION:[Ljava/lang/String;

    .line 240
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->SMS_URI:Landroid/net/Uri;

    .line 241
    const-string v0, "content://wappush/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->WAPPUSH_URI:Landroid/net/Uri;

    .line 242
    const-string v0, "content://cb/messages/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->CB_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 175
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSmsSentDate:J

    .line 269
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;

    .line 274
    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;

    .line 275
    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgThread:Ljava/lang/Thread;

    .line 285
    iput v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I

    .line 291
    iput v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mHomeBox:I

    .line 293
    iput-boolean v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->isDlgShow:Z

    .line 294
    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 297
    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mHighlight:Ljava/util/regex/Pattern;

    .line 605
    new-instance v0, Lcom/android/mms/ui/FolderModeSmsViewer$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$2;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1233
    new-instance v0, Lcom/android/mms/ui/FolderModeSmsViewer$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$6;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mClickListener:Landroid/view/View$OnClickListener;

    .line 1379
    new-instance v0, Lcom/android/mms/ui/FolderModeSmsViewer$14;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$14;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mUiHandler:Landroid/os/Handler;

    .line 1690
    new-instance v0, Lcom/android/mms/ui/FolderModeSmsViewer$16;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$16;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mGetSimInfoRunnable:Ljava/lang/Runnable;

    .line 1697
    new-instance v0, Lcom/android/mms/ui/FolderModeSmsViewer$17;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$17;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/view/ContextMenu;Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/FolderModeSmsViewer;->addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/FolderModeSmsViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->resendMsg()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer;->confirmToDeleteMessage(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer;->copyToClipboard(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->getMessageDetails()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLockedInd:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1800()Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/FolderModeSmsViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->status:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FolderModeSmsViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/FolderModeSmsViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->threadId:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/FolderModeSmsViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->onMessageItemClick()V

    return-void
.end method

.method static synthetic access$2202(Lcom/android/mms/ui/FolderModeSmsViewer;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->isDlgShow:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/FolderModeSmsViewer;->saveMessageToSim(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mUiHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/FolderModeSmsViewer;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/FolderModeSmsViewer;->getMessageAndSaveToSim(J)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/Intent;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer;->getMessageAndSaveToSim(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$2802(Lcom/android/mms/ui/FolderModeSmsViewer;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSelectedSimId:I

    return p1
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/FolderModeSmsViewer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->getSimInfoList()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FolderModeSmsViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I

    return v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/FolderModeSmsViewer;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->recipent:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/FolderModeSmsViewer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-boolean v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/FolderModeSmsViewer;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer;->lockMessage(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/Thread;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgThread:Ljava/lang/Thread;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgThread:Ljava/lang/Thread;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/mms/ui/FolderModeSmsViewer;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 175
    iget-wide v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgid:J

    return-wide v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/FolderModeSmsViewer;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/FolderModeSmsViewer;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method private addCallAndContactMenuItems(Landroid/view/ContextMenu;Lcom/android/mms/ui/FolderModeSmsViewer$MsgListMenuClickListener;)V
    .locals 22
    .parameter "menu"
    .parameter "l"

    .prologue
    .line 1082
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    .line 1083
    .local v15, textToSpannify:Ljava/lang/StringBuilder;
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isInbox()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 1084
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ": "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1086
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1088
    new-instance v10, Landroid/text/SpannableString;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 1089
    .local v10, msg:Landroid/text/SpannableString;
    const/16 v18, 0xf

    move/from16 v0, v18

    invoke-static {v10, v0}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 1090
    const/16 v18, 0x0

    invoke-virtual {v10}, Landroid/text/SpannableString;->length()I

    move-result v19

    const-class v20, Landroid/text/style/URLSpan;

    move/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v20

    invoke-virtual {v10, v0, v1, v2}, Landroid/text/SpannableString;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [Landroid/text/style/URLSpan;

    invoke-static/range {v18 .. v18}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v17

    .line 1092
    .local v17, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->clear()V

    .line 1093
    :cond_1
    :goto_0
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_b

    .line 1094
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 1096
    .local v16, uriString:Ljava/lang/String;
    :goto_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 1097
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1099
    :cond_2
    const/4 v11, 0x0

    .line 1100
    .local v11, prefix:Ljava/lang/String;
    const-string v18, ":"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v14

    .line 1101
    .local v14, sep:I
    if-ltz v14, :cond_4

    .line 1102
    const/16 v18, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    .line 1103
    const-string v18, "mailto"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_3

    const-string v18, "tel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1104
    :cond_3
    add-int/lit8 v18, v14, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 1107
    :cond_4
    const/4 v6, 0x0

    .line 1108
    .local v6, addToContacts:Z
    const-string v18, "mailto"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 1109
    const v18, 0x7f0b0230

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v12

    .line 1110
    .local v12, sendEmailString:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.VIEW"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mailto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1112
    .local v8, intent:Landroid/content/Intent;
    const/high16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1113
    const/16 v18, 0x0

    const/16 v19, 0x17

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v12}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1114
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Lcom/android/mms/ui/MessageUtils;->haveEmailContact(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v18

    if-nez v18, :cond_5

    const/4 v6, 0x1

    .line 1141
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :goto_2
    if-eqz v6, :cond_1

    .line 1142
    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 1145
    .restart local v8       #intent:Landroid/content/Intent;
    const v18, 0x7f0b0233

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 1147
    .local v5, addContactString:Ljava/lang/String;
    const/16 v18, 0x0

    const/16 v19, 0x1b

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v5}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 1114
    .end local v5           #addContactString:Ljava/lang/String;
    .restart local v12       #sendEmailString:Ljava/lang/String;
    :cond_5
    const/4 v6, 0x0

    goto :goto_2

    .line 1115
    .end local v8           #intent:Landroid/content/Intent;
    .end local v12           #sendEmailString:Ljava/lang/String;
    :cond_6
    const-string v18, "tel"

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 1116
    const v18, 0x7f0b022f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    .line 1117
    .local v7, callBackString:Ljava/lang/String;
    new-instance v8, Landroid/content/Intent;

    const-string v18, "android.intent.action.DIAL"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "tel:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v8, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1118
    .restart local v8       #intent:Landroid/content/Intent;
    const/high16 v18, 0x8

    move/from16 v0, v18

    invoke-virtual {v8, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1119
    const/16 v18, 0x0

    const/16 v19, 0x16

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v7}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1121
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    move-object/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    move-object/from16 v18, v0

    const-string v19, "\\-"

    const-string v20, ""

    invoke-virtual/range {v18 .. v20}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1122
    const v18, 0x7f0b002f

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "%s"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v13

    .line 1124
    .local v13, sendSmsString:Ljava/lang/String;
    new-instance v9, Landroid/content/Intent;

    const-string v18, "android.intent.action.SENDTO"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "smsto:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-direct {v9, v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1126
    .local v9, intentSms:Landroid/content/Intent;
    const-string v18, "com.android.mms.ui.SendMessageToActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1127
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1128
    const/16 v18, 0x0

    const/16 v19, 0x21

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-interface {v0, v1, v2, v3, v13}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Landroid/view/MenuItem;->setIntent(Landroid/content/Intent;)Landroid/view/MenuItem;

    .line 1132
    .end local v9           #intentSms:Landroid/content/Intent;
    .end local v13           #sendSmsString:Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->isNumberInContacts(Ljava/lang/String;)Z

    move-result v18

    if-nez v18, :cond_8

    const/4 v6, 0x1

    .line 1133
    :goto_3
    goto/16 :goto_2

    .line 1132
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 1135
    .end local v7           #callBackString:Ljava/lang/String;
    .end local v8           #intent:Landroid/content/Intent;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_a

    .line 1136
    const/16 v18, 0x0

    const/16 v19, 0x23

    const/16 v20, 0x0

    const v21, 0x7f0b0026

    move-object/from16 v0, p1

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 1139
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/FolderModeSmsViewer;->mURLs:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 1152
    .end local v6           #addToContacts:Z
    .end local v11           #prefix:Ljava/lang/String;
    .end local v14           #sep:I
    .end local v16           #uriString:Ljava/lang/String;
    :cond_b
    return-void
.end method

.method private addPositionBasedMenuItems(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 1158
    :try_start_0
    move-object v0, p3

    check-cast v0, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1163
    .local v2, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    iget v3, v2, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    .line 1165
    .local v3, position:I
    invoke-direct {p0, p1, p2, v3}, Lcom/android/mms/ui/FolderModeSmsViewer;->addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V

    .line 1166
    .end local v2           #info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    .end local v3           #position:I
    :goto_0
    return-void

    .line 1159
    :catch_0
    move-exception v1

    .line 1160
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v4, "Mms/FolderModeSmsViewer"

    const-string v5, "bad menuInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private addToContact()V
    .locals 4

    .prologue
    .line 1007
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1008
    .local v0, count:I
    packed-switch v0, :pswitch_data_0

    .line 1023
    :goto_0
    return-void

    .line 1010
    :pswitch_0
    const-string v2, "Mms/FolderModeSmsViewer"

    const-string v3, "add contact, mCount == 0!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1013
    :pswitch_1
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1014
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1008
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private addUriSpecificMenuItems(Landroid/view/ContextMenu;Landroid/view/View;I)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "position"

    .prologue
    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 1169
    check-cast p2, Landroid/widget/ListView;

    .end local p2
    invoke-direct {p0, p2, p3}, Lcom/android/mms/ui/FolderModeSmsViewer;->getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;

    move-result-object v9

    .line 1171
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_0

    .line 1172
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v5, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1173
    .local v6, intent:Landroid/content/Intent;
    const-string v0, "android.intent.category.SELECTED_ALTERNATIVE"

    invoke-virtual {v6, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1174
    new-instance v4, Landroid/content/ComponentName;

    const-class v0, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v4, p0, v0}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, p1

    move v2, v1

    move v3, v1

    move v7, v1

    move-object v8, v5

    invoke-interface/range {v0 .. v8}, Landroid/view/ContextMenu;->addIntentOptions(IIILandroid/content/ComponentName;[Landroid/content/Intent;Landroid/content/Intent;I[Landroid/view/MenuItem;)I

    .line 1178
    .end local v6           #intent:Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method private confirmToDeleteMessage(Landroid/net/Uri;)V
    .locals 3
    .parameter "msgUri"

    .prologue
    .line 955
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 956
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02b6

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 957
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 958
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 959
    iget-boolean v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z

    if-eqz v1, :cond_0

    const v1, 0x7f0b02bb

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 961
    const v1, 0x7f0b02bf

    new-instance v2, Lcom/android/mms/ui/FolderModeSmsViewer$4;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer$4;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/net/Uri;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 976
    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 977
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 978
    return-void

    .line 959
    :cond_0
    const v1, 0x7f0b02ba

    goto :goto_0
.end method

.method private copyToClipboard(Ljava/lang/String;)V
    .locals 2
    .parameter "str"

    .prologue
    .line 777
    const-string v1, "clipboard"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 778
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0, p1}, Landroid/text/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 779
    return-void
.end method

.method private deleteMsg()V
    .locals 1

    .prologue
    .line 782
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    invoke-static {p0, v0}, Lcom/android/mms/ui/MessageUtils;->confirmDeleteMessage(Landroid/app/Activity;Landroid/net/Uri;)V

    .line 783
    return-void
.end method

.method private dialRecipient(Z)V
    .locals 5
    .parameter "isVideoCall"

    .prologue
    .line 1748
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isRecipientCallable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1749
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactList:Lcom/android/mms/data/ContactList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/mms/data/Contact;

    invoke-virtual {v2}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v1

    .line 1750
    .local v1, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tel:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1751
    .local v0, dialIntent:Landroid/content/Intent;
    if-eqz p1, :cond_0

    .line 1752
    const-string v2, "com.android.phone.extra.video"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1754
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    .line 1756
    .end local v0           #dialIntent:Landroid/content/Intent;
    .end local v1           #number:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private formatSimStatus()V
    .locals 7

    .prologue
    .line 1759
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1760
    .local v0, buffer:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1761
    .local v4, simInfoStart:I
    iget v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    invoke-direct {p0, p0, v5}, Lcom/android/mms/ui/FolderModeSmsViewer;->getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1762
    .local v3, simInfo:Ljava/lang/CharSequence;
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 1763
    const v5, 0x7f0b00fd

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1764
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v4

    .line 1765
    const-string v5, " "

    invoke-virtual {v0, v5}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1766
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1768
    :cond_0
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070005

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1769
    .local v1, color:I
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v2, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1770
    .local v2, colorSpan:Landroid/text/style/ForegroundColorSpan;
    const/4 v5, 0x0

    const/16 v6, 0x21

    invoke-virtual {v0, v2, v5, v4, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1771
    iget-object v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mByCard:Landroid/widget/TextView;

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1772
    return-void
.end method

.method private forwardMessage(Ljava/lang/String;)V
    .locals 10
    .parameter "body"

    .prologue
    const/4 v8, 0x1

    .line 981
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 982
    .local v1, intent:Landroid/content/Intent;
    const-string v5, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v1, p0, v5}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 983
    const-string v5, "forwarded_message"

    invoke-virtual {v1, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 984
    if-eqz p1, :cond_1

    .line 986
    move-object v3, p1

    .line 987
    .local v3, smsBody:Ljava/lang/String;
    invoke-static {}, Lcom/android/mms/MmsConfig;->getForwardWithSenderEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 988
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 989
    .local v2, prefs:Landroid/content/SharedPreferences;
    const-string v5, "pref_key_forward_with_sender"

    invoke-interface {v2, v5, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 990
    .local v4, smsForwardWithSender:Z
    const-string v5, "Mms/FolderModeSmsViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forwardMessage(): SMS Forward With Sender ?= "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    if-eqz v4, :cond_0

    .line 992
    iget v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-ne v5, v8, :cond_0

    .line 993
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const v6, 0x7f0b00b1

    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 994
    iget-object v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    const/4 v6, 0x0

    invoke-static {v5, v6}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    .line 995
    .local v0, contact:Lcom/android/mms/data/Contact;
    const-string v5, "Mms/FolderModeSmsViewer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "forwardMessage(): Contact\'s name and number="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    invoke-static {v7, v8, v9}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 997
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-static {v6, v7, v8}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1001
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    .end local v2           #prefs:Landroid/content/SharedPreferences;
    .end local v4           #smsForwardWithSender:Z
    :cond_0
    const-string v5, "sms_body"

    invoke-virtual {v1, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1003
    .end local v3           #smsBody:Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    .line 1004
    return-void
.end method

.method private getContactNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .parameter "recipientIds"

    .prologue
    const v6, 0x104000e

    const/4 v5, 0x1

    .line 548
    if-nez p1, :cond_0

    .line 549
    const-string v4, "Mms/FolderModeSmsViewer"

    const-string v5, "getContactNumber recipientIds is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 563
    :goto_0
    return-object v3

    .line 552
    :cond_0
    invoke-static {p1, v5}, Lcom/android/mms/data/ContactList;->getByIds(Ljava/lang/String;Z)Lcom/android/mms/data/ContactList;

    move-result-object v2

    .line 553
    .local v2, recipients:Lcom/android/mms/data/ContactList;
    const-string v3, ""

    .line 554
    .local v3, res:Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_2

    .line 555
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/mms/data/Contact;

    .line 556
    .local v0, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v0, v5}, Lcom/android/mms/data/Contact;->reload(Z)V

    goto :goto_1

    .line 558
    .end local v0           #contact:Lcom/android/mms/data/Contact;
    :cond_1
    const-string v4, ", "

    invoke-virtual {v2, v4}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 562
    .end local v1           #i$:Ljava/util/Iterator;
    :goto_2
    const-string v4, "Mms/FolderModeSmsViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getContactNumber recipientIds res IS "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 560
    :cond_2
    invoke-virtual {p0, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method

.method private getContactNumberByNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .parameter "recNum"

    .prologue
    const v4, 0x104000e

    .line 527
    if-nez p1, :cond_0

    .line 528
    const-string v2, "Mms/FolderModeSmsViewer"

    const-string v3, "getContactNumber recNum is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 544
    :goto_0
    return-object v1

    .line 531
    :cond_0
    iput-object p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    .line 532
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p1, v2, v3}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    .line 533
    .local v0, recipients:Lcom/android/mms/data/ContactList;
    const-string v1, ""

    .line 534
    .local v1, res:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 538
    const-string v2, ", "

    invoke-virtual {v0, v2}, Lcom/android/mms/data/ContactList;->formatNames(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 542
    :goto_1
    iput-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactNumber:Ljava/lang/String;

    .line 543
    const-string v2, "Mms/FolderModeSmsViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getContactNumber recNum res IS "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 540
    :cond_1
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private getMessageAndSaveToSim(J)V
    .locals 13
    .parameter "msgId"

    .prologue
    .line 1466
    const/4 v8, 0x0

    .line 1467
    .local v8, result:I
    const/4 v0, 0x0

    .line 1469
    .local v0, scAddress:Ljava/lang/String;
    const/4 v2, 0x0

    .line 1470
    .local v2, messages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    invoke-static {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSmsManager;->divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    .line 1472
    const/4 v3, 0x0

    .line 1473
    .local v3, smsStatus:I
    const-wide/16 v4, 0x0

    .line 1474
    .local v4, timeStamp:J
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isInbox()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1475
    const/4 v3, 0x1

    .line 1476
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciDateLong:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 1477
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->getServiceCenter()Ljava/lang/String;

    move-result-object v0

    .line 1486
    :goto_0
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v9

    .line 1487
    .local v9, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    if-nez v0, :cond_0

    if-eqz v9, :cond_0

    .line 1490
    :try_start_0
    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSelectedSimId:I

    int-to-long v10, v1

    invoke-static {p0, v10, v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v1

    invoke-virtual {v9, v1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getScAddressGemini(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1499
    :cond_0
    :goto_1
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t scAddress\t= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1500
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t Address\t= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t msgBody\t= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1502
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t smsStatus\t= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1503
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t timeStamp\t= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1506
    const/4 v6, -0x1

    .line 1507
    .local v6, slotId:I
    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I

    const/4 v10, 0x1

    if-ne v1, v10, :cond_4

    .line 1508
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimInfoList:Ljava/util/List;

    const/4 v10, 0x0

    invoke-interface {v1, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v6

    .line 1512
    :goto_2
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t slot Id\t= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1514
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lcom/mediatek/encapsulation/android/telephony/gemini/EncapsulatedGeminiSmsManager;->copyTextMessageToIccCardGemini(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;IJI)I

    move-result v8

    .line 1521
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "\t result \t= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    if-nez v8, :cond_5

    .line 1524
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mUiHandler:Landroid/os/Handler;

    const/16 v10, 0x6a

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1532
    :goto_3
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSaveMsgHandler:Landroid/os/Handler;

    const/16 v10, 0x64

    const-wide/16 v11, 0x1388

    invoke-virtual {v1, v10, v11, v12}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1533
    return-void

    .line 1478
    .end local v6           #slotId:I
    .end local v9           #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isSentbox()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1479
    const/4 v3, 0x5

    goto/16 :goto_0

    .line 1480
    :cond_2
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isFailedbox()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1481
    const/4 v3, 0x7

    goto/16 :goto_0

    .line 1483
    :cond_3
    const-string v1, "Mms/FolderModeSmsViewer"

    const-string v10, "Unknown sms status"

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1494
    .restart local v9       #teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_0
    move-exception v7

    .line 1495
    .local v7, e:Landroid/os/RemoteException;
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "getScAddressGemini is failed.\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v7}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v1, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1510
    .end local v7           #e:Landroid/os/RemoteException;
    .restart local v6       #slotId:I
    :cond_4
    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSelectedSimId:I

    int-to-long v10, v1

    invoke-static {p0, v10, v11}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v6

    goto/16 :goto_2

    .line 1525
    :cond_5
    const/4 v1, 0x7

    if-ne v8, v1, :cond_6

    .line 1527
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mUiHandler:Landroid/os/Handler;

    const/16 v10, 0x6e

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3

    .line 1530
    :cond_6
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mUiHandler:Landroid/os/Handler;

    const/16 v10, 0x6c

    invoke-virtual {v1, v10}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_3
.end method

.method private getMessageAndSaveToSim(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1460
    const-string v2, "Mms/FolderModeSmsViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get message and save to sim, selected sim id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSelectedSimId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1461
    const-string v2, "message_id"

    const-wide/16 v3, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 1462
    .local v0, msgId:J
    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/FolderModeSmsViewer;->getMessageAndSaveToSim(J)V

    .line 1463
    return-void
.end method

.method private getMessageDetails()Ljava/lang/String;
    .locals 10

    .prologue
    const v9, 0x7f0b02c9

    const/4 v8, 0x3

    const/16 v7, 0xa

    const/4 v6, 0x1

    .line 731
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 732
    .local v0, details:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 735
    .local v1, res:Landroid/content/res/Resources;
    const v2, 0x7f0b02c2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 736
    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    if-ne v2, v6, :cond_4

    .line 737
    const v2, 0x7f0b02c3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    :cond_0
    :goto_0
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 746
    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-ne v2, v6, :cond_6

    .line 747
    const v2, 0x7f0b02c6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 751
    :goto_1
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    iget-wide v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSmsSentDate:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    if-ne v2, v6, :cond_1

    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-ne v2, v6, :cond_1

    .line 755
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 756
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    iget-wide v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSmsSentDate:J

    invoke-static {p0, v2, v3, v6}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 760
    :cond_1
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 761
    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-ne v2, v6, :cond_7

    .line 762
    const v2, 0x7f0b02ca

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    :goto_2
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-eq v2, v6, :cond_2

    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    if-ne v2, v8, :cond_3

    .line 770
    :cond_2
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 771
    const v2, 0x7f0b0012

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mServiceCenter:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 774
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 738
    :cond_4
    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    if-ne v2, v8, :cond_5

    .line 739
    const v2, 0x7f0b001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 740
    :cond_5
    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 741
    const v2, 0x7f0b0061

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 749
    :cond_6
    const v2, 0x7f0b02c7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 764
    :cond_7
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2
.end method

.method private getRecipientIds(I)Ljava/lang/String;
    .locals 10
    .parameter "mthreadId"

    .prologue
    const/4 v9, 0x0

    .line 503
    const-string v0, "content://mms-sms/thread_id"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 504
    .local v8, uri:Landroid/net/Uri;
    int-to-long v2, p1

    invoke-static {v8, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 505
    .local v1, reUri:Landroid/net/Uri;
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecipientIds uri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const/4 v6, 0x0

    .line 507
    .local v6, c:Landroid/database/Cursor;
    const-string v7, ""

    .line 509
    .local v7, res:Ljava/lang/String;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 510
    if-nez v6, :cond_1

    .line 511
    const-string v0, "Mms/FolderModeSmsViewer"

    const-string v2, "getRecipientIds cursor is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 520
    if-eqz v6, :cond_0

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v9

    .line 518
    :goto_0
    return-object v0

    .line 514
    :cond_1
    :try_start_1
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "count is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 516
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 517
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getRecipientIds = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 520
    if-eqz v6, :cond_2

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v7

    .line 518
    goto :goto_0

    .line 520
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_3

    .line 521
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 520
    :cond_3
    throw v0
.end method

.method private getSelectedUriFromMessageList(Landroid/widget/ListView;I)Landroid/net/Uri;
    .locals 11
    .parameter "listView"
    .parameter "position"

    .prologue
    const/4 v8, 0x0

    .line 1182
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 1183
    .local v2, msglistItem:Lcom/android/mms/ui/MessageListItem;
    if-nez v2, :cond_1

    .line 1230
    :cond_0
    :goto_0
    return-object v8

    .line 1192
    :cond_1
    const/4 v4, -0x1

    .line 1193
    .local v4, selStart:I
    const/4 v3, -0x1

    .line 1195
    .local v3, selEnd:I
    const/4 v5, 0x0

    .line 1198
    .local v5, text:Ljava/lang/CharSequence;
    const v9, 0x7f0f0025

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 1199
    .local v6, textView:Landroid/widget/TextView;
    if-eqz v6, :cond_2

    .line 1200
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1201
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1202
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1205
    :cond_2
    const/4 v9, -0x1

    if-ne v4, v9, :cond_3

    .line 1207
    const v9, 0x7f0f0163

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #textView:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 1208
    .restart local v6       #textView:Landroid/widget/TextView;
    if-eqz v6, :cond_3

    .line 1209
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v4

    .line 1210
    invoke-virtual {v6}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v3

    .line 1211
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    .line 1217
    :cond_3
    if-eq v4, v3, :cond_0

    .line 1218
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1219
    .local v0, max:I
    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1221
    .local v1, min:I
    check-cast v5, Landroid/text/Spanned;

    .end local v5           #text:Ljava/lang/CharSequence;
    const-class v9, Landroid/text/style/URLSpan;

    invoke-interface {v5, v1, v0, v9}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Landroid/text/style/URLSpan;

    .line 1224
    .local v7, urls:[Landroid/text/style/URLSpan;
    array-length v9, v7

    const/4 v10, 0x1

    if-ne v9, v10, :cond_0

    .line 1225
    const/4 v8, 0x0

    aget-object v8, v7, v8

    invoke-virtual {v8}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    goto :goto_0
.end method

.method private getServiceCenter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1724
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mServiceCenter:Ljava/lang/String;

    return-object v0
.end method

.method private getSimInfo(Landroid/content/Context;I)Ljava/lang/CharSequence;
    .locals 12
    .parameter "context"
    .parameter "simId"

    .prologue
    const/16 v11, 0x21

    const/4 v10, 0x0

    .line 1830
    const-string v6, "Mms/FolderModeSmsViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSimInfo simId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1832
    const/4 v6, -0x1

    if-ne p2, v6, :cond_0

    .line 1833
    const-string v0, ""

    .line 1870
    :goto_0
    return-object v0

    .line 1836
    :cond_0
    int-to-long v6, p2

    invoke-static {p1, v6, v7}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSIMInfoById(Landroid/content/Context;J)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v5

    .line 1837
    .local v5, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v5, :cond_4

    .line 1838
    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    .line 1840
    .local v3, displayName:Ljava/lang/String;
    const-string v6, "Mms/FolderModeSmsViewer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SIMInfo simId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " mDisplayName="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1842
    if-nez v3, :cond_1

    .line 1843
    const-string v0, ""

    goto :goto_0

    .line 1846
    :cond_1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 1847
    .local v0, buf:Landroid/text/SpannableStringBuilder;
    const-string v6, "   "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1850
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-ge v6, v7, :cond_2

    .line 1851
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1857
    :goto_1
    const-string v6, "  "

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1860
    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v6

    if-ltz v6, :cond_3

    invoke-virtual {v5}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v2

    .line 1862
    .local v2, colorRes:I
    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 1863
    .local v4, drawable:Landroid/graphics/drawable/Drawable;
    new-instance v6, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;

    invoke-direct {v6, v2, v4}, Lcom/mediatek/encapsulation/android/text/style/EncapsulatedBackgroundImageSpan;-><init>(ILandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 1866
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070008

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    .line 1867
    .local v1, color:I
    new-instance v6, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v6, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    invoke-virtual {v0, v6, v10, v7, v11}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_0

    .line 1853
    .end local v1           #color:I
    .end local v2           #colorRes:I
    .end local v4           #drawable:Landroid/graphics/drawable/Drawable;
    :cond_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v7, 0x8

    invoke-virtual {v3, v10, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "..."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {v3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    .line 1860
    :cond_3
    sget v2, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_background_locked:I

    goto :goto_2

    .line 1870
    .end local v0           #buf:Landroid/text/SpannableStringBuilder;
    .end local v3           #displayName:Ljava/lang/String;
    :cond_4
    const-string v0, ""

    goto/16 :goto_0
.end method

.method private getSimInfoList()V
    .locals 3

    .prologue
    .line 1672
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimInfoList:Ljava/util/List;

    .line 1673
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I

    .line 1674
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSimInfoList(): mSimCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    return-void

    .line 1673
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimInfoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method static getStatusResource(I)I
    .locals 3
    .parameter "state"

    .prologue
    .line 1641
    const-string v0, "Utils gemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "!!!!!!!!!!!!!state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    packed-switch p0, :pswitch_data_0

    .line 1658
    :pswitch_0
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 1644
    :pswitch_1
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_radio_off:I

    goto :goto_0

    .line 1646
    :pswitch_2
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_locked:I

    goto :goto_0

    .line 1648
    :pswitch_3
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_invalid:I

    goto :goto_0

    .line 1650
    :pswitch_4
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_searching:I

    goto :goto_0

    .line 1652
    :pswitch_5
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_roaming:I

    goto :goto_0

    .line 1654
    :pswitch_6
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_connected:I

    goto :goto_0

    .line 1656
    :pswitch_7
    sget v0, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$drawable;->sim_roaming_connected:I

    goto :goto_0

    .line 1642
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 1812
    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    .line 1814
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v0, :cond_0

    .line 1815
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v0, p0, p0}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->init(Lcom/mediatek/mms/ext/IMmsTextSizeAdjustHost;Landroid/app/Activity;)V

    .line 1817
    :cond_0
    return-void
.end method

.method private isFailedbox()Z
    .locals 2

    .prologue
    .line 1720
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInbox()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1708
    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isNumberInContacts(Ljava/lang/String;)Z
    .locals 1
    .parameter "phoneNumber"

    .prologue
    .line 1077
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    return v0
.end method

.method private isRecipientCallable()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1744
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v0, :cond_0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v1}, Lcom/android/mms/data/ContactList;->containsEmail()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSentbox()Z
    .locals 2

    .prologue
    .line 1716
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSms()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1712
    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private lockMessage(Z)V
    .locals 4
    .parameter "lock"

    .prologue
    const/4 v1, 0x1

    .line 787
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 788
    .local v0, values:Landroid/content/ContentValues;
    const-string v2, "locked"

    if-eqz p1, :cond_0

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 790
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z

    .line 791
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/android/mms/ui/FolderModeSmsViewer$3;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer$3;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/ContentValues;Z)V

    const-string v3, "lockMessage"

    invoke-direct {v1, v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 803
    return-void

    .line 788
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private markSmsRead(I)V
    .locals 11
    .parameter "type"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 567
    const/4 v2, 0x0

    .line 568
    .local v2, readUri:Landroid/net/Uri;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3, v5}, Landroid/content/ContentValues;-><init>(I)V

    .line 569
    .local v3, values:Landroid/content/ContentValues;
    const-string v0, "read"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 570
    const-string v0, "seen"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 571
    if-ne p1, v5, :cond_1

    .line 572
    sget-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->SMS_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgid:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 573
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 583
    :cond_0
    :goto_0
    invoke-static {p0, p1}, Lcom/android/mms/ui/FolderModeSmsViewer;->updateNotification(Landroid/content/Context;I)V

    .line 584
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 585
    return-void

    .line 574
    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 575
    sget-object v0, Lcom/android/mms/ui/FolderModeSmsViewer;->WAPPUSH_URI:Landroid/net/Uri;

    iget-wide v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgid:J

    invoke-static {v0, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 576
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    move-object v5, v4

    invoke-static/range {v0 .. v5}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0

    .line 577
    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 579
    .local v9, selection:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/mms/ui/FolderModeSmsViewer;->CB_URI:Landroid/net/Uri;

    move-object v8, v3

    move-object v10, v4

    invoke-static/range {v5 .. v10}, Landroid/database/sqlite/SqliteWrapper;->update(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onMessageItemClick()V
    .locals 15

    .prologue
    .line 1242
    const/4 v6, 0x0

    .line 1243
    .local v6, mIsTel:Z
    iget-object v13, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->textContent:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getUrls()[Landroid/text/style/URLSpan;

    move-result-object v8

    .line 1244
    .local v8, spans:[Landroid/text/style/URLSpan;
    invoke-static {v8}, Lcom/android/mms/ui/MessageUtils;->extractUris([Landroid/text/style/URLSpan;)Ljava/util/ArrayList;

    move-result-object v12

    .line 1245
    .local v12, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v9, "tel:"

    .line 1246
    .local v9, telPrefix:Ljava/lang/String;
    const-string v11, ""

    .line 1247
    .local v11, url:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v13, v8

    if-ge v4, v13, :cond_1

    .line 1248
    invoke-virtual {v12, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #url:Ljava/lang/String;
    check-cast v11, Ljava/lang/String;

    .line 1249
    .restart local v11       #url:Ljava/lang/String;
    const-string v13, "tel:"

    invoke-virtual {v11, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1250
    const/4 v6, 0x1

    .line 1251
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "smsto:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "tel:"

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v14}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1247
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1255
    :cond_1
    array-length v13, v8

    if-nez v13, :cond_3

    .line 1256
    const-string v13, "Mms/FolderModeSmsViewer"

    const-string v14, "spans.length == 0"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_2
    :goto_1
    return-void

    .line 1257
    :cond_3
    array-length v13, v8

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    if-nez v6, :cond_5

    .line 1263
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    move-result-object v7

    .line 1264
    .local v7, mUriTemp:Ljava/lang/String;
    const-string v13, "mailto:"

    invoke-virtual {v7, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_4

    .line 1265
    iget-boolean v13, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->isDlgShow:Z

    if-nez v13, :cond_2

    .line 1266
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->isDlgShow:Z

    .line 1267
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1268
    .local v2, b:Landroid/app/AlertDialog$Builder;
    sget v13, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_title:I

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1269
    sget v13, Lcom/mediatek/encapsulation/com/mediatek/internal/EncapsulatedR$string;->url_dialog_choice_message:I

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1270
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1271
    const/high16 v13, 0x104

    new-instance v14, Lcom/android/mms/ui/FolderModeSmsViewer$7;

    invoke-direct {v14, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$7;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1276
    const v13, 0x104000a

    new-instance v14, Lcom/android/mms/ui/FolderModeSmsViewer$8;

    invoke-direct {v14, p0, v7}, Lcom/android/mms/ui/FolderModeSmsViewer$8;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1287
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1288
    .local v0, aDlg:Landroid/app/AlertDialog;
    new-instance v13, Lcom/android/mms/ui/FolderModeSmsViewer$9;

    invoke-direct {v13, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$9;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1294
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_1

    .line 1297
    .end local v0           #aDlg:Landroid/app/AlertDialog;
    .end local v2           #b:Landroid/app/AlertDialog$Builder;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 1298
    .local v10, uri:Landroid/net/Uri;
    new-instance v5, Landroid/content/Intent;

    const-string v13, "android.intent.action.VIEW"

    invoke-direct {v5, v13, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1299
    .local v5, intent:Landroid/content/Intent;
    const-string v13, "com.android.browser.application_id"

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1300
    const/high16 v13, 0x8

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1301
    invoke-virtual {p0, v5}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 1304
    .end local v5           #intent:Landroid/content/Intent;
    .end local v7           #mUriTemp:Ljava/lang/String;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_5
    iget-boolean v13, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->isDlgShow:Z

    if-nez v13, :cond_2

    .line 1305
    const/4 v13, 0x1

    iput-boolean v13, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->isDlgShow:Z

    .line 1306
    new-instance v1, Lcom/android/mms/ui/FolderModeSmsViewer$10;

    const v13, 0x1090011

    invoke-direct {v1, p0, p0, v13, v12}, Lcom/android/mms/ui/FolderModeSmsViewer$10;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/Context;ILjava/util/List;)V

    .line 1339
    .local v1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1341
    .restart local v2       #b:Landroid/app/AlertDialog$Builder;
    new-instance v3, Lcom/android/mms/ui/FolderModeSmsViewer$11;

    invoke-direct {v3, p0, v12}, Lcom/android/mms/ui/FolderModeSmsViewer$11;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/util/ArrayList;)V

    .line 1357
    .local v3, click:Landroid/content/DialogInterface$OnClickListener;
    const v13, 0x7f0b0312

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1358
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1359
    invoke-virtual {v2, v1, v3}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1361
    const/high16 v13, 0x104

    new-instance v14, Lcom/android/mms/ui/FolderModeSmsViewer$12;

    invoke-direct {v14, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$12;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    invoke-virtual {v2, v13, v14}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1366
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 1367
    .restart local v0       #aDlg:Landroid/app/AlertDialog;
    new-instance v13, Lcom/android/mms/ui/FolderModeSmsViewer$13;

    invoke-direct {v13, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$13;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;)V

    invoke-virtual {v0, v13}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 1373
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_1
.end method

.method private resendMsg()V
    .locals 11

    .prologue
    .line 1026
    :try_start_0
    new-instance v0, Lcom/android/mms/transaction/SmsSingleRecipientSender;

    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->threadId:I

    int-to-long v4, v1

    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->status:I

    const/16 v6, 0x20

    if-ne v1, v6, :cond_1

    const/4 v6, 0x1

    :goto_0
    iget-object v7, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/mms/transaction/SmsSingleRecipientSender;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;JZLandroid/net/Uri;)V

    .line 1029
    .local v0, sender:Lcom/android/mms/transaction/MessageSender;
    move-object v3, p0

    .line 1030
    .local v3, ct:Landroid/content/Context;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 1031
    .local v4, cr:Landroid/content/ContentResolver;
    iget-object v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    .line 1034
    .local v5, mUri:Landroid/net/Uri;
    const/16 v10, 0x12e

    .line 1035
    .local v10, requestType:I
    sget-object v1, Lcom/android/mms/ui/FolderModeSmsViewer;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    if-nez v1, :cond_0

    .line 1036
    new-instance v1, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-direct {v1}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;-><init>()V

    sput-object v1, Lcom/android/mms/ui/FolderModeSmsViewer;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    .line 1038
    :cond_0
    sget-object v1, Lcom/android/mms/ui/FolderModeSmsViewer;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->register(Landroid/content/Context;)V

    .line 1039
    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    int-to-long v1, v1

    invoke-static {p0, v1, v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v9

    .line 1040
    .local v9, mSlotId:I
    const-string v1, "Mms/Txn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check pin and...: simId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, "\t slotId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    sget-object v7, Lcom/android/mms/ui/FolderModeSmsViewer;->mCellMgr:Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;

    new-instance v1, Lcom/android/mms/ui/FolderModeSmsViewer$5;

    move-object v2, p0

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/mms/ui/FolderModeSmsViewer$5;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;Lcom/android/mms/transaction/MessageSender;)V

    invoke-virtual {v7, v9, v10, v1}, Lcom/mediatek/encapsulation/com/mediatek/CellConnService/EncapsulatedCellConnMgr;->handleCellConn(IILjava/lang/Runnable;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1073
    .end local v0           #sender:Lcom/android/mms/transaction/MessageSender;
    .end local v3           #ct:Landroid/content/Context;
    .end local v4           #cr:Landroid/content/ContentResolver;
    .end local v5           #mUri:Landroid/net/Uri;
    .end local v9           #mSlotId:I
    .end local v10           #requestType:I
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1074
    return-void

    .line 1026
    :cond_1
    const/4 v6, 0x0

    goto :goto_0

    .line 1070
    :catch_0
    move-exception v8

    .line 1071
    .local v8, e:Ljava/lang/Exception;
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to send message: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, ", threadId="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v6, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->threadId:I

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private saveMessageToSim(Ljava/lang/String;J)V
    .locals 3
    .parameter "smsgType"
    .parameter "msgId"

    .prologue
    .line 1663
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1664
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message_type"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1665
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1666
    const-string v1, "Select_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1667
    invoke-direct {p0, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->showSimSelectedDialog(Landroid/content/Intent;)V

    .line 1668
    return-void
.end method

.method private setHighlightText(Landroid/text/SpannableStringBuilder;)V
    .locals 5
    .parameter "buf"

    .prologue
    .line 488
    const-string v1, "Mms/FolderModeSmsViewer"

    const-string v2, " setHighlightText"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mHighlight:Ljava/util/regex/Pattern;

    if-eqz v1, :cond_0

    .line 491
    const-string v1, "Mms/FolderModeSmsViewer"

    const-string v2, " highlight ok"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mHighlight:Ljava/util/regex/Pattern;

    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 493
    .local v0, m:Ljava/util/regex/Matcher;
    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 494
    new-instance v1, Landroid/text/style/StyleSpan;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    .line 497
    .end local v0           #m:Ljava/util/regex/Matcher;
    :cond_0
    const-string v1, "Mms/FolderModeSmsViewer"

    const-string v2, " no highlightt"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    :cond_1
    return-void
.end method

.method private showDeliveryReport()V
    .locals 4

    .prologue
    .line 1728
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/DeliveryReportActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1729
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "message_id"

    iget-wide v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgid:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1730
    const-string v1, "message_type"

    const-string v2, "sms"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1731
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    .line 1732
    return-void
.end method

.method private showSimSelectedDialog(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x4

    .line 1537
    move-object v5, p1

    .line 1538
    .local v5, it:Landroid/content/Intent;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1539
    .local v2, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1540
    .local v7, simListInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    iget v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimCount:I

    if-ge v4, v10, :cond_6

    .line 1541
    invoke-static {p0, v4}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v6

    .line 1542
    .local v6, simInfoManage:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v6, :cond_0

    .line 1540
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1545
    :cond_0
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1546
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1548
    .local v3, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v10, "simIcon"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1549
    invoke-virtual {p0, v4}, Lcom/android/mms/ui/FolderModeSmsViewer;->getSimStatus(I)I

    move-result v9

    .line 1550
    .local v9, state:I
    const-string v10, "simStatus"

    invoke-static {v9}, Lcom/android/mms/ui/FolderModeSmsViewer;->getStatusResource(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1551
    const-string v10, "ipmsg_indicator"

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1552
    const-string v8, ""

    .line 1553
    .local v8, simNumber:Ljava/lang/String;
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1554
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDispalyNumberFormat()I

    move-result v10

    packed-switch v10, :pswitch_data_0

    .line 1577
    :cond_1
    :goto_2
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 1578
    const-string v10, "simNumberShort"

    invoke-virtual {v3, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1583
    :goto_3
    const-string v10, "simName"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1584
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 1585
    const-string v10, "simNumber"

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1589
    :goto_4
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1557
    :pswitch_0
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v12, :cond_2

    .line 1558
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1560
    :cond_2
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 1562
    goto :goto_2

    .line 1564
    :pswitch_1
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-gt v10, v12, :cond_3

    .line 1565
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1567
    :cond_3
    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x4

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 1569
    goto :goto_2

    .line 1571
    :pswitch_2
    const-string v8, ""

    .line 1572
    goto :goto_2

    .line 1580
    :cond_4
    const-string v10, "simNumberShort"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1587
    :cond_5
    const-string v10, "simNumber"

    const-string v11, ""

    invoke-virtual {v3, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 1592
    .end local v3           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v6           #simInfoManage:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v8           #simNumber:Ljava/lang/String;
    .end local v9           #state:I
    :cond_6
    invoke-static {v2, p0}, Lcom/android/mms/ui/MessageUtils;->createSimpleAdapter(Ljava/util/List;Landroid/content/Context;)Landroid/widget/SimpleAdapter;

    move-result-object v0

    .line 1593
    .local v0, a:Landroid/widget/SimpleAdapter;
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1594
    .local v1, b:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f0b0085

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 1595
    const/4 v10, 0x1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1596
    new-instance v10, Lcom/android/mms/ui/FolderModeSmsViewer$15;

    invoke-direct {v10, p0, v7, v5}, Lcom/android/mms/ui/FolderModeSmsViewer$15;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/util/List;Landroid/content/Intent;)V

    invoke-virtual {v1, v0, v10}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1612
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSIMSelectDialog:Landroid/app/AlertDialog;

    .line 1613
    iget-object v10, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSIMSelectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    .line 1614
    return-void

    .line 1554
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static updateNotification(Landroid/content/Context;I)V
    .locals 2
    .parameter "context"
    .parameter "type"

    .prologue
    .line 588
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/FolderModeSmsViewer$1;

    invoke-direct {v1, p1, p0}, Lcom/android/mms/ui/FolderModeSmsViewer$1;-><init>(ILandroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 603
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .parameter "ev"

    .prologue
    .line 1819
    const/4 v0, 0x0

    .line 1820
    .local v0, ret:Z
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v1, :cond_0

    .line 1821
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v1, p1}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1823
    :cond_0
    if-nez v0, :cond_1

    .line 1824
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 1826
    :cond_1
    return v0
.end method

.method public getSimStatus(I)I
    .locals 7
    .parameter "id"

    .prologue
    const/4 v4, -0x1

    .line 1617
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v2

    .line 1619
    .local v2, teleService:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimInfoList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v1

    .line 1620
    .local v1, slotId:I
    if-eq v1, v4, :cond_0

    if-eqz v2, :cond_0

    .line 1622
    :try_start_0
    invoke-virtual {v2, v1}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getSimIndicatorStateGemini(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 1628
    :goto_0
    return v3

    .line 1623
    :catch_0
    move-exception v0

    .line 1624
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "Mms/FolderModeSmsViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getSimIndicatorStateGemini is failed.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    .line 1625
    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :cond_0
    move v3, v4

    .line 1628
    goto :goto_0
.end method

.method public is3G(I)Z
    .locals 4
    .parameter "id"

    .prologue
    .line 1632
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimInfoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v0

    .line 1633
    .local v0, slotId:I
    const-string v1, "Mms/FolderModeSmsViewer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "is3G SIMInfo.getSlotById id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    if-nez v0, :cond_0

    .line 1635
    const/4 v1, 0x1

    .line 1637
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "icicle"

    .prologue
    .line 302
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 303
    const-string v2, "Mms/FolderModeSmsViewer"

    const-string v3, "onCreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    const v2, 0x7f040030

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 307
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 309
    const v2, 0x7f0f00c5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->recipent:Landroid/widget/TextView;

    .line 311
    const v2, 0x7f0f00c7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->date:Landroid/widget/TextView;

    .line 312
    const v2, 0x7f0f00cc

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->textContent:Landroid/widget/TextView;

    .line 313
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->textContent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContextMenuCreateListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 314
    iget-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->textContent:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 317
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "highlight"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 318
    .local v0, highlightString:Ljava/lang/String;
    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mHighlight:Ljava/util/regex/Pattern;

    .line 323
    const v2, 0x7f0f00c8

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mByCard:Landroid/widget/TextView;

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 325
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    .line 326
    const-string v2, "msg_type"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    .line 327
    const-string v2, "folderbox"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mHomeBox:I

    .line 328
    const-string v2, "Mms/FolderModeSmsViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "the sms intent uri is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 329
    invoke-direct {p0, p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->initPlugin(Landroid/content/Context;)V

    .line 330
    const v2, 0x7f0f0029

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLockedInd:Landroid/widget/ImageView;

    .line 331
    return-void

    .line 318
    .end local v1           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v2, v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v2

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v4, 0x6

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 806
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0009

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 808
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-ne v0, v2, :cond_3

    .line 809
    const v0, 0x7f0b003d

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 814
    :cond_0
    :goto_0
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isSms()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->status:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 819
    const v0, 0x7f0b023e

    invoke-interface {p1, v3, v4, v3, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 822
    :cond_2
    return v2

    .line 810
    :cond_3
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 811
    const/4 v0, 0x3

    const v1, 0x7f0b004b

    invoke-interface {p1, v3, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 896
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    .line 951
    :goto_0
    return v3

    .line 899
    :sswitch_0
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/FolderModeSmsViewer;->forwardMessage(Ljava/lang/String;)V

    :goto_1
    move v3, v4

    .line 951
    goto :goto_0

    .line 902
    :sswitch_1
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    invoke-direct {p0, v3}, Lcom/android/mms/ui/FolderModeSmsViewer;->confirmToDeleteMessage(Landroid/net/Uri;)V

    goto :goto_1

    .line 905
    :sswitch_2
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->addToContact()V

    goto :goto_1

    .line 908
    :sswitch_3
    const/4 v1, -0x1

    .line 910
    .local v1, simId:I
    iget v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    int-to-long v5, v3

    invoke-static {p0, v5, v6}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v2

    .line 911
    .local v2, slot:I
    const-string v3, "Mms/FolderModeSmsViewer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "slot is:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ",simId:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    if-ltz v2, :cond_0

    .line 913
    iget v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    .line 918
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    invoke-static {p0, v3, v1}, Lcom/android/mms/ui/MessageUtils;->replyMessage(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    .line 921
    .end local v1           #simId:I
    .end local v2           #slot:I
    :sswitch_4
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->resendMsg()V

    goto :goto_1

    .line 924
    :sswitch_5
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->showDeliveryReport()V

    goto :goto_1

    .line 927
    :sswitch_6
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 928
    .local v0, it:Landroid/content/Intent;
    const-string v3, "floderview_key"

    iget v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mHomeBox:I

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 929
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 930
    const/high16 v3, 0x3400

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 933
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 936
    .end local v0           #it:Landroid/content/Intent;
    :sswitch_7
    invoke-direct {p0, v3}, Lcom/android/mms/ui/FolderModeSmsViewer;->dialRecipient(Z)V

    goto :goto_1

    .line 939
    :sswitch_8
    invoke-direct {p0, v4}, Lcom/android/mms/ui/FolderModeSmsViewer;->dialRecipient(Z)V

    goto :goto_1

    .line 942
    :sswitch_9
    invoke-direct {p0, v4}, Lcom/android/mms/ui/FolderModeSmsViewer;->lockMessage(Z)V

    goto :goto_1

    .line 945
    :sswitch_a
    invoke-direct {p0, v3}, Lcom/android/mms/ui/FolderModeSmsViewer;->lockMessage(Z)V

    goto :goto_1

    .line 896
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_3
        0x3 -> :sswitch_4
        0x5 -> :sswitch_2
        0x6 -> :sswitch_5
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0x102002c -> :sswitch_6
        0x7f0f01d2 -> :sswitch_0
        0x7f0f01d3 -> :sswitch_1
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    .line 826
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isSms()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    :cond_0
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_3

    .line 830
    const/4 v7, 0x0

    .line 832
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    sget-object v2, Lcom/android/mms/ui/FolderModeSmsViewer;->SMS_PROJECTION:[Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 833
    if-eqz v7, :cond_1

    .line 834
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    .line 835
    const/4 v0, 0x3

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 838
    :cond_1
    if-eqz v7, :cond_2

    .line 839
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 842
    :cond_2
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    .line 843
    const/4 v0, 0x0

    const/4 v1, 0x3

    const/4 v2, 0x1

    const v3, 0x7f0b004b

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 846
    .end local v7           #cursor:Landroid/database/Cursor;
    :cond_3
    const/4 v11, 0x0

    .line 848
    .local v11, showAddContact:Z
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mNumber:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/mms/data/ContactList;->getByNumbers(Ljava/lang/String;ZZ)Lcom/android/mms/data/ContactList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactList:Lcom/android/mms/data/ContactList;

    .line 849
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactList:Lcom/android/mms/data/ContactList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/mms/data/Contact;

    .line 850
    .local v6, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->existsInDatabase()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static {v6}, Lcom/android/mms/ui/MessageUtils;->canAddToContacts(Lcom/android/mms/data/Contact;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 851
    const/4 v11, 0x1

    .line 852
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "not in contact[number:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",name:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v6}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    .end local v6           #contact:Lcom/android/mms/data/Contact;
    :cond_5
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_b

    const/4 v10, 0x1

    .line 857
    .local v10, menuAddExist:Z
    :goto_0
    if-eqz v11, :cond_c

    .line 858
    if-nez v10, :cond_6

    .line 859
    const/4 v0, 0x0

    const/4 v1, 0x5

    const/4 v2, 0x1

    const v3, 0x7f0b0293

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 864
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isSms()Z

    move-result v0

    if-eqz v0, :cond_7

    const/4 v0, 0x7

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->isRecipientCallable()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 865
    const/4 v0, 0x0

    const/4 v1, 0x7

    const/4 v2, 0x0

    const v3, 0x7f0b0234

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0200b4

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0b0234

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    move-result-object v9

    .line 868
    .local v9, item:Landroid/view/MenuItem;
    const/4 v0, 0x2

    invoke-interface {v9, v0}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 875
    .end local v9           #item:Landroid/view/MenuItem;
    :cond_7
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_9

    .line 876
    iget-boolean v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z

    if-eqz v0, :cond_d

    .line 877
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 878
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 880
    :cond_8
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_9

    .line 881
    const/4 v0, 0x0

    const/16 v1, 0xa

    const/4 v2, 0x0

    const v3, 0x7f0b02d7

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 892
    :cond_9
    :goto_2
    const/4 v0, 0x1

    return v0

    .line 838
    .end local v8           #i$:Ljava/util/Iterator;
    .end local v10           #menuAddExist:Z
    .end local v11           #showAddContact:Z
    .restart local v7       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v7, :cond_a

    .line 839
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 838
    :cond_a
    throw v0

    .line 856
    .end local v7           #cursor:Landroid/database/Cursor;
    .restart local v8       #i$:Ljava/util/Iterator;
    .restart local v11       #showAddContact:Z
    :cond_b
    const/4 v10, 0x0

    goto :goto_0

    .line 862
    .restart local v10       #menuAddExist:Z
    :cond_c
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    goto :goto_1

    .line 884
    :cond_d
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 885
    const/16 v0, 0xa

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 887
    :cond_e
    const/16 v0, 0x9

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-nez v0, :cond_9

    .line 888
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/4 v2, 0x0

    const v3, 0x7f0b02d6

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onResume()V
    .locals 13

    .prologue
    .line 358
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 359
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume,msgType:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    if-nez v0, :cond_1

    .line 361
    const-string v0, "Mms/FolderModeSmsViewer"

    const-string v1, "smsId is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    :cond_0
    :goto_0
    return-void

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mGetSimInfoRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 366
    sget-object v2, Lcom/android/mms/ui/FolderModeSmsViewer;->SMS_PROJECTION:[Ljava/lang/String;

    .line 367
    .local v2, projection:[Ljava/lang/String;
    const/4 v8, 0x0

    .line 368
    .local v8, cursor:Landroid/database/Cursor;
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    .line 369
    sget-object v2, Lcom/android/mms/ui/FolderModeSmsViewer;->SMS_PROJECTION:[Ljava/lang/String;

    .line 370
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 403
    :cond_2
    :goto_1
    if-eqz v8, :cond_3

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_6

    .line 404
    :cond_3
    const-string v0, "Mms/FolderModeSmsViewer"

    const-string v1, "cursor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 480
    if-eqz v8, :cond_0

    .line 481
    :goto_2
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 376
    :cond_4
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    .line 378
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 379
    .local v6, actionBar:Landroid/app/ActionBar;
    const v0, 0x7f0b00f2

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 380
    sget-object v2, Lcom/android/mms/ui/FolderModeSmsViewer;->WAPPUSH_PROJECTION:[Ljava/lang/String;

    .line 381
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 387
    goto :goto_1

    .end local v6           #actionBar:Landroid/app/ActionBar;
    :cond_5
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 389
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v6

    .line 390
    .restart local v6       #actionBar:Landroid/app/ActionBar;
    const v0, 0x7f0b00f3

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 391
    sget-object v2, Lcom/android/mms/ui/FolderModeSmsViewer;->CB_PROJECTION:[Ljava/lang/String;

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->searchUri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    const/4 v4, 0x1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 393
    .local v3, selection:Ljava/lang/String;
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "query cb selection = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/mms/ui/FolderModeSmsViewer;->CB_URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    goto/16 :goto_1

    .line 407
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #actionBar:Landroid/app/ActionBar;
    :cond_6
    :try_start_1
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cursor count = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v8}, Landroid/database/Cursor;->getCount()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    .line 409
    const/4 v0, 0x2

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    .line 410
    const/4 v0, 0x3

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    .line 412
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_c

    .line 413
    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I

    .line 417
    :goto_3
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    .line 419
    :cond_7
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->getRecipientIds(I)Ljava/lang/String;

    move-result-object v10

    .line 420
    .local v10, recipientIds:Ljava/lang/String;
    invoke-direct {p0, v10}, Lcom/android/mms/ui/FolderModeSmsViewer;->getContactNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    .line 424
    .end local v10           #recipientIds:Ljava/lang/String;
    :goto_4
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reciNumber = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 426
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSmsSentDate:J

    .line 428
    :cond_8
    const-string v11, ""

    .line 429
    .local v11, showNumber:Ljava/lang/String;
    const-string v9, ""

    .line 430
    .local v9, reDate:Ljava/lang/String;
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciDateLong:Ljava/lang/Long;

    .line 431
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciDate:Ljava/lang/String;

    .line 432
    const/4 v0, 0x1

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    const/4 v4, 0x1

    invoke-static {p0, v0, v1, v4}, Lcom/android/mms/ui/MessageUtils;->formatTimeStampString(Landroid/content/Context;JZ)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciTime:Ljava/lang/String;

    .line 433
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_f

    .line 434
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0083

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 435
    const v0, 0x7f0b0037

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciDate:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 440
    :goto_5
    const/4 v0, 0x4

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->threadId:I

    .line 441
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->status:I

    .line 442
    const-string v0, "Mms/FolderModeSmsViewer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reciNumber = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n reciDate = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciDate:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\n reciBody = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    .line 444
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_10

    const/4 v0, 0x1

    :goto_6
    iput-boolean v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z

    .line 445
    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mServiceCenter:Ljava/lang/String;

    .line 454
    :cond_a
    :goto_7
    const/4 v0, 0x7

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgid:J

    .line 455
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->recipent:Landroid/widget/TextView;

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 456
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->date:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 459
    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 460
    .local v7, buf:Landroid/text/SpannableStringBuilder;
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 461
    invoke-static {}, Lcom/android/mms/util/SmileyParser2;->getInstance()Lcom/android/mms/util/SmileyParser2;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/mms/util/SmileyParser2;->addSmileySpans(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 464
    :cond_b
    invoke-direct {p0, v7}, Lcom/android/mms/ui/FolderModeSmsViewer;->setHighlightText(Landroid/text/SpannableStringBuilder;)V

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->textContent:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    invoke-direct {p0}, Lcom/android/mms/ui/FolderModeSmsViewer;->formatSimStatus()V

    .line 473
    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLockedInd:Landroid/widget/ImageView;

    iget-boolean v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z

    if-eqz v0, :cond_15

    const/4 v0, 0x0

    :goto_8
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 476
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->markSmsRead(I)V

    .line 477
    const-string v0, "Mms/FolderModeSmsViewer"

    const-string v1, " markSmsRead(msgType)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 480
    if-eqz v8, :cond_0

    goto/16 :goto_2

    .line 415
    .end local v7           #buf:Landroid/text/SpannableStringBuilder;
    .end local v9           #reDate:Ljava/lang/String;
    .end local v11           #showNumber:Ljava/lang/String;
    :cond_c
    const/16 v0, 0x9

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    iput v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimId:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_3

    .line 480
    :catchall_0
    move-exception v0

    if-eqz v8, :cond_d

    .line 481
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 480
    :cond_d
    throw v0

    .line 422
    :cond_e
    const/4 v0, 0x0

    :try_start_2
    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FolderModeSmsViewer;->getContactNumberByNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    goto/16 :goto_4

    .line 437
    .restart local v9       #reDate:Ljava/lang/String;
    .restart local v11       #showNumber:Ljava/lang/String;
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f0b0084

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 438
    const v0, 0x7f0b0036

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciDate:Ljava/lang/String;

    aput-object v5, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_5

    .line 444
    :cond_10
    const/4 v0, 0x0

    goto/16 :goto_6

    .line 446
    :cond_11
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    .line 447
    const/4 v0, 0x6

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 448
    .local v12, url:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciBody:Ljava/lang/String;

    .line 449
    const/16 v0, 0x8

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mServiceCenter:Ljava/lang/String;

    .line 450
    const/16 v0, 0xa

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_12

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z

    goto/16 :goto_7

    :cond_12
    const/4 v0, 0x0

    goto :goto_9

    .line 451
    .end local v12           #url:Ljava/lang/String;
    :cond_13
    iget v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_a

    .line 452
    const/4 v0, 0x5

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-lez v0, :cond_14

    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mLocked:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_7

    :cond_14
    const/4 v0, 0x0

    goto :goto_a

    .line 473
    .restart local v7       #buf:Landroid/text/SpannableStringBuilder;
    :cond_15
    const/16 v0, 0x8

    goto/16 :goto_8
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 335
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 336
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 337
    const-string v4, "message_font_size"

    const/high16 v5, 0x4190

    invoke-static {p0, v4, v5}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v3

    .line 338
    .local v3, textSize:F
    invoke-virtual {p0, v3}, Lcom/android/mms/ui/FolderModeSmsViewer;->setTextSize(F)V

    .line 340
    .end local v3           #textSize:F
    :cond_0
    iget-object v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    if-eqz v4, :cond_1

    .line 341
    iget-object v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMmsTextSizeAdjustPlugin:Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;

    invoke-interface {v4}, Lcom/mediatek/mms/ext/IMmsTextSizeAdjust;->refresh()V

    .line 343
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 344
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v6}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 345
    invoke-static {p0}, Lcom/android/mms/data/Contact;->addListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 346
    invoke-static {v6}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 348
    .local v1, dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    if-eqz v1, :cond_2

    .line 349
    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsDialogNotify;->closeMsgDialog()V

    .line 352
    :cond_2
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.SIM_INDICATOR_STATE_CHANGED"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 353
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 354
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1736
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1737
    invoke-static {p0}, Lcom/android/mms/data/Contact;->removeListener(Lcom/android/mms/data/Contact$UpdateListener;)V

    .line 1738
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mSimReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1739
    return-void
.end method

.method public onUpdate(Lcom/android/mms/data/Contact;)V
    .locals 5
    .parameter "updated"

    .prologue
    .line 1775
    const-string v2, "Mms/FolderModeSmsViewer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpdate,update number and name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1776
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mContactNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1777
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1778
    invoke-virtual {p1}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    .line 1779
    const-string v0, ""

    .line 1780
    .local v0, showNumber:Ljava/lang/String;
    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->mMsgBox:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->msgType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    .line 1781
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0083

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1785
    :goto_0
    move-object v1, v0

    .line 1786
    .local v1, showString:Ljava/lang/String;
    new-instance v2, Lcom/android/mms/ui/FolderModeSmsViewer$18;

    invoke-direct {v2, p0, v1}, Lcom/android/mms/ui/FolderModeSmsViewer$18;-><init>(Lcom/android/mms/ui/FolderModeSmsViewer;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1793
    .end local v0           #showNumber:Ljava/lang/String;
    .end local v1           #showString:Ljava/lang/String;
    :cond_1
    return-void

    .line 1783
    .restart local v0       #showNumber:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const v3, 0x7f0b0084

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->reciNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setTextSize(F)V
    .locals 1
    .parameter "size"

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->textContent:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 1807
    iget-object v0, p0, Lcom/android/mms/ui/FolderModeSmsViewer;->textContent:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 1809
    :cond_0
    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1798
    :try_start_0
    invoke-super {p0, p1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1803
    :goto_0
    return-void

    .line 1799
    :catch_0
    move-exception v0

    .line 1800
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const/4 v2, 0x0

    invoke-static {p1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v1

    .line 1801
    .local v1, mChooserIntent:Landroid/content/Intent;
    invoke-super {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

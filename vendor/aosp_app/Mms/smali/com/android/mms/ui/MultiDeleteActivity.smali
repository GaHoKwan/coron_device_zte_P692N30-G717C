.class public Lcom/android/mms/ui/MultiDeleteActivity;
.super Landroid/app/ListActivity;
.source "MultiDeleteActivity.java"

# interfaces
.implements Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;
.implements Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;
.implements Lcom/mediatek/mms/ipmessage/INotificationsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;,
        Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;,
        Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;,
        Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;
    }
.end annotation


# static fields
.field private static final DELETE_MESSAGE_TOKEN:I = 0x25e4

.field public static final FINISH_ACTIVITY:I = 0x3ed

.field public static final FORWARD_MESSAGE:Ljava/lang/String; = "forwarded_message"

.field private static final FOR_MULTIDELETE:Ljava/lang/String; = "ForMultiDelete"

.field public static final HIDE_DOWNLOAD_PROGRESS_BAR:I = 0x3e9

.field public static final IPMSG_IDS:Ljava/lang/String; = "forward_ipmsg_ids"

.field public static final IPMSG_TAG:Ljava/lang/String; = "Mms/ipmsg/MultiDeleteActivity"

.field private static final MESSAGE_LIST_QUERY_TOKEN:I = 0x2537

.field public static final MESSAGE_STATUS_IMPORTANT:I = 0x1

.field public static final MESSAGE_STATUS_NOT_IMPORTANT:I = 0x0

.field private static final REQUEST_CODE_FORWARD:I = 0x3e8

.field public static final SHOW_DOWNLOAD_PROGRESS_BAR:I = 0x3e8

.field public static final TAG:Ljava/lang/String; = "Mms/MultiDeleteActivity"

.field public static final UPDATE_SELECTED_COUNT:I = 0x3ea


# instance fields
.field private mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

.field private mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

.field private mCancelSelect:Landroid/view/MenuItem;

.field private mChatSelect:Landroid/widget/Button;

.field private mConversation:Lcom/android/mms/data/Conversation;

.field private final mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

.field private mDelete:Landroid/view/MenuItem;

.field private mDeleteRunningCount:I

.field private mDownloadDialog:Landroid/app/ProgressDialog;

.field private mDownloadedIpMessageStepCounter:I

.field private mDownloadedIpMessageStepCounterFail:I

.field private mDownloadedIpMessageStepCounterSuccess:I

.field private mForwardMsgIds:Ljava/lang/String;

.field private mImportantCount:I

.field private mIsLockOrUnlockFinish:Z

.field private mIsSelectedAll:Z

.field private final mMessageListItemHandler:Landroid/os/Handler;

.field private mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

.field private mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

.field private mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

.field private mMmsNotificationCount:I

.field private mMmsNotificationHasRun:Z

.field public mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

.field private mMsgListView:Landroid/widget/ListView;

.field private mOP01Plugin:Z

.field private mPossiblePendingNotification:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSelectActionMode:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

.field private mSelectAll:Landroid/view/MenuItem;

.field private mSelectMode:Landroid/view/ActionMode;

.field private mSelectedIpAttachMessageItem:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/android/mms/ui/MessageItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedIpMessageIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedLockedMsgIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mShowLastestMsg:Z

.field private mTempActionMode:Landroid/view/ActionMode;

.field private mTempActionModeMenu:Landroid/view/MenuItem;

.field private mThreadCountManager:Lcom/android/mms/util/ThreadCountManager;

.field private mThreadId:J

.field private mUnDownloadedIpMessageCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 166
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 186
    invoke-static {}, Lcom/android/mms/util/ThreadCountManager;->getInstance()Lcom/android/mms/util/ThreadCountManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mThreadCountManager:Lcom/android/mms/util/ThreadCountManager;

    .line 193
    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I

    .line 195
    iput-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    .line 212
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;

    .line 213
    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    .line 214
    iput-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z

    .line 215
    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    .line 221
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpAttachMessageItem:Ljava/util/HashSet;

    .line 224
    iput-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mOP01Plugin:Z

    .line 226
    iput-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 227
    iput-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

    .line 229
    iput-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mShowLastestMsg:Z

    .line 231
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsLockOrUnlockFinish:Z

    .line 887
    new-instance v0, Lcom/android/mms/ui/MultiDeleteActivity$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultiDeleteActivity$4;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;

    .line 1178
    new-instance v0, Lcom/android/mms/ui/MultiDeleteActivity$5;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/MultiDeleteActivity$5;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    .line 1220
    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    .line 1786
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/data/Conversation;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/mms/ui/MultiDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I

    return p1
.end method

.method static synthetic access$1008(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I

    return v0
.end method

.method static synthetic access$1010(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDeleteRunningCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/data/Conversation;)Lcom/android/mms/data/Conversation;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsMultiDelete;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    return v0
.end method

.method static synthetic access$1208(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    return v0
.end method

.method static synthetic access$1210(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    return v0
.end method

.method static synthetic access$1308(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    return v0
.end method

.method static synthetic access$1310(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    return v0
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    return v0
.end method

.method static synthetic access$1402(Lcom/android/mms/ui/MultiDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    return p1
.end method

.method static synthetic access$1408(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    return v0
.end method

.method static synthetic access$1410(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    return v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpAttachMessageItem:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/MultiDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->updateSelectCount()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsCompose;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/mms/ui/MultiDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I

    return p1
.end method

.method static synthetic access$2102(Lcom/android/mms/ui/MultiDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterSuccess:I

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterFail:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/mms/ui/MultiDeleteActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterFail:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/MultiDeleteActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->getSelectedCount()I

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionModeMenu:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mTempActionModeMenu:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectActionMode:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/MultiDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsLockOrUnlockFinish:Z

    return v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->startMsgListQuery()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/mms/ui/MultiDeleteActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 166
    iget-wide v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J

    return-wide v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/MultiDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mShowLastestMsg:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mShowLastestMsg:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->updateSendFailedNotification()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/util/ThreadCountManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mThreadCountManager:Lcom/android/mms/util/ThreadCountManager;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mPossiblePendingNotification:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mChatSelect:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/widget/Button;)Landroid/widget/Button;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mChatSelect:Landroid/widget/Button;

    return-object p1
.end method

.method static synthetic access$3600(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->setSelectAll()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->setDeselectAll()V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/MultiDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/MultiDeleteActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-boolean p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/MultiDeleteActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/MultiDeleteActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->selectedMsgHasLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 166
    invoke-direct/range {p0 .. p5}, Lcom/android/mms/ui/MultiDeleteActivity;->confirmMultiDeleteMsgDialog(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mForwardMsgIds:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4302(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mForwardMsgIds:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/mms/ui/MultiDeleteActivity;[J[JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 166
    invoke-direct {p0, p1, p2, p3}, Lcom/android/mms/ui/MultiDeleteActivity;->markAsImportant([J[JZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/MultiDeleteActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 166
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->dismissProgressIndication()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity;->forwardOneMms(Lcom/android/mms/ui/MessageItem;)V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/util/ArrayList;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity;->forwardMessage(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/MultiDeleteActivity;)Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/content/Context;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/MultiDeleteActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity;->markCheckedState(Z)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity;->showReachLimitDialog(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/util/Map$Entry;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 166
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity;->isMsgLocked(Ljava/util/Map$Entry;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/mms/ui/MultiDeleteActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 166
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;

    return-object v0
.end method

.method private checkPendingNotification()V
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mPossiblePendingNotification:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 617
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->markAsRead()V

    .line 618
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mPossiblePendingNotification:Z

    .line 620
    :cond_0
    return-void
.end method

.method private confirmMultiDeleteMsgDialog(Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;ZZLjava/lang/Long;Landroid/content/Context;)V
    .locals 14
    .parameter "listener"
    .parameter "hasLockedMessages"
    .parameter "deleteThread"
    .parameter "threadIds"
    .parameter "context"

    .prologue
    .line 679
    const v1, 0x7f04001f

    const/4 v2, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 680
    .local v9, contents:Landroid/view/View;
    const v1, 0x7f0f0087

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 681
    .local v12, msg:Landroid/widget/TextView;
    if-nez p3, :cond_5

    .line 682
    const v1, 0x7f0b0075

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 695
    :goto_0
    const v1, 0x7f0f0088

    invoke-virtual {v9, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 696
    .local v8, checkbox:Landroid/widget/CheckBox;
    if-eqz p2, :cond_7

    .line 698
    invoke-static/range {p5 .. p5}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_0

    .line 699
    invoke-static/range {p5 .. p5}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 702
    :cond_0
    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->setDeleteLockedMessage(Z)V

    .line 703
    new-instance v1, Lcom/android/mms/ui/MultiDeleteActivity$2;

    invoke-direct {v1, p0, p1, v8}, Lcom/android/mms/ui/MultiDeleteActivity$2;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 712
    :goto_1
    const/4 v10, 0x0

    .line 713
    .local v10, cursor:Landroid/database/Cursor;
    const/4 v13, 0x0

    .line 714
    .local v13, smsId:I
    const/4 v11, 0x0

    .line 715
    .local v11, mmsId:I
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max(_id)"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 717
    if-eqz v10, :cond_2

    .line 719
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 720
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 721
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmMultiDeleteMsgDialog max SMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 724
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 725
    const/4 v10, 0x0

    .line 728
    :cond_2
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "max(_id)"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 730
    if-eqz v10, :cond_4

    .line 732
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 733
    const/4 v1, 0x0

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 734
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmMultiDeleteMsgDialog max MMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 737
    :cond_3
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 738
    const/4 v10, 0x0

    .line 741
    :cond_4
    invoke-virtual {p1, v11, v13}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->setMaxMsgId(II)V

    .line 743
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 744
    .local v7, builder:Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b02b6

    invoke-virtual {v7, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1010355

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b02bf

    invoke-virtual {v1, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0296

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 747
    return-void

    .line 684
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #checkbox:Landroid/widget/CheckBox;
    .end local v10           #cursor:Landroid/database/Cursor;
    .end local v11           #mmsId:I
    .end local v13           #smsId:I
    :cond_5
    move/from16 v0, p3

    invoke-virtual {p1, v0}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->setDeleteThread(Z)V

    .line 685
    invoke-virtual/range {p1 .. p2}, Lcom/android/mms/ui/MultiDeleteActivity$MultiDeleteMsgListener;->setHasLockedMsg(Z)V

    .line 686
    if-nez p4, :cond_6

    .line 687
    const v1, 0x7f0b02b9

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_0

    .line 690
    :cond_6
    invoke-virtual/range {p5 .. p5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    const/4 v3, 0x1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 709
    .restart local v8       #checkbox:Landroid/widget/CheckBox;
    :cond_7
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 724
    .restart local v10       #cursor:Landroid/database/Cursor;
    .restart local v11       #mmsId:I
    .restart local v13       #smsId:I
    :catchall_0
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 725
    const/4 v10, 0x0

    .line 724
    throw v1

    .line 737
    :catchall_1
    move-exception v1

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 738
    const/4 v10, 0x0

    .line 737
    throw v1
.end method

.method private createIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 1963
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/MultiDeleteActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1964
    .local v0, intent:Landroid/content/Intent;
    return-object v0
.end method

.method private dismissProgressIndication()V
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2074
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2076
    :cond_0
    return-void
.end method

.method private forwardMessage(Ljava/util/ArrayList;)V
    .locals 21
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1867
    .local p1, smsList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-gtz v18, :cond_1

    .line 1868
    new-instance v18, Lcom/android/mms/ui/MultiDeleteActivity$13;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity$13;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1960
    :cond_0
    :goto_0
    return-void

    .line 1882
    :cond_1
    invoke-static/range {p1 .. p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1884
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMaxTextLimit()I

    move-result v9

    .line 1885
    .local v9, maxLength:I
    new-instance v16, Ljava/lang/StringBuffer;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuffer;-><init>()V

    .line 1886
    .local v16, strbuf:Ljava/lang/StringBuffer;
    const/16 v17, 0x0

    .line 1887
    .local v17, tempbuf:Ljava/lang/String;
    const/4 v14, 0x0

    .line 1888
    .local v14, smsBody:Ljava/lang/String;
    const/4 v13, 0x0

    .line 1891
    .local v13, reachLimitFlag:Z
    invoke-static/range {p0 .. p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v12

    .line 1892
    .local v12, prefs:Landroid/content/SharedPreferences;
    const-string v18, "pref_key_forward_with_sender"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v12, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v15

    .line 1893
    .local v15, smsForwardWithSender:Z
    const-string v18, "Mms/MultiDeleteActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "forwardMessage(): SMS Forward With Sender ?= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    const/4 v5, 0x0

    .local v5, i:I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v5, v0, :cond_4

    .line 1897
    move-object/from16 v0, p1

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Long;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 1899
    .local v7, mMmsId:J
    const-wide/16 v18, 0x0

    cmp-long v18, v7, v18

    if-lez v18, :cond_3

    .line 1900
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v8}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->getBody(J)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1902
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mOP01Plugin:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2

    if-eqz v15, :cond_2

    .line 1903
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v8}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->getBoxType(J)I

    move-result v2

    .line 1904
    .local v2, boxType:I
    const/16 v18, 0x1

    move/from16 v0, v18

    if-ne v2, v0, :cond_2

    .line 1905
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1906
    const v18, 0x7f0b00b1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1907
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-interface {v0, v7, v8}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->getAddress(J)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v3

    .line 1908
    .local v3, contact:Lcom/android/mms/data/Contact;
    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual {v3}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v19

    const-string v20, ""

    invoke-static/range {v18 .. v20}, Lcom/android/mms/data/Contact;->formatNameAndNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 1909
    .local v11, number:Ljava/lang/String;
    const-string v18, "Mms/MultiDeleteActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "forwardMessage(): Contact\'s name and number="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1910
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1913
    .end local v2           #boxType:I
    .end local v3           #contact:Lcom/android/mms/data/Contact;
    .end local v11           #number:Ljava/lang/String;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v5, v0, :cond_3

    .line 1914
    const-string v18, "\n"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1918
    :cond_3
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v18

    move/from16 v0, v18

    if-le v0, v9, :cond_5

    .line 1919
    const/4 v13, 0x1

    .line 1921
    if-eqz v17, :cond_4

    const-string v18, "\n"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1922
    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v19

    add-int/lit8 v19, v19, -0x1

    invoke-virtual/range {v17 .. v19}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    .line 1932
    .end local v7           #mMmsId:J
    :cond_4
    if-eqz v13, :cond_6

    .line 1933
    move-object/from16 v4, v17

    .line 1934
    .local v4, contentbuf:Ljava/lang/String;
    new-instance v18, Lcom/android/mms/ui/MultiDeleteActivity$14;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v4}, Lcom/android/mms/ui/MultiDeleteActivity$14;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)V

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 1927
    .end local v4           #contentbuf:Ljava/lang/String;
    .restart local v7       #mMmsId:J
    :cond_5
    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v17

    .line 1929
    const-string v18, "Mms/MultiDeleteActivity"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "forwardMessage  strbuf.length()="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuffer;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "  tempbuf.length() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1896
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    .line 1941
    .end local v7           #mMmsId:J
    :cond_6
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity;->createIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v6

    .line 1942
    .local v6, intent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 1943
    const-string v18, "exit_on_sent"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1945
    :cond_7
    const-string v18, "forwarded_message"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1946
    const-string v18, "sms_body"

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1954
    const-string v18, "com.android.mms.ui.ForwardMessageActivity"

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 1955
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1956
    invoke-static {}, Lcom/android/mms/MmsConfig;->isNeedExitComposerAfterForward()Z

    move-result v18

    if-nez v18, :cond_0

    .line 1957
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    const/16 v19, 0x3ed

    invoke-virtual/range {v18 .. v19}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v10

    .line 1958
    .local v10, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method private forwardOneMms(Lcom/android/mms/ui/MessageItem;)V
    .locals 4
    .parameter "msgItem"

    .prologue
    .line 1804
    invoke-virtual {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;

    move-result-object v0

    new-instance v1, Lcom/android/mms/ui/MultiDeleteActivity$11;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity$11;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V

    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$12;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity$12;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V

    const v3, 0x7f0b0110

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/mms/ui/AsyncDialog;->runAsync(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V

    .line 1863
    return-void
.end method

.method private getSelectedCount()I
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v0

    return v0
.end method

.method private initActivityState(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x1

    .line 439
    if-eqz p1, :cond_0

    .line 440
    const-string v2, "is_all_selected"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 441
    .local v0, selectedAll:Z
    if-eqz v0, :cond_1

    .line 442
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v4, v3}, Lcom/android/mms/ui/MessageListAdapter;->setItemsValue(Z[J)V

    .line 451
    .end local v0           #selectedAll:Z
    :cond_0
    :goto_0
    return-void

    .line 446
    .restart local v0       #selectedAll:Z
    :cond_1
    const-string v2, "select_list"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v1

    .line 447
    .local v1, selectedItems:[J
    if-eqz v1, :cond_0

    .line 448
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v2, v4, v1}, Lcom/android/mms/ui/MessageListAdapter;->setItemsValue(Z[J)V

    goto :goto_0
.end method

.method private initMessageList()V
    .locals 10

    .prologue
    const/4 v2, 0x0

    const/4 v9, 0x0

    const/4 v4, 0x1

    .line 484
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_0

    .line 505
    :goto_0
    return-void

    .line 488
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "highlight"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 489
    .local v7, highlightString:Ljava/lang/String;
    if-nez v7, :cond_1

    move-object v5, v2

    .line 493
    .local v5, highlight:Ljava/util/regex/Pattern;
    :goto_1
    new-instance v0, Lcom/android/mms/ui/MessageListAdapter;

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/mms/ui/MessageListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Landroid/widget/ListView;ZLjava/util/regex/Pattern;Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    .line 494
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iput-boolean v4, v0, Lcom/android/mms/ui/MessageListAdapter;->mIsDeleteMode:Z

    .line 495
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setMsgListItemHandler(Landroid/os/Handler;)V

    .line 496
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDataSetChangedListener:Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 498
    invoke-static {p0}, Lcom/android/mms/ui/MmsPreferenceActivity;->getIsGroupMmsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v0}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v4, :cond_2

    move v8, v4

    .line 500
    .local v8, isGroupMms:Z
    :goto_2
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v8}, Lcom/android/mms/ui/MessageListAdapter;->setIsGroupConversation(Z)V

    .line 502
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 503
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 504
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 489
    .end local v5           #highlight:Ljava/util/regex/Pattern;
    .end local v8           #isGroupMms:Z
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\\b"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v7}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v5

    goto :goto_1

    .restart local v5       #highlight:Ljava/util/regex/Pattern;
    :cond_2
    move v8, v9

    .line 498
    goto :goto_2
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 314
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    .line 317
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mOP01Plugin:Z

    .line 318
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsDeleteAndForwardPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;->init(Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForwardHost;)V

    .line 328
    :try_start_1
    const-class v1, Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsCompose;

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 330
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_1

    .line 336
    :goto_1
    :try_start_2
    const-class v1, Lcom/mediatek/mms/ext/IMmsMultiDelete;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsMultiDelete;

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

    .line 338
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsMultiDeletePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/util/AndroidException; {:try_start_2 .. :try_end_2} :catch_2

    .line 343
    :goto_2
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsMultiDelete;->init(Lcom/mediatek/mms/ext/IMmsMultiDeleteHost;)V

    .line 345
    return-void

    .line 319
    :catch_0
    move-exception v0

    .line 320
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsMultiDeleteAndForwardImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    .line 321
    iput-boolean v4, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mOP01Plugin:Z

    .line 322
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsDeleteAndForwardPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsDeleteAndForwardPlugin:Lcom/mediatek/mms/ext/IMmsMultiDeleteAndForward;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 331
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_1
    move-exception v0

    .line 332
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsComposeImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsComposeImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    .line 333
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsComposePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsComposePlugin:Lcom/mediatek/mms/ext/IMmsCompose;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 339
    .end local v0           #e:Landroid/util/AndroidException;
    :catch_2
    move-exception v0

    .line 340
    .restart local v0       #e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsMultiDeleteImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

    .line 341
    const-string v1, "Mms/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsMultiDeletePlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsMultiDeletePlugin:Lcom/mediatek/mms/ext/IMmsMultiDelete;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private isMsgLocked(Ljava/util/Map$Entry;)Z
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const/4 v6, 0x0

    .line 663
    if-nez p1, :cond_0

    move v5, v6

    .line 673
    :goto_0
    return v5

    .line 666
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 667
    .local v2, mMmsId:J
    const/4 v1, 0x0

    .line 668
    .local v1, m:Lcom/android/mms/ui/MessageItem;
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedLockedMsgIds:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    .line 669
    .local v4, selectedMsgIds:Ljava/lang/Long;
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v5, v2, v7

    if-nez v5, :cond_1

    .line 670
    const/4 v5, 0x1

    goto :goto_0

    .end local v4           #selectedMsgIds:Ljava/lang/Long;
    :cond_2
    move v5, v6

    .line 673
    goto :goto_0
.end method

.method private markAsImportant([J[JZ)V
    .locals 10
    .parameter "smsIds"
    .parameter "mmsIds"
    .parameter "important"

    .prologue
    const/4 v0, 0x1

    const/4 v8, 0x0

    .line 1549
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->showProgressIndication()V

    .line 1550
    iput-boolean v8, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsLockOrUnlockFinish:Z

    .line 1551
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4, v0}, Landroid/content/ContentValues;-><init>(I)V

    .line 1552
    .local v4, values:Landroid/content/ContentValues;
    const-string v1, "locked"

    if-eqz p3, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1553
    new-instance v9, Ljava/lang/Thread;

    new-instance v0, Lcom/android/mms/ui/MultiDeleteActivity$6;

    move-object v1, p0

    move-object v2, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/mms/ui/MultiDeleteActivity$6;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;[JZLandroid/content/ContentValues;[J)V

    invoke-direct {v9, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v9}, Ljava/lang/Thread;->start()V

    .line 1594
    if-eqz p1, :cond_1

    array-length v7, p1

    .line 1595
    .local v7, smsIdsLen:I
    :goto_1
    if-eqz p2, :cond_2

    array-length v6, p2

    .line 1596
    .local v6, mmsIdsLen:I
    :goto_2
    if-eqz p3, :cond_3

    .line 1597
    add-int v0, v7, v6

    iput v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    .line 1601
    :goto_3
    return-void

    .end local v6           #mmsIdsLen:I
    .end local v7           #smsIdsLen:I
    :cond_0
    move v0, v8

    .line 1552
    goto :goto_0

    :cond_1
    move v7, v8

    .line 1594
    goto :goto_1

    .restart local v7       #smsIdsLen:I
    :cond_2
    move v6, v8

    .line 1595
    goto :goto_2

    .line 1599
    .restart local v6       #mmsIdsLen:I
    :cond_3
    iput v8, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    goto :goto_3
.end method

.method private markCheckedState(Z)V
    .locals 17
    .parameter "checkedState"

    .prologue
    .line 530
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v14, 0x0

    move/from16 v0, p1

    invoke-virtual {v13, v0, v14}, Lcom/android/mms/ui/MessageListAdapter;->setItemsValue(Z[J)V

    .line 531
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v13}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .line 532
    .local v1, count:I
    const/4 v6, 0x0

    .line 534
    .local v6, item:Lcom/android/mms/ui/MessageListItem;
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    .line 536
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 537
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    .line 538
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    .line 539
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpAttachMessageItem:Ljava/util/HashSet;

    invoke-virtual {v13}, Ljava/util/HashSet;->clear()V

    .line 541
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v13}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 542
    .local v7, iter:Ljava/util/Iterator;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v13}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 543
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_0

    .line 544
    const-string v13, "Mms/MultiDeleteActivity"

    const-string v14, "[markCheckedState] cursor is null"

    invoke-static {v13, v14}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 547
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v12

    .line 548
    .local v12, position:I
    const/4 v8, 0x0

    .line 549
    .local v8, locked:I
    if-eqz p1, :cond_4

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_4

    .line 551
    :cond_1
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 552
    .local v3, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 553
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Long;

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    .line 554
    .local v10, mMmsId:J
    const/4 v9, 0x0

    .line 555
    .local v9, m:Lcom/android/mms/ui/MessageItem;
    const-wide/16 v13, 0x0

    cmp-long v13, v10, v13

    if-gez v13, :cond_6

    .line 556
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v13, 0x16

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 557
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v13, 0x11

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const/16 v14, 0x82

    if-ne v13, v14, :cond_2

    .line 559
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationCount:I

    .line 564
    :cond_2
    :goto_1
    const/4 v13, 0x1

    if-ne v8, v13, :cond_3

    .line 565
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mImportantCount:I

    .line 568
    .end local v9           #m:Lcom/android/mms/ui/MessageItem;
    .end local v10           #mMmsId:J
    :cond_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_1

    .line 570
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_4
    invoke-interface {v2, v12}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 571
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    if-ge v4, v1, :cond_a

    .line 572
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v13, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #item:Lcom/android/mms/ui/MessageListItem;
    check-cast v6, Lcom/android/mms/ui/MessageListItem;

    .line 573
    .restart local v6       #item:Lcom/android/mms/ui/MessageListItem;
    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v13

    if-nez v13, :cond_7

    .line 571
    :cond_5
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 562
    .end local v4           #i:I
    .restart local v3       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v9       #m:Lcom/android/mms/ui/MessageItem;
    .restart local v10       #mMmsId:J
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v13, 0xa

    invoke-interface {v2, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    goto :goto_1

    .line 577
    .end local v3           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v9           #m:Lcom/android/mms/ui/MessageItem;
    .end local v10           #mMmsId:J
    .restart local v4       #i:I
    :cond_7
    if-eqz p1, :cond_8

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v13

    iget-wide v13, v13, Lcom/android/mms/ui/MessageItem;->mIpMessageId:J

    const-wide/16 v15, 0x0

    cmp-long v13, v13, v15

    if-lez v13, :cond_8

    .line 578
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpMessageIds:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v14

    iget-wide v14, v14, Lcom/android/mms/ui/MessageItem;->mMsgId:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_8
    if-eqz p1, :cond_9

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v13

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    if-eqz v13, :cond_9

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v13

    iget-object v13, v13, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    instance-of v13, v13, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    if-eqz v13, :cond_9

    .line 583
    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v13

    iget-object v5, v13, Lcom/android/mms/ui/MessageItem;->mIpMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;

    check-cast v5, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;

    .line 584
    .local v5, ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    invoke-virtual {v5}, Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;->isInboxMsgDownloalable()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 585
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    .line 586
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedIpAttachMessageItem:Ljava/util/HashSet;

    invoke-virtual {v6}, Lcom/android/mms/ui/MessageListItem;->getMessageItem()Lcom/android/mms/ui/MessageItem;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 589
    .end local v5           #ipAttachMessage:Lcom/mediatek/mms/ipmessage/message/IpAttachMessage;
    :cond_9
    move/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/android/mms/ui/MessageListItem;->setSelectedBackGroud(Z)V

    goto :goto_3

    .line 592
    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MultiDeleteActivity;->updateSelectCount()V

    goto/16 :goto_0
.end method

.method private selectedMsgHasLocked()Z
    .locals 11

    .prologue
    .line 631
    const/4 v5, 0x0

    .line 632
    .local v5, mHasLockedMsg:Z
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-nez v9, :cond_0

    .line 633
    const/4 v9, 0x0

    .line 659
    :goto_0
    return v9

    .line 635
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    iput-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedLockedMsgIds:Ljava/util/HashSet;

    .line 636
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 637
    .local v2, iter:Ljava/util/Iterator;
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v9}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 638
    .local v0, cursor:Landroid/database/Cursor;
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    move-result v8

    .line 639
    .local v8, position:I
    const/4 v3, 0x0

    .line 640
    .local v3, locked:I
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 642
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 643
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 644
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 645
    .local v6, mMmsId:J
    const/4 v4, 0x0

    .line 646
    .local v4, m:Lcom/android/mms/ui/MessageItem;
    const-wide/16 v9, 0x0

    cmp-long v9, v6, v9

    if-gez v9, :cond_4

    .line 647
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v9, 0x16

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    .line 651
    :goto_1
    const/4 v9, 0x1

    if-ne v3, v9, :cond_2

    .line 652
    const/4 v5, 0x1

    .line 653
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectedLockedMsgIds:Ljava/util/HashSet;

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v4           #m:Lcom/android/mms/ui/MessageItem;
    .end local v6           #mMmsId:J
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 658
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_3
    invoke-interface {v0, v8}, Landroid/database/Cursor;->moveToPosition(I)Z

    move v9, v5

    .line 659
    goto :goto_0

    .line 649
    .restart local v1       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v4       #m:Lcom/android/mms/ui/MessageItem;
    .restart local v6       #mMmsId:J
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v9, 0xa

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    goto :goto_1
.end method

.method private setDeselectAll()V
    .locals 1

    .prologue
    .line 1202
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v0

    if-lez v0, :cond_0

    .line 1203
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    .line 1204
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiDeleteActivity;->markCheckedState(Z)V

    .line 1205
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1206
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1209
    :cond_0
    return-void
.end method

.method private setSelectAll()V
    .locals 1

    .prologue
    .line 1192
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    if-nez v0, :cond_0

    .line 1193
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    .line 1194
    iget-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    invoke-direct {p0, v0}, Lcom/android/mms/ui/MultiDeleteActivity;->markCheckedState(Z)V

    .line 1195
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 1199
    :cond_0
    return-void
.end method

.method private setUpActionBar()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 473
    new-instance v1, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MultiDeleteActivity$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectActionMode:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    .line 474
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectActionMode:Lcom/android/mms/ui/MultiDeleteActivity$SelectActionMode;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mSelectMode:Landroid/view/ActionMode;

    .line 475
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 476
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowCustomEnabled(Z)V

    .line 477
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 478
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 479
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 480
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 481
    return-void
.end method

.method private showProgressIndication()V
    .locals 2

    .prologue
    .line 2063
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 2064
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 2065
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0b00ba

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 2066
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 2067
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2069
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 2070
    return-void
.end method

.method private showReachLimitDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "mcontent"

    .prologue
    .line 1968
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0b01e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b01e3

    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$15;

    invoke-direct {v2, p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity$15;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1991
    return-void
.end method

.method private startMsgListQuery()V
    .locals 5

    .prologue
    .line 509
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    const/16 v2, 0x2537

    invoke-virtual {v1, v2}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 511
    :try_start_0
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    new-instance v2, Lcom/android/mms/ui/MultiDeleteActivity$1;

    invoke-direct {v2, p0}, Lcom/android/mms/ui/MultiDeleteActivity$1;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;)V

    const-wide/16 v3, 0x32

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 527
    :goto_0
    return-void

    .line 524
    :catch_0
    move-exception v0

    .line 525
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0
.end method

.method private updateSelectCount()V
    .locals 8

    .prologue
    .line 1212
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->getSelectedCount()I

    move-result v0

    .line 1214
    .local v0, selectNum:I
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mChatSelect:Landroid/widget/Button;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0c0001

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v3, v4, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "     "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1218
    return-void
.end method

.method private updateSendFailedNotification()V
    .locals 5

    .prologue
    .line 872
    iget-object v2, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;

    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v0

    .line 873
    .local v0, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    .line 885
    :goto_0
    return-void

    .line 879
    :cond_0
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/mms/ui/MultiDeleteActivity$3;

    invoke-direct {v3, p0, v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity$3;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;J)V

    const-string v4, "updateSendFailedNotification"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method


# virtual methods
.method public deleteMassTextInHost([Ljava/lang/String;)V
    .locals 11
    .parameter "msgIds"

    .prologue
    const/4 v2, 0x0

    .line 2049
    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 2059
    :cond_0
    :goto_0
    return-void

    .line 2052
    :cond_1
    const-string v10, ""

    .line 2053
    .local v10, selection:Ljava/lang/String;
    move-object v6, p1

    .local v6, arr$:[Ljava/lang/String;
    array-length v9, v6

    .local v9, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v8, v6, v7

    .line 2054
    .local v8, id:Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 2053
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 2056
    .end local v8           #id:Ljava/lang/String;
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v10, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 2057
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    const/16 v1, 0x25e4

    sget-object v3, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ipmsg_id in (select ipmsg_id from sms where ipmsg_id < 0 and _id in ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "))"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/AsyncQueryHandler;->startDelete(ILjava/lang/Object;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_0
.end method

.method getAsyncDialog()Lcom/android/mms/ui/AsyncDialog;
    .locals 1

    .prologue
    .line 1797
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    if-nez v0, :cond_0

    .line 1798
    new-instance v0, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    invoke-direct {v0, p0, p0}, Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    .line 1800
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mAsyncDialog:Lcom/android/mms/ui/MultiDeleteActivity$ForwardMmsAsyncDialog;

    return-object v0
.end method

.method public notificationsReceived(Landroid/content/Intent;)V
    .locals 8
    .parameter "intent"

    .prologue
    .line 2014
    const-string v5, "Mms/MultiDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notificationsReceived(): intent = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2015
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2016
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2045
    :cond_0
    :goto_0
    return-void

    .line 2019
    :cond_1
    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActionTypeByAction(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 2042
    const-string v5, "Mms/MultiDeleteActivity"

    const-string v6, "ignore a event."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2021
    :pswitch_0
    const-string v5, "Mms/MultiDeleteActivity"

    const-string v6, "notificationsReceived(): download status notification."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2022
    const-string v5, "DownloadMsgId"

    const-wide/16 v6, 0x0

    invoke-virtual {p1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    .line 2023
    .local v3, msgId:J
    const-string v5, "DownloadMsgStatus"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2024
    .local v1, downloadStatus:I
    const-string v5, "Mms/MultiDeleteActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notificationsReceived(): downloadStatus = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2025
    iget v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I

    iget v6, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    if-lt v5, v6, :cond_2

    .line 2026
    const-string v5, "Mms/MultiDeleteActivity"

    const-string v6, "get more download status."

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2029
    :cond_2
    const/4 v5, 0x2

    if-ne v1, v5, :cond_4

    .line 2030
    iget v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I

    .line 2031
    iget v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterSuccess:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterSuccess:I

    .line 2036
    :cond_3
    :goto_1
    iget v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I

    iget v6, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mUnDownloadedIpMessageCount:I

    if-ne v5, v6, :cond_0

    .line 2037
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;

    const/16 v6, 0x3e9

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 2038
    .local v2, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMessageListItemHandler:Landroid/os/Handler;

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 2032
    .end local v2           #msg:Landroid/os/Message;
    :cond_4
    const/4 v5, -0x1

    if-ne v1, v5, :cond_3

    .line 2033
    iget v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounter:I

    .line 2034
    iget v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterFail:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mDownloadedIpMessageStepCounterFail:I

    goto :goto_1

    .line 2019
    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 9
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 1607
    const/4 v6, -0x1

    if-eq p2, v6, :cond_1

    .line 1641
    :cond_0
    :goto_0
    return-void

    .line 1610
    :cond_1
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 1612
    :sswitch_0
    const-string v6, "contactId"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1614
    .local v4, selectedContactsNums:Ljava/lang/String;
    const-string v6, "com.mediatek.contacts.list.pickdataresult"

    invoke-virtual {p3, v6}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 1616
    .local v0, contactsId:[J
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    if-eqz v0, :cond_0

    array-length v6, v0

    const/4 v7, 0x1

    if-lt v6, v7, :cond_0

    .line 1620
    :cond_2
    const-string v2, ""

    .line 1621
    .local v2, numbers:Ljava/lang/String;
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1622
    invoke-static {v0}, Lcom/android/mms/data/ContactList;->blockingGetByIds([J)Lcom/android/mms/data/ContactList;

    move-result-object v3

    .line 1623
    .local v3, selected:Lcom/android/mms/data/ContactList;
    invoke-virtual {v3}, Lcom/android/mms/data/ContactList;->serialize()Ljava/lang/String;

    move-result-object v2

    .line 1625
    .end local v3           #selected:Lcom/android/mms/data/ContactList;
    :cond_3
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_4

    move-object v1, v2

    .line 1627
    .local v1, mSelectContactsNumbers:Ljava/lang/String;
    :goto_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1628
    .local v5, testIntent:Landroid/content/Intent;
    const-string v6, "com.android.mms.ui.MultiForwardMessageActivity"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1629
    const-string v6, "MultiForwardMessageParamMessageIds"

    iget-object v7, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mForwardMsgIds:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1631
    const-string v6, "MultiForwardMessageParamThreadId"

    iget-wide v7, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 1633
    const-string v6, "MultiForwardMessageParamNumbers"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1635
    const/16 v6, 0x3e8

    invoke-virtual {p0, v5, v6}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .end local v1           #mSelectContactsNumbers:Ljava/lang/String;
    .end local v5           #testIntent:Landroid/content/Intent;
    :cond_4
    move-object v1, v4

    .line 1625
    goto :goto_1

    .line 1638
    .end local v0           #contactsId:[J
    .end local v2           #numbers:Ljava/lang/String;
    .end local v4           #selectedContactsNums:Ljava/lang/String;
    :sswitch_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1610
    :sswitch_data_0
    .sparse-switch
        0xd2 -> :sswitch_0
        0x3e8 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 307
    const-string v0, "Mms/MultiDeleteActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 309
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 237
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 239
    invoke-direct {p0, p0}, Lcom/android/mms/ui/MultiDeleteActivity;->initPlugin(Landroid/content/Context;)V

    .line 240
    const v1, 0x7f040049

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 241
    invoke-virtual {p0, v4}, Landroid/app/Activity;->setProgressBarVisibility(Z)V

    .line 244
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 245
    const-string v1, "Mms/ipmsg/MultiDeleteActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate(): is ip service ready ?= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/mms/ipmessage/ServiceManager;->serviceIsReady()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->serviceIsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    const-string v1, "Mms/ipmsg/MultiDeleteActivity"

    const-string v2, "Turn on ipmessage service by ConversationList."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/mms/ipmessage/ServiceManager;->startIpService()V

    .line 253
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "thread_id"

    invoke-virtual {v1, v2, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J

    .line 254
    iget-wide v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J

    cmp-long v1, v1, v6

    if-nez v1, :cond_1

    .line 255
    const-string v1, "TAG"

    const-string v2, "mThreadId can\'t be zero"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 258
    :cond_1
    iget-wide v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mThreadId:J

    invoke-static {p0, v1, v2, v4}, Lcom/android/mms/data/Conversation;->get(Landroid/content/Context;JZ)Lcom/android/mms/data/Conversation;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;

    .line 259
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    .line 260
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 261
    iget-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090015

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 262
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->initMessageList()V

    .line 263
    invoke-direct {p0, p1}, Lcom/android/mms/ui/MultiDeleteActivity;->initActivityState(Landroid/os/Bundle;)V

    .line 265
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->setUpActionBar()V

    .line 266
    new-instance v1, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mBackgroundQueryHandler:Lcom/android/mms/ui/MultiDeleteActivity$BackgroundQueryHandler;

    .line 268
    invoke-static {}, Lcom/android/mms/MmsConfig;->getAdjustFontSizeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 269
    const-string v1, "message_font_size"

    const/high16 v2, 0x4190

    invoke-static {p0, v1, v2}, Lcom/android/mms/ui/MessageUtils;->getPreferenceValueFloat(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    .line 272
    .local v0, textSize:F
    invoke-virtual {p0, v0}, Lcom/android/mms/ui/MultiDeleteActivity;->setTextSize(F)V

    .line 275
    .end local v0           #textSize:F
    :cond_2
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v1

    if-lez v1, :cond_3

    .line 276
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->addIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 278
    :cond_3
    iput-boolean v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mShowLastestMsg:Z

    .line 279
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1995
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_0

    .line 1996
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->removeIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 1999
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v0, :cond_1

    .line 2000
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/MessageListAdapter;->destroyTaskStack()V

    .line 2002
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2004
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/MessageListAdapter;->setOnDataSetChangedListener(Lcom/android/mms/ui/MessageListAdapter$OnDataSetChangedListener;)V

    .line 2007
    :cond_1
    invoke-static {p0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 2009
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 2010
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0
    .parameter "parent"
    .parameter "view"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 433
    if-eqz p2, :cond_0

    .line 434
    check-cast p2, Lcom/android/mms/ui/MessageListItem;

    .end local p2
    invoke-virtual {p2}, Lcom/android/mms/ui/MessageListItem;->onMessageListItemClick()V

    .line 436
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6
    .parameter "outState"

    .prologue
    .line 349
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 350
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v4, :cond_0

    .line 351
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v4

    iget-object v5, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v5}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v5

    if-ne v4, v5, :cond_1

    .line 352
    const-string v4, "is_all_selected"

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 371
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getSelectedNumber()I

    move-result v4

    new-array v0, v4, [J

    .line 357
    .local v0, checkedArray:[J
    iget-object v4, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 358
    .local v3, iter:Ljava/util/Iterator;
    const/4 v2, 0x0

    .line 359
    .local v2, i:I
    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 362
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 363
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v0, v2

    .line 364
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 367
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_3
    const-string v4, "select_list"

    invoke-virtual {p1, v4, v0}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 299
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 300
    iget-object v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mConversation:Lcom/android/mms/data/Conversation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/Conversation;->blockMarkAsRead(Z)V

    .line 301
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->startMsgListQuery()V

    .line 302
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mIsSelectedAll:Z

    .line 303
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/android/mms/ui/MultiDeleteActivity;->checkPendingNotification()V

    .line 605
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasFocus"

    .prologue
    .line 613
    return-void
.end method

.method public prepareToForwardMessage()V
    .locals 38

    .prologue
    .line 1644
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    .line 1645
    .local v33, mHasMms:Ljava/lang/Boolean;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 1646
    .local v32, iter:Ljava/util/Iterator;
    new-instance v37, Ljava/util/ArrayList;

    invoke-direct/range {v37 .. v37}, Ljava/util/ArrayList;-><init>()V

    .line 1647
    .local v37, selectSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    new-instance v36, Ljava/util/ArrayList;

    invoke-direct/range {v36 .. v36}, Ljava/util/ArrayList;-><init>()V

    .line 1648
    .local v36, selectMms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_0
    :goto_0
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1649
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 1650
    .local v28, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1651
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 1652
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "sms"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1653
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v37

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1655
    :cond_1
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "have  mms"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1656
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1657
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v33

    goto :goto_0

    .line 1661
    .end local v28           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :cond_2
    move-object/from16 v29, v37

    .line 1662
    .local v29, finalSelectSms:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {v33 .. v33}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z

    if-nez v3, :cond_c

    .line 1663
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MultiDeleteActivity;->getSelectedCount()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_b

    .line 1665
    const/4 v3, 0x0

    move-object/from16 v0, v36

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v34

    .line 1666
    .local v34, mMmsId:J
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enter forward one mms and mMmsId is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1667
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const-string v4, "mms"

    move-wide/from16 v0, v34

    neg-long v5, v0

    const/4 v7, 0x0

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/mms/ui/MessageListAdapter;->getCachedMessageItem(Ljava/lang/String;JLandroid/database/Cursor;)Lcom/android/mms/ui/MessageItem;

    move-result-object v25

    .line 1670
    .local v25, cacheitem:Lcom/android/mms/ui/MessageItem;
    if-nez v25, :cond_e

    .line 1671
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "cacheitem is null "

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1672
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Lcom/android/mms/ui/MessageListAdapter;->getItemList()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v32

    .line 1673
    :cond_3
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1674
    invoke-interface/range {v32 .. v32}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Ljava/util/Map$Entry;

    .line 1675
    .restart local v28       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMmsId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v34

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1676
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "key "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1677
    invoke-interface/range {v28 .. v28}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v3, v3, v34

    if-nez v3, :cond_3

    .line 1678
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v26

    .line 1679
    .local v26, cursor:Landroid/database/Cursor;
    if-eqz v26, :cond_4

    .line 1680
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "cursor is not null "

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1682
    :cond_4
    if-eqz v26, :cond_e

    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 1684
    :cond_5
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "message_type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v5, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1685
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mMmsId "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v5, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1686
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subject "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v5, 0xc

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1687
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mms type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v5, 0x11

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1688
    const-string v3, "Mms/MultiDeleteActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v5, 0x19

    move-object/from16 v0, v26

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    int-to-long v3, v3

    move-wide/from16 v0, v34

    neg-long v5, v0

    cmp-long v3, v3, v5

    if-nez v3, :cond_9

    .line 1690
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "highlight"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 1692
    .local v30, highlightString:Ljava/lang/String;
    if-nez v30, :cond_8

    const/16 v17, 0x0

    .line 1697
    .local v17, highlight:Ljava/util/regex/Pattern;
    :goto_1
    :try_start_0
    new-instance v2, Lcom/android/mms/ui/MessageItem;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v3, 0x11

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v3, 0x19

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v3, 0x1

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/4 v3, 0x0

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    const/16 v3, 0xc

    move-object/from16 v0, v26

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const-wide/16 v22, 0x0

    const/16 v24, 0x0

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v24}, Lcom/android/mms/ui/MessageItem;-><init>(Landroid/content/Context;IIIIIIJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/regex/Pattern;ZZIZJI)V
    :try_end_0
    .catch Lcom/google/android/mms/MmsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1724
    .end local v17           #highlight:Ljava/util/regex/Pattern;
    .end local v25           #cacheitem:Lcom/android/mms/ui/MessageItem;
    .end local v26           #cursor:Landroid/database/Cursor;
    .end local v28           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .end local v30           #highlightString:Ljava/lang/String;
    .local v2, cacheitem:Lcom/android/mms/ui/MessageItem;
    :goto_2
    move-object/from16 v31, v2

    .line 1725
    .local v31, item:Lcom/android/mms/ui/MessageItem;
    sget v3, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    if-eqz v3, :cond_6

    move-wide/from16 v0, v34

    neg-long v3, v0

    move-object/from16 v0, p0

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/MessageUtils;->isRestrictedType(Landroid/content/Context;J)Z

    move-result v3

    if-nez v3, :cond_a

    .line 1727
    :cond_6
    new-instance v3, Lcom/android/mms/ui/MultiDeleteActivity$7;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v3, v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity$7;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1782
    .end local v2           #cacheitem:Lcom/android/mms/ui/MessageItem;
    .end local v31           #item:Lcom/android/mms/ui/MessageItem;
    .end local v34           #mMmsId:J
    :cond_7
    :goto_3
    return-void

    .line 1692
    .restart local v25       #cacheitem:Lcom/android/mms/ui/MessageItem;
    .restart local v26       #cursor:Landroid/database/Cursor;
    .restart local v28       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v30       #highlightString:Ljava/lang/String;
    .restart local v34       #mMmsId:J
    :cond_8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\\b"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static/range {v30 .. v30}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v3, v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v17

    goto/16 :goto_1

    .line 1710
    .restart local v17       #highlight:Ljava/util/regex/Pattern;
    :catch_0
    move-exception v27

    .line 1711
    .local v27, e:Lcom/google/android/mms/MmsException;
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "MessageItem:"

    move-object/from16 v0, v27

    invoke-static {v3, v4, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, v25

    .line 1713
    .end local v25           #cacheitem:Lcom/android/mms/ui/MessageItem;
    .restart local v2       #cacheitem:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    .line 1715
    .end local v2           #cacheitem:Lcom/android/mms/ui/MessageItem;
    .end local v17           #highlight:Ljava/util/regex/Pattern;
    .end local v27           #e:Lcom/google/android/mms/MmsException;
    .end local v30           #highlightString:Ljava/lang/String;
    .restart local v25       #cacheitem:Lcom/android/mms/ui/MessageItem;
    :cond_9
    invoke-interface/range {v26 .. v26}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v2, v25

    .end local v25           #cacheitem:Lcom/android/mms/ui/MessageItem;
    .restart local v2       #cacheitem:Lcom/android/mms/ui/MessageItem;
    goto :goto_2

    .line 1732
    .end local v26           #cursor:Landroid/database/Cursor;
    .end local v28           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    .restart local v31       #item:Lcom/android/mms/ui/MessageItem;
    :cond_a
    sget v3, Lcom/android/mms/data/WorkingMessage;->sCreationMode:I

    const/16 v4, -0xa

    if-ne v3, v4, :cond_7

    .line 1733
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b0077

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b0078

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/mms/ui/MultiDeleteActivity$8;

    move-object/from16 v0, p0

    move-object/from16 v1, v31

    invoke-direct {v5, v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity$8;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Lcom/android/mms/ui/MessageItem;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_3

    .line 1753
    .end local v2           #cacheitem:Lcom/android/mms/ui/MessageItem;
    .end local v31           #item:Lcom/android/mms/ui/MessageItem;
    .end local v34           #mMmsId:J
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/MultiDeleteActivity;->getSelectedCount()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_7

    .line 1754
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "enter have  mms"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1755
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b01e0

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b01e1

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0b01e3

    new-instance v5, Lcom/android/mms/ui/MultiDeleteActivity$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v5, v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity$9;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_3

    .line 1772
    :cond_c
    const-string v3, "Mms/MultiDeleteActivity"

    const-string v4, "enter have  sms"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1773
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z

    if-eqz v3, :cond_d

    .line 1774
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/mms/ui/MultiDeleteActivity;->mMmsNotificationHasRun:Z

    .line 1776
    :cond_d
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/mms/ui/MultiDeleteActivity$10;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v4, v0, v1}, Lcom/android/mms/ui/MultiDeleteActivity$10;-><init>(Lcom/android/mms/ui/MultiDeleteActivity;Ljava/util/ArrayList;)V

    const-string v5, "ForwardMessage"

    invoke-direct {v3, v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    goto/16 :goto_3

    .restart local v25       #cacheitem:Lcom/android/mms/ui/MessageItem;
    .restart local v34       #mMmsId:J
    :cond_e
    move-object/from16 v2, v25

    .end local v25           #cacheitem:Lcom/android/mms/ui/MessageItem;
    .restart local v2       #cacheitem:Lcom/android/mms/ui/MessageItem;
    goto/16 :goto_2
.end method

.method public setTextSize(F)V
    .locals 4
    .parameter "size"

    .prologue
    .line 282
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListAdapter:Lcom/android/mms/ui/MessageListAdapter;

    invoke-virtual {v3, p1}, Lcom/android/mms/ui/MessageListAdapter;->setTextSize(F)V

    .line 286
    :cond_0
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_2

    .line 287
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 288
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 289
    iget-object v3, p0, Lcom/android/mms/ui/MultiDeleteActivity;->mMsgListView:Landroid/widget/ListView;

    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/mms/ui/MessageListItem;

    .line 290
    .local v2, item:Lcom/android/mms/ui/MessageListItem;
    if-eqz v2, :cond_1

    .line 291
    invoke-virtual {v2, p1}, Lcom/android/mms/ui/MessageListItem;->setBodyTextSize(F)V

    .line 288
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 295
    .end local v0           #count:I
    .end local v1           #i:I
    .end local v2           #item:Lcom/android/mms/ui/MessageListItem;
    :cond_2
    return-void
.end method

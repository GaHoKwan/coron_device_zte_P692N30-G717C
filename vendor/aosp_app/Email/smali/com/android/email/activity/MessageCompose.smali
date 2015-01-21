.class public Lcom/android/email/activity/MessageCompose;
.super Landroid/app/Activity;
.source "MessageCompose.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnFocusChangeListener;
.implements Lcom/android/email/activity/DeleteMessageConfirmationDialog$Callback;
.implements Lcom/android/email/activity/EditQuotedConfirmDialog$Callback;
.implements Lcom/android/email/activity/InsertQuickResponseDialog$Callback;
.implements Lcom/android/email/activity/LoadAttachmentsConfirmDialog$Callback;
.implements Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/MessageCompose$EditQuotedTask;,
        Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;,
        Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;,
        Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;,
        Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;,
        Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;,
        Lcom/android/email/activity/MessageCompose$LoadMessageTask;,
        Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;,
        Lcom/android/email/activity/MessageCompose$QuickResponseChecker;
    }
.end annotation


# static fields
.field private static final ACTION_EDIT_DRAFT:Ljava/lang/String; = "com.android.email.intent.action.EDIT_DRAFT"

.field private static final ACTION_FORWARD:Ljava/lang/String; = "com.android.email.intent.action.FORWARD"

.field private static final ACTION_REPLY:Ljava/lang/String; = "com.android.email.intent.action.REPLY"

.field private static final ACTION_REPLY_ALL:Ljava/lang/String; = "com.android.email.intent.action.REPLY_ALL"

.field private static final ATTACHMENT_META_SIZE_COLUMN_SIZE:I = 0x0

.field private static final ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String; = null

.field private static final CONTACT_URI_PREFIX:Ljava/lang/String; = "content://com.android.contacts/contacts/"

.field protected static final DELAY_RECIPIENT_CHANGEING_TIME:J = 0x3e8L

.field private static final EXTRA_ACCOUNT_ID:Ljava/lang/String; = "account_id"

.field public static final EXTRA_FROM_WIDGET:Ljava/lang/String; = "from_widget"

.field public static final EXTRA_FROM_WITHIN_APP:Ljava/lang/String; = "from_within_app"

.field private static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "message_id"

.field private static final ITEXTRA_CONTACTS:Ljava/lang/String; = "com.mediatek.contacts.list.pickcontactsresult"

.field private static final LOADER_ID_ACCOUNT_LIST:I = 0x1d1

.field private static final MINLINE_NUMBER_DEFAULT:I = 0x1

.field private static final MINLINE_NUMBER_LAND_MODE:I = 0x8

.field private static final MINLINE_NUMBER_PORTRAIT_MODE:I = 0xe

.field private static final PADDING_HEIGHT_REPLY:I = 0x5

.field private static final RECIPIENTVIEW_SHRINK_MAX_TIME:I = 0x5

.field static final RECIPIENT_FILTER:Landroid/text/InputFilter; = null
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final RECIPIENT_THRES:I = 0x32

.field public static final REQUEST_CODE_ATTACH_CALENDAR:I = 0x11

.field public static final REQUEST_CODE_ATTACH_CONTACT:I = 0xf

.field public static final REQUEST_CODE_ATTACH_FILE:I = 0x10

.field public static final REQUEST_CODE_ATTACH_IMAGE:I = 0xc

.field public static final REQUEST_CODE_ATTACH_SOUND:I = 0xe

.field public static final REQUEST_CODE_ATTACH_VIDEO:I = 0xd

.field private static final STATE_KEY_ACTION:Ljava/lang/String; = "com.android.email.activity.MessageCompose.action"

.field private static final STATE_KEY_ADD_ATTACHMENT_REQUST:Ljava/lang/String; = "com.android.email.add.attachment.request"

.field private static final STATE_KEY_ADD_ATTACHMENT_RESULT:Ljava/lang/String; = "com.android.email.add.attachment.result"

.field private static final STATE_KEY_CC_SHOWN:Ljava/lang/String; = "com.android.email.activity.MessageCompose.ccShown"

.field private static final STATE_KEY_DRAFT_ID:Ljava/lang/String; = "com.android.email.activity.MessageCompose.draftId"

.field private static final STATE_KEY_LAST_SAVE_TASK_ID:Ljava/lang/String; = "com.android.email.activity.MessageCompose.requestId"

.field private static final STATE_KEY_NO_RECIPIENT_ERROR:Ljava/lang/String; = "com.android.email.activity.MessageCompose.recipient.error"

.field private static final STATE_KEY_QUOTED_CACHE_TEXT:Ljava/lang/String; = "com.android.email.activity.MessageCompose.quotedCacheText"

.field private static final STATE_KEY_QUOTED_TEXT_SHOWN:Ljava/lang/String; = "com.android.email.activity.MessageCompose.quotedTextShown"

.field private static final TAG:Ljava/lang/String; = "MessageCompose"

.field private static final sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;",
            ">;"
        }
    .end annotation
.end field

.field private static sNextSaveTaskId:J


# instance fields
.field private mAccount:Lcom/android/emailcommon/provider/Account;

.field private mAccountDropdown:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

.field private mAccountSpinner:Landroid/view/View;

.field private mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

.field private mAction:Ljava/lang/String;

.field private mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

.field private final mActionSpinnerListener:Landroid/app/ActionBar$OnNavigationListener;

.field private mAddAttachmentRequestCode:I

.field private mAddAttachmentResultIntent:Landroid/content/Intent;

.field private mAddBccBySetting:Z

.field private mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

.field private mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

.field private mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

.field private mAttachmentContainer:Landroid/view/View;

.field private mAttachmentContentView:Landroid/view/ViewGroup;

.field private mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

.field private final mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mBccView:Landroid/widget/MultiAutoCompleteTextView;

.field private mCcBccContainer:Landroid/view/View;

.field private mCcBccNeedResetDropDownWidth:Z

.field private mCcOriginalOffset:I

.field private mCcView:Landroid/widget/MultiAutoCompleteTextView;

.field private mController:Lcom/android/email/Controller;

.field private mCursor:Landroid/database/Cursor;

.field private mDialogBuilder:Landroid/app/AlertDialog$Builder;

.field private mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mDraftNeedsSaving:Z

.field private mEditQuotedText:Landroid/widget/TextView;

.field private mFromView:Landroid/widget/TextView;

.field private mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

.field private mIsBackground:Z

.field private mIsShowRecipientError:Z

.field private mLastSaveTaskId:J

.field private mLoaderManager:Landroid/app/LoaderManager;

.field private mMessageContentView:Landroid/widget/EditText;

.field private mMessageLoaded:Z

.field private mNeedResetDropDownWidth:Z

.field private mPickingAttachment:Z

.field private mQuickResponsesAvailable:Ljava/lang/Boolean;

.field private mQuotedText:Landroid/webkit/WebView;

.field private mQuotedTextArea:Landroid/view/View;

.field private mQuotedTextCache:Ljava/lang/String;

.field private mRecipientsScrollCounter:I

.field private mRecipientsView:Landroid/view/View;

.field private mRecipientsViewHeight:I

.field private mRunTestCase:Z

.field private mScrollView:Landroid/widget/ScrollView;

.field private mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

.field private mSourceAttachments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation
.end field

.field private mSubjectView:Landroid/widget/EditText;

.field private final mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

.field private mToOriginalOffset:I

.field private mToView:Landroid/widget/MultiAutoCompleteTextView;

.field private final mWatcher:Landroid/text/TextWatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 178
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_size"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    .line 189
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 192
    const-wide/16 v0, 0x1

    sput-wide v0, Lcom/android/email/activity/MessageCompose;->sNextSaveTaskId:J

    .line 1055
    new-instance v0, Lcom/android/email/activity/MessageCompose$5;

    invoke-direct {v0}, Lcom/android/email/activity/MessageCompose$5;-><init>()V

    sput-object v0, Lcom/android/email/activity/MessageCompose;->RECIPIENT_FILTER:Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, -0x8000

    const/4 v2, 0x0

    .line 145
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 183
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsShowRecipientError:Z

    .line 197
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    .line 205
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mAddBccBySetting:Z

    .line 212
    new-instance v0, Lcom/android/emailcommon/provider/EmailContent$Message;

    invoke-direct {v0}, Lcom/android/emailcommon/provider/EmailContent$Message;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    .line 217
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 228
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    .line 254
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    .line 255
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsBackground:Z

    .line 256
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    .line 257
    new-instance v0, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    .line 262
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mToOriginalOffset:I

    .line 263
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mCcOriginalOffset:I

    .line 281
    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 314
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mRunTestCase:Z

    .line 332
    iput-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;

    .line 342
    new-instance v0, Lcom/android/email/activity/MessageCompose$1;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$1;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    .line 2697
    new-instance v0, Lcom/android/email/activity/MessageCompose$14;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$14;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerListener:Landroid/app/ActionBar$OnNavigationListener;

    .line 3898
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mNeedResetDropDownWidth:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mNeedResetDropDownWidth:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->resetDropDownWidth()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mToOriginalOffset:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mToOriginalOffset:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/email/activity/MessageCompose;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mCcOriginalOffset:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/email/activity/MessageCompose;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mCcOriginalOffset:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->updateReadFlag(Lcom/android/emailcommon/provider/EmailContent$Message;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/email/activity/MessageCompose;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachments(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/email/activity/MessageCompose;JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/email/activity/MessageCompose;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/email/activity/MessageCompose;JZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccNeedResetDropDownWidth:Z

    return v0
.end method

.method static synthetic access$2000(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mCcBccNeedResetDropDownWidth:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/email/activity/MessageCompose;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/email/activity/MessageCompose;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isForward()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/email/activity/MessageCompose;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateActionSelector()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/Account;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/Account;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/email/activity/MessageCompose;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V

    return-void
.end method

.method static synthetic access$3100()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .prologue
    .line 145
    sget-object v0, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 145
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/email/activity/MessageCompose;->updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/Controller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    return v0
.end method

.method static synthetic access$3502(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    return p1
.end method

.method static synthetic access$3600(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBackground:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/AttachmentTypeSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(I)V

    return-void
.end method

.method static synthetic access$3902(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->resetCcBccDropDownWidth()V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showLoadAttachmentProgressDialog(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/email/activity/MessageCompose;Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->releaseProgressDialog()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCannotAddAttachmentToast()V

    return-void
.end method

.method static synthetic access$4400(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showAttachmentSizeTooLargeToast()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onAccountSpinnerItemClicked(I)V

    return-void
.end method

.method static synthetic access$4802(Lcom/android/email/activity/MessageCompose;Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mCursor:Landroid/database/Cursor;

    return-object p1
.end method

.method static synthetic access$4900(Lcom/android/email/activity/MessageCompose;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateChangeAccountSpitter()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/email/activity/MessageCompose;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mAddBccBySetting:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/SwitchAccountSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/email/activity/MessageCompose;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mAddBccBySetting:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/android/email/activity/MessageCompose;)Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDropdown:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/email/activity/MessageCompose;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/email/activity/MessageCompose;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setRecipientsViewHeight(I)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/email/activity/MessageCompose;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->updateQuotedText(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5500(Lcom/android/email/activity/MessageCompose;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/email/activity/MessageCompose;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/email/activity/MessageCompose;)Lcom/android/emailcommon/provider/Account;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/email/activity/MessageCompose;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 145
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setQuickResponsesAvailable(Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/email/activity/MessageCompose;)Landroid/widget/MultiAutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    return-object v0
.end method

.method public static actionCompose(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 420
    const/4 v2, 0x0

    :try_start_0
    sput-boolean v2, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 421
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->getMainAppIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 422
    .local v1, i:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 428
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return-void

    .line 423
    :catch_0
    move-exception v0

    .line 426
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static actionCompose(Landroid/content/Context;Ljava/lang/String;J)Z
    .locals 4
    .parameter "context"
    .parameter "uriString"
    .parameter "accountId"

    .prologue
    const/4 v2, 0x0

    .line 441
    const/4 v3, 0x0

    :try_start_0
    sput-boolean v3, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 442
    invoke-static {p0, p2, p3}, Lcom/android/email/activity/MessageCompose;->getMainAppIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v1

    .line 443
    .local v1, i:Landroid/content/Intent;
    const-string v3, "android.intent.action.SEND"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 444
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 445
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 446
    const/4 v2, 0x1

    .line 451
    .end local v1           #i:Landroid/content/Intent;
    :goto_0
    return v2

    .line 447
    :catch_0
    move-exception v0

    .line 450
    .local v0, anfe:Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/email/Email;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static actionEditDraft(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 486
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 487
    const-string v0, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 488
    return-void
.end method

.method public static actionForward(Landroid/content/Context;J)V
    .locals 1
    .parameter "context"
    .parameter "messageId"

    .prologue
    .line 473
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 474
    const-string v0, "com.android.email.intent.action.FORWARD"

    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 475
    return-void
.end method

.method public static actionReply(Landroid/content/Context;JZ)V
    .locals 1
    .parameter "context"
    .parameter "messageId"
    .parameter "replyAll"

    .prologue
    .line 463
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 464
    if-eqz p3, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    :goto_0
    invoke-static {p0, v0, p1, p2}, Lcom/android/email/activity/MessageCompose;->startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V

    .line 465
    return-void

    .line 464
    :cond_0
    const-string v0, "com.android.email.intent.action.REPLY"

    goto :goto_0
.end method

.method private static addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V
    .locals 2
    .parameter "view"
    .parameter "address"

    .prologue
    .line 1705
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .end local p1
    :cond_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 1706
    return-void
.end method

.method private static addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V
    .locals 5
    .parameter "view"
    .parameter "addresses"

    .prologue
    .line 1671
    if-nez p1, :cond_1

    .line 1677
    :cond_0
    return-void

    .line 1674
    :cond_1
    move-object v1, p1

    .local v1, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 1675
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1674
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V
    .locals 9
    .parameter "view"
    .parameter "addresses"

    .prologue
    const/16 v8, 0xfa

    .line 1686
    if-nez p2, :cond_1

    .line 1702
    :cond_0
    :goto_0
    return-void

    .line 1689
    :cond_1
    const/4 v1, 0x0

    .line 1690
    .local v1, count:I
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v4, v0, v2

    .line 1691
    .local v4, oneAddress:Ljava/lang/String;
    if-lt v1, v8, :cond_2

    .line 1692
    const v5, 0x7f080063

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1694
    const-string v5, "MessageCompose"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Not add more recipient, added address length is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    array-length v7, p2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1699
    :cond_2
    invoke-static {p1, v4}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 1700
    add-int/lit8 v1, v1, 0x1

    .line 1690
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private addAttachment(I)V
    .locals 4
    .parameter "type"

    .prologue
    .line 2186
    packed-switch p1, :pswitch_data_0

    .line 2242
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can not handle attachment types of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2244
    :goto_0
    return-void

    .line 2189
    :pswitch_0
    const/16 v1, 0xc

    :try_start_0
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->selectImage(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2190
    :catch_0
    move-exception v0

    .line 2191
    .local v0, anf:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showError()V

    .line 2192
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ActivityNotFoundException happend in attach Image :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2198
    .end local v0           #anf:Landroid/content/ActivityNotFoundException;
    :pswitch_1
    const/16 v1, 0xe

    :try_start_1
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->selectAudio(Landroid/content/Context;I)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2199
    :catch_1
    move-exception v0

    .line 2200
    .restart local v0       #anf:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showError()V

    .line 2201
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ActivityNotFoundException happend in attach Music :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2207
    .end local v0           #anf:Landroid/content/ActivityNotFoundException;
    :pswitch_2
    const/16 v1, 0xd

    :try_start_2
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->selectVideo(Landroid/content/Context;I)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 2208
    :catch_2
    move-exception v0

    .line 2209
    .restart local v0       #anf:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showError()V

    .line 2210
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ActivityNotFoundException happend in attach Video :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2216
    .end local v0           #anf:Landroid/content/ActivityNotFoundException;
    :pswitch_3
    const/16 v1, 0xf

    :try_start_3
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->selectContact(Landroid/content/Context;I)V
    :try_end_3
    .catch Landroid/content/ActivityNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 2217
    :catch_3
    move-exception v0

    .line 2218
    .restart local v0       #anf:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showError()V

    .line 2219
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ActivityNotFoundException happend in attach Contact :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2225
    .end local v0           #anf:Landroid/content/ActivityNotFoundException;
    :pswitch_4
    const/16 v1, 0x10

    :try_start_4
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->selectFile(Landroid/content/Context;I)V
    :try_end_4
    .catch Landroid/content/ActivityNotFoundException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_0

    .line 2226
    :catch_4
    move-exception v0

    .line 2227
    .restart local v0       #anf:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showError()V

    .line 2228
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ActivityNotFoundException happend in attach Contact :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2234
    .end local v0           #anf:Landroid/content/ActivityNotFoundException;
    :pswitch_5
    const/16 v1, 0x11

    :try_start_5
    invoke-static {p0, v1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->selectCalendar(Landroid/content/Context;I)V
    :try_end_5
    .catch Landroid/content/ActivityNotFoundException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_0

    .line 2235
    :catch_5
    move-exception v0

    .line 2236
    .restart local v0       #anf:Landroid/content/ActivityNotFoundException;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showError()V

    .line 2237
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ActivityNotFoundException happend in attach Contact :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2186
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private addAttachment(Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 4
    .parameter "attachment"

    .prologue
    .line 2325
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2326
    const v0, 0x7f0800e1

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2336
    :goto_0
    return-void

    .line 2329
    :cond_0
    iget-wide v0, p1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 2330
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showCannotAddAttachmentToast()V

    goto :goto_0

    .line 2334
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 2335
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    goto :goto_0
.end method

.method private addAttachments(Ljava/util/List;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2342
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2343
    .local v2, currentIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2344
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 2346
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2347
    .local v0, attach:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v4, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSourceAttachmentKey:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2348
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-wide v5, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSourceAttachmentKey:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 2350
    :cond_1
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2353
    .end local v0           #attach:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    .line 2354
    return-void
.end method

.method private addBccMySelf(Lcom/android/emailcommon/provider/Account;)V
    .locals 5
    .parameter "account"

    .prologue
    const/4 v4, 0x0

    .line 3165
    invoke-static {p0}, Lcom/android/email/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "bcc_myself"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 3167
    .local v1, bccMySelf:Z
    if-nez p1, :cond_1

    .line 3168
    const-string v2, "MessageCompose"

    const-string v3, "Current account is null, can\'t do bcc myself opertation."

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3183
    :cond_0
    :goto_0
    return-void

    .line 3171
    :cond_1
    if-eqz v1, :cond_0

    .line 3172
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->getRecipientText(Landroid/widget/MultiAutoCompleteTextView;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3174
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    .line 3177
    .local v0, a:Lcom/android/emailcommon/mail/Address;
    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;Z)V

    .line 3178
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 3179
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mAddBccBySetting:Z

    .line 3180
    const-string v2, "MessageCompose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "add bcc myself "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private addListeners()V
    .locals 2

    .prologue
    .line 1199
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1200
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1201
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1202
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1203
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1204
    return-void
.end method

.method private areViewsEmpty()Z
    .locals 1

    .prologue
    .line 986
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->isRecipientEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->isRecipientEmpty(Landroid/widget/TextView;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isBccViewEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isBodyEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private clearAddressViews()V
    .locals 2

    .prologue
    .line 3124
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3125
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3126
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3127
    return-void
.end method

.method private decode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "s"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    .line 2987
    const-string v0, "UTF-8"

    invoke-static {p1, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V
    .locals 6
    .parameter
    .parameter "attachment"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2540
    .local p1, attachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    invoke-interface {p1, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2541
    iget-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMessageKey:J

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/EmailContent;->isSaved()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2542
    iget-wide v0, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2544
    .local v0, attachmentId:J
    const-wide/16 v2, -0x1

    iput-wide v2, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 2545
    new-instance v2, Lcom/android/email/activity/MessageCompose$13;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/email/activity/MessageCompose$13;-><init>(Lcom/android/email/activity/MessageCompose;J)V

    invoke-static {v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 2554
    .end local v0           #attachmentId:J
    :cond_0
    return-void
.end method

.method private discardMessageIfNeeded()V
    .locals 4

    .prologue
    .line 2637
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->areViewsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2638
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2639
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteMessage(J)V

    .line 2640
    const-string v0, "MessageCompose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Message is empty, it will be delete from db , messageId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v2, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2642
    const v0, 0x7f080115

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 2643
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 2646
    :cond_0
    return-void
.end method

.method private displayQuotedText(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V
    .locals 12
    .parameter "messageId"
    .parameter "textBody"
    .parameter "htmlBody"

    .prologue
    .line 2995
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    .line 2996
    .local v11, plainTextFlag:Z
    if-eqz v11, :cond_2

    move-object v2, p2

    .line 2997
    .local v2, text:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_4

    .line 2998
    if-eqz v11, :cond_0

    invoke-static {v2}, Lcom/android/email/mail/internet/EmailHtmlUtil;->escapeCharacterToDisplay(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2999
    :cond_0
    if-nez v11, :cond_3

    .line 3000
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {p0, v0, v1}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->restoreAttachmentsWithMessageId(Landroid/content/Context;J)[Lcom/android/emailcommon/provider/EmailContent$Attachment;

    move-result-object v8

    .line 3002
    .local v8, atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    move-object v6, v8

    .local v6, arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    array-length v10, v6

    .local v10, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_1
    if-ge v9, v10, :cond_3

    aget-object v7, v6, v9

    .line 3003
    .local v7, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 3004
    const-string v0, "MessageCompose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "++++ displayQuotedText mContentId: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v7, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3006
    invoke-static {v2, v7}, Lcom/android/emailcommon/utility/AttachmentUtilities;->refactorHtmlTextRaw(Ljava/lang/String;Lcom/android/emailcommon/provider/EmailContent$Attachment;)Ljava/lang/String;

    move-result-object v2

    .line 3002
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v2           #text:Ljava/lang/String;
    .end local v6           #arr$:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v7           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v8           #atts:[Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v9           #i$:I
    .end local v10           #len$:I
    :cond_2
    move-object v2, p3

    .line 2996
    goto :goto_0

    .line 3010
    .restart local v2       #text:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3011
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    if-eqz v0, :cond_4

    if-eqz v2, :cond_4

    .line 3012
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v1, "email://"

    const-string v3, "text/html"

    const-string v4, "utf-8"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3015
    :cond_4
    return-void
.end method

.method private static getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;
    .locals 1
    .parameter "account"

    .prologue
    .line 3348
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/emailcommon/provider/Account;->mSignature:Ljava/lang/String;

    goto :goto_0
.end method

.method private static getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;
    .locals 3
    .parameter "view"

    .prologue
    .line 1714
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;Z)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1715
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    return-object v0
.end method

.method private getAvailableAttachSize(I)I
    .locals 4
    .parameter "addSize"

    .prologue
    .line 3500
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 3501
    .local v0, currentNumber:I
    :goto_0
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current attachment size : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3502
    add-int v1, v0, p1

    rsub-int/lit8 v1, v1, 0x64

    return v1

    .line 3500
    .end local v0           #currentNumber:I
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method private static getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .parameter "context"

    .prologue
    .line 374
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/email/activity/MessageCompose;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method private getContentViewTop()I
    .locals 4

    .prologue
    .line 3764
    const/4 v0, 0x0

    .line 3766
    .local v0, values:I
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3768
    iget v1, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsViewHeight:I

    add-int/2addr v0, v1

    .line 3770
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 3773
    add-int/lit8 v0, v0, 0x5

    .line 3774
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getContentViewTop :  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3775
    return v0
.end method

.method private getForwardSubjectPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3227
    const v0, 0x7f080002

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMainAppIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 406
    invoke-static {p0, p1, p2}, Lcom/android/email/activity/MessageCompose;->getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 407
    .local v0, result:Landroid/content/Intent;
    const-string v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 408
    return-object v0
.end method

.method private getMaxWidthLandMode()I
    .locals 1

    .prologue
    .line 551
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private getMaxWidthPortraitMode()I
    .locals 1

    .prologue
    .line 547
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public static getMessageComposeIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 2
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 382
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 383
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 384
    return-object v0
.end method

.method private static getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;
    .locals 3
    .parameter "view"

    .prologue
    .line 1709
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;Z)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1710
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->pack([Lcom/android/emailcommon/mail/Address;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getRecipientLength(Landroid/widget/MultiAutoCompleteTextView;)I
    .locals 1
    .parameter "recipientView"

    .prologue
    .line 3885
    instance-of v0, p1, Lcom/android/email/activity/ChipsAddressTextView;

    if-eqz v0, :cond_0

    .line 3886
    check-cast p1, Lcom/android/email/activity/ChipsAddressTextView;

    .end local p1
    invoke-virtual {p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleAndGetText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    .line 3888
    :goto_0
    return v0

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v0

    goto :goto_0
.end method

.method private getRecipientText(Landroid/widget/MultiAutoCompleteTextView;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "recipientView"

    .prologue
    .line 3877
    instance-of v0, p1, Lcom/android/email/activity/ChipsAddressTextView;

    if-eqz v0, :cond_0

    .line 3878
    check-cast p1, Lcom/android/email/activity/ChipsAddressTextView;

    .end local p1
    invoke-virtual {p1}, Lcom/android/ex/chips/MTKRecipientEditTextView;->handleAndGetText()Landroid/text/Editable;

    move-result-object v0

    .line 3880
    :goto_0
    return-object v0

    .restart local p1
    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0
.end method

.method private getReplyOrReplyAllSubjectPrefix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3231
    const v0, 0x7f080003

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUpdateContentValues(Lcom/android/emailcommon/provider/EmailContent$Message;)Landroid/content/ContentValues;
    .locals 4
    .parameter "message"

    .prologue
    .line 1744
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 1745
    .local v0, values:Landroid/content/ContentValues;
    const-string v1, "timeStamp"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1746
    const-string v1, "fromList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1747
    const-string v1, "toList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1748
    const-string v1, "ccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1749
    const-string v1, "bccList"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    const-string v1, "subject"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1751
    const-string v1, "displayName"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1752
    const-string v1, "flagRead"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1753
    const-string v1, "flagLoaded"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1754
    const-string v1, "flagAttachment"

    iget-boolean v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 1755
    const-string v1, "flags"

    iget v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1757
    const-string v1, "accountKey"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1758
    const-string v1, "mailboxKey"

    iget-wide v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 1759
    const-string v1, "snippet"

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1761
    return-object v0
.end method

.method public static getWidgetIntent(Landroid/content/Context;J)Landroid/content/Intent;
    .locals 3
    .parameter "context"
    .parameter "accountId"

    .prologue
    .line 392
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 393
    .local v0, i:Landroid/content/Intent;
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 394
    const-string v1, "from_widget"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 395
    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 396
    return-object v0
.end method

.method private handleCommand(I)Z
    .locals 5
    .parameter "viewId"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 2565
    sparse-switch p1, :sswitch_data_0

    move v2, v3

    .line 2607
    :cond_0
    :goto_0
    return v2

    .line 2567
    :sswitch_0
    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->onBack(Z)V

    goto :goto_0

    .line 2570
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSend()V

    goto :goto_0

    .line 2574
    :sswitch_2
    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mIsBackground:Z

    .line 2575
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onSave()V

    goto :goto_0

    .line 2578
    :sswitch_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->showQuickResponseDialog()V

    goto :goto_0

    .line 2581
    :sswitch_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onDiscard()V

    goto :goto_0

    .line 2585
    :sswitch_5
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v3

    invoke-direct {p0, v3, v2}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    goto :goto_0

    .line 2588
    :sswitch_6
    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->showCcBccFields(Z)V

    goto :goto_0

    .line 2593
    :sswitch_7
    const-string v4, "input_method"

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 2594
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 2595
    .local v0, focusView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 2596
    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v1, v4, v3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 2599
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onAddAttachment()V

    goto :goto_0

    .line 2602
    .end local v0           #focusView:Landroid/view/View;
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :sswitch_8
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v3, :cond_0

    .line 2603
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v3, v3, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v3, v4}, Lcom/android/email/activity/setup/AccountSettings;->actionSettings(Landroid/app/Activity;J)V

    goto :goto_0

    .line 2565
    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0f001a -> :sswitch_2
        0x7f0f0076 -> :sswitch_6
        0x7f0f0077 -> :sswitch_7
        0x7f0f0102 -> :sswitch_5
        0x7f0f012c -> :sswitch_1
        0x7f0f012d -> :sswitch_4
        0x7f0f012e -> :sswitch_3
        0x7f0f012f -> :sswitch_8
    .end sparse-switch
.end method

.method private hasSourceMessage()Z
    .locals 1

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private includeQuotedText()Z
    .locals 1

    .prologue
    .line 2489
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    return v0
.end method

.method private initLengthFilter()V
    .locals 4

    .prologue
    const/16 v3, 0x2710

    const/4 v2, 0x1

    .line 3750
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/16 v1, 0x100

    invoke-static {v0, p0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 3752
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const/16 v1, 0x3a98

    invoke-static {v0, p0, v1, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 3754
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0, p0, v3, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 3756
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0, p0, v3, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 3758
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v0, p0, v3, v2}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 3760
    return-void
.end method

.method private initViews()V
    .locals 14

    .prologue
    const v13, 0x7f0f0083

    const v12, 0x7f0f0081

    const v11, 0x7f0f007e

    const v10, 0x7f0f007a

    const/4 v9, 0x0

    .line 1102
    const v7, 0x7f0f0079

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 1103
    .local v6, toParent:Landroid/view/ViewGroup;
    if-eqz v6, :cond_2

    .line 1104
    invoke-virtual {v6, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1107
    const v7, 0x7f0f007c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 1108
    .local v4, ccParent:Landroid/view/ViewGroup;
    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1109
    const v7, 0x7f0f007f

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 1110
    .local v3, bccParent:Landroid/view/ViewGroup;
    invoke-virtual {v3, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1117
    .end local v3           #bccParent:Landroid/view/ViewGroup;
    .end local v4           #ccParent:Landroid/view/ViewGroup;
    :goto_0
    const v7, 0x7f0f00a4

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Landroid/widget/ScrollView;

    .line 1118
    const v7, 0x7f0f0084

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    .line 1119
    const v7, 0x7f0f007b

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    .line 1120
    const v7, 0x7f0f0082

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    .line 1121
    invoke-static {p0, v13}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/EditText;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    .line 1122
    const v7, 0x7f0f00a5

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    .line 1123
    const v7, 0x7f0f00a6

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContainer:Landroid/view/View;

    .line 1124
    const v7, 0x7f0f00ff

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    .line 1125
    const v7, 0x7f0f0102

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/CheckBox;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    .line 1126
    const v7, 0x7f0f0107

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/webkit/WebView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 1127
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const/4 v8, 0x2

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->setOverScrollMode(I)V

    .line 1129
    const/4 v7, 0x1

    new-array v5, v7, [Landroid/text/InputFilter;

    sget-object v7, Lcom/android/email/activity/MessageCompose;->RECIPIENT_FILTER:Landroid/text/InputFilter;

    aput-object v7, v5, v9

    .line 1132
    .local v5, recipientFilters:[Landroid/text/InputFilter;
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1133
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1134
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 1137
    const v7, 0x7f0f0105

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    .line 1138
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1144
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 1145
    invoke-direct {p0, v9, v9}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 1147
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1149
    new-instance v2, Lcom/android/email/EmailAddressValidator;

    invoke-direct {v2}, Lcom/android/email/EmailAddressValidator;-><init>()V

    .line 1151
    .local v2, addressValidator:Lcom/android/email/EmailAddressValidator;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setupAddressAdapters()V

    .line 1152
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v8, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v8}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1153
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v2}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1155
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v8, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v8}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1156
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v2}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1158
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    new-instance v8, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v8}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v7, v8}, Landroid/widget/MultiAutoCompleteTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 1159
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7, v2}, Landroid/widget/AutoCompleteTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 1161
    const v7, 0x7f0f0076

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    .line 1162
    .local v1, addCcBccView:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 1164
    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1167
    :cond_0
    const v7, 0x7f0f0077

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    .line 1168
    .local v0, addAttachmentView:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 1170
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1173
    :cond_1
    const v7, 0x7f0f0011

    invoke-virtual {p0, v7, v10}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 1174
    const v7, 0x7f0f007d

    invoke-virtual {p0, v7, v11}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 1175
    const v7, 0x7f0f0080

    invoke-virtual {p0, v7, v12}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 1176
    const v7, 0x7f0f00aa

    invoke-virtual {p0, v7, v13}, Lcom/android/email/activity/MessageCompose;->setFocusShifter(II)V

    .line 1178
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v7, p0}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 1180
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentContainer()V

    .line 1181
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v7}, Landroid/view/View;->requestFocus()Z

    .line 1184
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mLoaderManager:Landroid/app/LoaderManager;

    .line 1185
    new-instance v7, Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    invoke-direct {v7, p0}, Lcom/android/email/activity/SwitchAccountSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    .line 1186
    new-instance v7, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    invoke-direct {v7, p0, p0}, Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/content/Context;)V

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAccountDropdown:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    .line 1187
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAccountDropdown:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    invoke-virtual {v7, v8}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1188
    const v7, 0x7f0f0061

    invoke-static {p0, v7}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mAccountSpinner:Landroid/view/View;

    .line 1190
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initLengthFilter()V

    .line 1191
    const v7, 0x7f0f0078

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsView:Landroid/view/View;

    .line 1192
    return-void

    .line 1112
    .end local v0           #addAttachmentView:Landroid/view/View;
    .end local v1           #addCcBccView:Landroid/view/View;
    .end local v2           #addressValidator:Lcom/android/email/EmailAddressValidator;
    .end local v5           #recipientFilters:[Landroid/text/InputFilter;
    :cond_2
    invoke-static {p0, v10}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1113
    invoke-static {p0, v11}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    .line 1114
    invoke-static {p0, v12}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/MultiAutoCompleteTextView;

    iput-object v7, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    goto/16 :goto_0
.end method

.method private initializeFromMailTo(Ljava/lang/String;)V
    .locals 14
    .parameter "mailToString"

    .prologue
    .line 2932
    const-string v11, "?"

    invoke-virtual {p1, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    .line 2933
    .local v5, index:I
    const-string v11, "mailto"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v6, v11, 0x1

    .line 2938
    .local v6, length:I
    const/4 v4, 0x0

    .line 2939
    .local v4, encoded:Ljava/lang/String;
    const/4 v9, 0x0

    .line 2942
    .local v9, to:Ljava/lang/String;
    const/4 v11, -0x1

    if-ne v5, v11, :cond_3

    .line 2943
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 2948
    :goto_0
    :try_start_0
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->decode(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v9

    .line 2956
    :goto_1
    if-eqz v9, :cond_0

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_0

    .line 2957
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v11, v12}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2964
    :cond_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "foo://"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2966
    .local v10, uri:Landroid/net/Uri;
    const-string v11, "cc"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    .line 2967
    .local v2, cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v2, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-direct {p0, v12, v11}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2969
    const-string v11, "to"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    .line 2970
    .local v7, otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v7, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-direct {p0, v12, v11}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2972
    const-string v11, "bcc"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 2973
    .local v0, bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    iget-object v12, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    new-array v11, v11, [Ljava/lang/String;

    invoke-interface {v0, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Ljava/lang/String;

    invoke-direct {p0, v12, v11}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2975
    const-string v11, "subject"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    .line 2976
    .local v8, subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_1

    .line 2977
    iget-object v12, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    const/4 v11, 0x0

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    invoke-virtual {v12, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2980
    :cond_1
    const-string v11, "body"

    invoke-virtual {v10, v11}, Landroid/net/Uri;->getQueryParameters(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 2981
    .local v1, body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    if-lez v11, :cond_2

    .line 2982
    const/4 v11, 0x0

    invoke-interface {v1, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/CharSequence;

    iget-object v12, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v12}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v11, v12}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2984
    :cond_2
    return-void

    .line 2945
    .end local v0           #bcc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v1           #body:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v2           #cc:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v7           #otherTo:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #subject:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v10           #uri:Landroid/net/Uri;
    :cond_3
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    .line 2949
    :catch_0
    move-exception v3

    .line 2950
    .local v3, e:Ljava/io/UnsupportedEncodingException;
    const-string v11, "MessageCompose"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while decoding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2951
    .end local v3           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v3

    .line 2952
    .local v3, e:Ljava/lang/IllegalArgumentException;
    const-string v11, "MessageCompose"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " while decoding \'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "\'"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2953
    move-object v9, v4

    .line 2954
    invoke-static {p1}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_1
.end method

.method private isBccViewEmpty()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1018
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v5}, Lcom/android/email/activity/MessageCompose;->isRecipientEmpty(Landroid/widget/TextView;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1032
    :cond_0
    :goto_0
    return v3

    .line 1021
    :cond_1
    invoke-static {p0}, Lcom/android/email/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    const-string v6, "bcc_myself"

    invoke-interface {v5, v6, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1023
    .local v1, bccMySelf:Z
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    .line 1024
    .local v2, bccText:Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1025
    invoke-static {v2, v4}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;Z)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1026
    .local v0, bcc:[Lcom/android/emailcommon/mail/Address;
    array-length v5, v0

    if-ne v5, v3, :cond_2

    aget-object v5, v0, v4

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-object v6, v6, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .end local v0           #bcc:[Lcom/android/emailcommon/mail/Address;
    :cond_2
    move v3, v4

    .line 1032
    goto :goto_0
.end method

.method private isBodyEmpty()Z
    .locals 3

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isForward()Z
    .locals 2

    .prologue
    .line 3340
    const-string v0, "com.android.email.intent.action.FORWARD"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isOpenedFromWidget()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 958
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 959
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "from_widget"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isOpenedFromWithinApp()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 953
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 954
    .local v0, i:Landroid/content/Intent;
    if-eqz v0, :cond_0

    const-string v2, "from_within_app"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private isRecipientEmpty(Landroid/widget/TextView;)Z
    .locals 2
    .parameter "recipientView"

    .prologue
    .line 1000
    invoke-static {p1}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v0

    .line 1001
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1002
    const/4 v1, 0x1

    .line 1004
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private loadAccountInfo()V
    .locals 4

    .prologue
    .line 3702
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v1, 0x1d1

    const/4 v2, 0x0

    new-instance v3, Lcom/android/email/activity/MessageCompose$18;

    invoke-direct {v3, p0}, Lcom/android/email/activity/MessageCompose$18;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 3725
    return-void
.end method

.method private loadAttachmentInfo(Landroid/net/Uri;)Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .locals 18
    .parameter "uri"

    .prologue
    .line 2252
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentInfo uri : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2253
    const-wide/16 v16, -0x1

    .line 2254
    .local v16, size:J
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 2257
    .local v2, contentResolver:Landroid/content/ContentResolver;
    invoke-static/range {p0 .. p1}, Lcom/android/emailcommon/utility/Utility;->getContentFileName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v13

    .line 2258
    .local v13, name:Ljava/lang/String;
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentInfo name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2259
    const/4 v12, 0x0

    .line 2262
    .local v12, mimeType:Ljava/lang/String;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "content://com.android.contacts/contacts/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2263
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    const-string v4, "directory"

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p1

    .line 2265
    invoke-static/range {p0 .. p1}, Lcom/android/emailcommon/utility/Utility;->getAttachSize(Landroid/content/Context;Landroid/net/Uri;)J

    move-result-wide v16

    .line 2266
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "read the file size from provider, size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2280
    :cond_0
    :goto_0
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentInfo size : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2281
    invoke-static/range {p0 .. p1}, Lcom/android/emailcommon/utility/AttachmentUtilities;->inferMimeTypeForUri(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v12

    .line 2282
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentInfo mimeType : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2291
    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-gez v3, :cond_2

    .line 2293
    const-string v3, "file"

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2294
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v14

    .line 2295
    .local v14, path:Ljava/lang/String;
    if-eqz v14, :cond_1

    .line 2296
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2297
    .local v10, file:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v16

    .line 2298
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentInfo the attach is file and size is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v16

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2302
    .end local v10           #file:Ljava/io/File;
    .end local v14           #path:Ljava/lang/String;
    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v16, v3

    if-gtz v3, :cond_2

    .line 2304
    const-wide/16 v16, -0x1

    .line 2305
    const-string v3, "MessageCompose"

    const-string v4, "loadAttachmentInfo the attach is unavailable set size as \'ATTACHMENT_UNAVAILABLE_SIZE\'."

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2310
    :cond_2
    new-instance v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;-><init>()V

    .line 2311
    .local v8, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iput-object v13, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    .line 2312
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentUri:Ljava/lang/String;

    .line 2313
    move-wide/from16 v0, v16

    iput-wide v0, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    .line 2314
    iput-object v12, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    .line 2315
    iget-object v3, v8, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mMimeType:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 2316
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cannot add attachment with uri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2317
    const/4 v8, 0x0

    .line 2320
    .end local v8           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :goto_2
    return-object v8

    .line 2268
    :cond_3
    :try_start_1
    sget-object v4, Lcom/android/email/activity/MessageCompose;->ATTACHMENT_META_SIZE_PROJECTION:[Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v11

    .line 2270
    .local v11, metadataCursor:Landroid/database/Cursor;
    if-eqz v11, :cond_0

    .line 2272
    :try_start_2
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 2273
    const/4 v3, 0x0

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getLong(I)J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v16

    .line 2276
    :cond_4
    :try_start_3
    invoke-interface {v11}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 2283
    .end local v11           #metadataCursor:Landroid/database/Cursor;
    :catch_0
    move-exception v9

    .line 2284
    .local v9, e:Landroid/database/sqlite/SQLiteException;
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Query attachment infor from contentUri  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failed : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2276
    .end local v9           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v11       #metadataCursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v3

    :try_start_4
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3
    :try_end_4
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_1

    .line 2286
    .end local v11           #metadataCursor:Landroid/database/Cursor;
    :catch_1
    move-exception v15

    .line 2287
    .local v15, se:Ljava/lang/RuntimeException;
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have no Permission Query attachment infor from contentUri  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v15}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2319
    .end local v15           #se:Ljava/lang/RuntimeException;
    .restart local v8       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_5
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "loadAttachmentInfo attachment : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v8}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2
.end method

.method private loadAttachments(JLcom/android/emailcommon/provider/Account;Lcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V
    .locals 6
    .parameter "messageId"
    .parameter "account"
    .parameter "callback"

    .prologue
    .line 1627
    new-instance v0, Lcom/android/email/activity/MessageCompose$9;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    move-object v1, p0

    move-wide v3, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose$9;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;JLcom/android/email/activity/MessageCompose$AttachmentLoadedCallback;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1645
    return-void
.end method

.method private loadSourceMessage(JZ)V
    .locals 6
    .parameter "sourceMessageId"
    .parameter "restoreViews"

    .prologue
    const/4 v4, 0x0

    .line 1394
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    new-instance v5, Lcom/android/email/activity/MessageCompose$8;

    invoke-direct {v5, p0, p3}, Lcom/android/email/activity/MessageCompose$8;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;)V

    check-cast v4, [Ljava/lang/Void;

    invoke-virtual {v0, v4}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1469
    return-void
.end method

.method private makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .parameter "packedTo"
    .parameter "packedCc"
    .parameter "packedBcc"

    .prologue
    const/4 v9, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 1724
    const/4 v2, 0x0

    .line 1725
    .local v2, first:Lcom/android/emailcommon/mail/Address;
    const/4 v6, 0x0

    .line 1726
    .local v6, nRecipients:I
    const/4 v8, 0x3

    new-array v1, v8, [Ljava/lang/String;

    aput-object p1, v1, v10

    aput-object p2, v1, v11

    aput-object p3, v1, v9

    .local v1, arr$:[Ljava/lang/String;
    array-length v5, v1

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v7, v1, v4

    .line 1727
    .local v7, packed:Ljava/lang/String;
    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1728
    .local v0, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v8, v0

    add-int/2addr v6, v8

    .line 1729
    if-nez v2, :cond_0

    array-length v8, v0

    if-lez v8, :cond_0

    .line 1730
    aget-object v2, v0, v10

    .line 1726
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1733
    .end local v0           #addresses:[Lcom/android/emailcommon/mail/Address;
    .end local v7           #packed:Ljava/lang/String;
    :cond_1
    if-nez v6, :cond_3

    .line 1734
    const-string v3, ""

    .line 1740
    :cond_2
    :goto_1
    return-object v3

    .line 1736
    :cond_3
    invoke-virtual {v2}, Lcom/android/emailcommon/mail/Address;->toFriendly()Ljava/lang/String;

    move-result-object v3

    .line 1737
    .local v3, friendly:Ljava/lang/String;
    if-eq v6, v11, :cond_2

    .line 1740
    const v8, 0x7f0800e3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v10

    add-int/lit8 v10, v6, -0x1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    goto :goto_1
.end method

.method private onAccountSpinnerItemClicked(I)V
    .locals 14
    .parameter "position"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 3645
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    if-nez v9, :cond_1

    .line 3695
    :cond_0
    :goto_0
    return-void

    .line 3648
    :cond_1
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    invoke-virtual {v9, p1}, Lcom/android/email/activity/SwitchAccountSelectorAdapter;->getAccountId(I)J

    move-result-wide v2

    .line 3649
    .local v2, accountId:J
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v9, v2, v9

    if-eqz v9, :cond_0

    .line 3652
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    invoke-virtual {v9, p1}, Lcom/android/email/activity/SwitchAccountSelectorAdapter;->getAccountEmailAddress(I)Ljava/lang/String;

    move-result-object v4

    .line 3653
    .local v4, address:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3654
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v1

    .line 3655
    .local v1, account:Lcom/android/emailcommon/provider/Account;
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v9, v9, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    cmp-long v9, v2, v9

    if-eqz v9, :cond_0

    .line 3659
    const-string v10, "MessageCompose"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Switch account "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    if-nez v1, :cond_3

    const-string v9, "null"

    :goto_1
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v10, v9}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3660
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 3662
    .local v8, preAccount:Lcom/android/emailcommon/provider/Account;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isBodyEmpty()Z

    move-result v7

    .line 3663
    .local v7, isEmptyBefSwitchAccount:Z
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 3667
    if-eqz v7, :cond_2

    .line 3668
    const/4 v9, 0x0

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v9, v10}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 3669
    invoke-direct {p0, v13}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 3670
    invoke-direct {p0, v13}, Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V

    .line 3678
    :cond_2
    invoke-static {p0}, Lcom/android/email/Preferences;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v9

    const-string v10, "bcc_myself"

    invoke-interface {v9, v10, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 3680
    .local v6, bccMySelf:Z
    if-eqz v6, :cond_0

    .line 3681
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v9}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v12}, Lcom/android/emailcommon/mail/Address;->parse(Ljava/lang/String;Z)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    .line 3682
    .local v5, bcc:[Lcom/android/emailcommon/mail/Address;
    array-length v9, v5

    if-ne v9, v13, :cond_4

    aget-object v9, v5, v12

    invoke-virtual {v9}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v8, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 3684
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3685
    new-instance v0, Lcom/android/emailcommon/mail/Address;

    iget-object v9, v1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-direct {v0, v9}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;)V

    .line 3688
    .local v0, a:Lcom/android/emailcommon/mail/Address;
    iget-object v9, v1, Lcom/android/emailcommon/provider/Account;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v0, v9, v12}, Lcom/android/emailcommon/mail/Address;->setPersonal(Ljava/lang/String;Z)V

    .line 3689
    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 3690
    iput-boolean v13, p0, Lcom/android/email/activity/MessageCompose;->mAddBccBySetting:Z

    goto/16 :goto_0

    .line 3659
    .end local v0           #a:Lcom/android/emailcommon/mail/Address;
    .end local v5           #bcc:[Lcom/android/emailcommon/mail/Address;
    .end local v6           #bccMySelf:Z
    .end local v7           #isEmptyBefSwitchAccount:Z
    .end local v8           #preAccount:Lcom/android/emailcommon/provider/Account;
    :cond_3
    invoke-virtual {v1}, Lcom/android/emailcommon/provider/Account;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_1

    .line 3692
    .restart local v5       #bcc:[Lcom/android/emailcommon/mail/Address;
    .restart local v6       #bccMySelf:Z
    .restart local v7       #isEmptyBefSwitchAccount:Z
    .restart local v8       #preAccount:Lcom/android/emailcommon/provider/Account;
    :cond_4
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->addBccMySelf(Lcom/android/emailcommon/provider/Account;)V

    goto/16 :goto_0
.end method

.method private onActionChanged()V
    .locals 3

    .prologue
    .line 2662
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->hasSourceMessage()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2680
    :goto_0
    return-void

    .line 2666
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->removeListeners()V

    .line 2667
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->removeErroInfo()V

    .line 2669
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-virtual {p0, v0, v1}, Lcom/android/email/activity/MessageCompose;->processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;)V

    .line 2673
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isForward()Z

    move-result v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/email/activity/MessageCompose;->processSourceMessageAttachments(Ljava/util/List;Ljava/util/List;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2674
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    .line 2675
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 2678
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateActionSelector()V

    .line 2679
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addListeners()V

    goto :goto_0
.end method

.method private onAddAttachment()V
    .locals 3

    .prologue
    .line 2161
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getAvailableAttachSize(I)I

    move-result v0

    if-gez v0, :cond_0

    .line 2162
    const/16 v0, 0x64

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->showAttachmentConfirmDialog(I)V

    .line 2183
    :goto_0
    return-void

    .line 2165
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    if-nez v0, :cond_1

    .line 2166
    new-instance v0, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    .line 2168
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 2169
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f020027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 2170
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f08009a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2171
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    if-nez v0, :cond_2

    .line 2172
    new-instance v0, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    invoke-direct {v0, p0}, Lcom/android/email/activity/AttachmentTypeSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    .line 2174
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    new-instance v2, Lcom/android/email/activity/MessageCompose$10;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$10;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2182
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private onBack(Z)V
    .locals 2
    .parameter "systemKey"

    .prologue
    .line 2618
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v0, :cond_1

    .line 2633
    :cond_0
    :goto_0
    return-void

    .line 2621
    :cond_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->discardMessageIfNeeded()V

    .line 2622
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2623
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isOpenedFromWithinApp()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2628
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isOpenedFromWidget()Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p1, :cond_0

    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v0, :cond_0

    .line 2631
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/Welcome;->createOpenAccountInboxIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDeleteAttachmentIconClicked(Landroid/view/View;)V
    .locals 3
    .parameter "delButtonView"

    .prologue
    .line 2523
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2524
    .local v1, attachmentView:Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2525
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v2, v0}, Lcom/android/email/activity/MessageCompose;->deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 2526
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    .line 2527
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 2528
    return-void
.end method

.method private onDiscard()V
    .locals 3

    .prologue
    .line 2105
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/email/activity/DeleteMessageConfirmationDialog;->newInstance(ILandroid/app/Fragment;)Lcom/android/email/activity/DeleteMessageConfirmationDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "DeleteMessageConfirmationDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 2107
    return-void
.end method

.method private onEditQuotedText()V
    .locals 2

    .prologue
    .line 3895
    new-instance v1, Lcom/android/email/activity/MessageCompose$EditQuotedTask;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$EditQuotedTask;-><init>(Lcom/android/email/activity/MessageCompose;)V

    const/4 v0, 0x0

    check-cast v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3896
    return-void
.end method

.method private onResetAttachmentList()V
    .locals 6

    .prologue
    .line 4052
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget v3, v3, Lcom/android/emailcommon/provider/Account;->mFlags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 4053
    .local v2, supportsSmartForward:Z
    :goto_0
    if-eqz v2, :cond_4

    .line 4055
    const-string v3, "MessageCompose"

    const-string v4, "Reset the SmartForward source attachments"

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4056
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 4057
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v3, v3, 0x100

    if-eqz v3, :cond_0

    .line 4058
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "FLAG_SMART_FORWARD attachments"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4060
    iget-object v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mContentId:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 4061
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Delete inline attachment: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4064
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0, v3, v0}, Lcom/android/email/activity/MessageCompose;->deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    goto :goto_1

    .line 4052
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #supportsSmartForward:Z
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 4066
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .restart local v1       #i$:Ljava/util/Iterator;
    .restart local v2       #supportsSmartForward:Z
    :cond_2
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Change attachments falg :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4071
    iget v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v3, v3, -0x101

    iput v3, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    goto :goto_1

    .line 4075
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentUi()V

    .line 4077
    .end local v1           #i$:Ljava/util/Iterator;
    :cond_4
    return-void
.end method

.method private onSave()V
    .locals 0

    .prologue
    .line 2132
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 2133
    return-void
.end method

.method private onSend()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 2031
    invoke-static {p0}, Lcom/android/email/Preferences;->getPreferences(Landroid/content/Context;)Lcom/android/email/Preferences;

    move-result-object v2

    .line 2032
    .local v2, pref:Lcom/android/email/Preferences;
    invoke-virtual {v2}, Lcom/android/email/Preferences;->checkLowStorage()V

    .line 2033
    invoke-virtual {v2}, Lcom/android/email/Preferences;->getLowStorage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2034
    const v3, 0x7f08000b

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2035
    const v3, 0x7f08000c

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2037
    :cond_0
    invoke-virtual {p0}, Lcom/android/email/activity/MessageCompose;->isAddressAllValid()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2038
    const v3, 0x7f0800e0

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 2061
    :cond_1
    :goto_0
    return-void

    .line 2040
    :cond_2
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v3

    array-length v3, v3

    if-nez v3, :cond_3

    .line 2043
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const v4, 0x7f0800df

    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2044
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v3}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 2049
    :cond_3
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-nez v3, :cond_4

    .line 2050
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    .line 2051
    .local v1, fm:Landroid/app/FragmentManager;
    const-string v3, "SendWithoutSubjectConfirmDialog"

    invoke-virtual {v1, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog;

    .line 2053
    .local v0, dialog:Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog;
    if-nez v0, :cond_1

    .line 2054
    new-instance v3, Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog;

    invoke-direct {v3}, Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    const-string v5, "SendWithoutSubjectConfirmDialog"

    invoke-virtual {v3, v4, v5}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 2058
    .end local v0           #dialog:Lcom/mediatek/email/ui/SendWithoutSubjectConfirmDialog;
    .end local v1           #fm:Landroid/app/FragmentManager;
    :cond_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->triggerSend()V

    goto :goto_0
.end method

.method private registeGlobalLayoutListener()V
    .locals 3

    .prologue
    .line 3819
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3820
    .local v0, vto:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-nez v1, :cond_0

    .line 3821
    new-instance v1, Lcom/android/email/activity/MessageCompose$20;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$20;-><init>(Lcom/android/email/activity/MessageCompose;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3828
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3829
    const-string v1, "MessageCompose"

    const-string v2, "registeGlobalLayoutListener "

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3831
    :cond_0
    return-void
.end method

.method private releaseProgressDialog()V
    .locals 4

    .prologue
    .line 3487
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3488
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v3, "LoadingAttachProgressDialog"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 3489
    .local v1, fragment:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 3490
    check-cast v2, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;

    .line 3491
    .local v2, loadingDailog:Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
    invoke-virtual {v2}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 3493
    .end local v2           #loadingDailog:Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
    :cond_0
    return-void
.end method

.method private removeErroInfo()V
    .locals 2

    .prologue
    .line 1212
    const-string v0, "com.android.email.intent.action.REPLY"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "com.android.email.intent.action.REPLY_ALL"

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1213
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 1215
    :cond_1
    return-void
.end method

.method private removeListeners()V
    .locals 2

    .prologue
    .line 1223
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1224
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1225
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1226
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1227
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1228
    return-void
.end method

.method private resetCcBccDropDownWidth()V
    .locals 1

    .prologue
    .line 828
    new-instance v0, Lcom/android/email/activity/MessageCompose$3;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$3;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 854
    return-void
.end method

.method private resetDropDownWidth()V
    .locals 1

    .prologue
    .line 807
    new-instance v0, Lcom/android/email/activity/MessageCompose$2;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$2;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 825
    return-void
.end method

.method private resolveIntent(Landroid/content/Intent;)V
    .locals 10
    .parameter "intent"

    .prologue
    const-wide/16 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 671
    const-string v4, "android.intent.action.VIEW"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SENDTO"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SEND"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "android.intent.action.SEND_MULTIPLE"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 675
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/email/activity/MessageCompose;->initFromIntent(Landroid/content/Intent;)V

    .line 676
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 677
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V

    .line 697
    :goto_0
    return-void

    .line 678
    :cond_1
    const-string v4, "com.android.email.intent.action.REPLY"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.android.email.intent.action.REPLY_ALL"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "com.android.email.intent.action.FORWARD"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 681
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 682
    .local v2, sourceMessageId:J
    invoke-direct {p0, v2, v3, v6}, Lcom/android/email/activity/MessageCompose;->loadSourceMessage(JZ)V

    goto :goto_0

    .line 684
    .end local v2           #sourceMessageId:J
    :cond_3
    const-string v4, "com.android.email.intent.action.EDIT_DRAFT"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 686
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message_id"

    invoke-virtual {v4, v5, v8, v9}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 687
    .local v0, draftId:J
    invoke-direct {p0, v0, v1, v7, v6}, Lcom/android/email/activity/MessageCompose;->resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V

    goto :goto_0

    .line 691
    .end local v0           #draftId:J
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)Z

    .line 692
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->addBccMySelf(Lcom/android/emailcommon/provider/Account;)V

    .line 693
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled(Z)V

    .line 694
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v7, v4}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 695
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->setMessageLoaded(Z)V

    goto :goto_0
.end method

.method private resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V
    .locals 6
    .parameter "draftId"
    .parameter "existingSaveTask"
    .parameter "restoreViews"

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iput-wide p1, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 1290
    new-instance v0, Lcom/android/email/activity/MessageCompose$LoadMessageTask;

    new-instance v5, Lcom/android/email/activity/MessageCompose$7;

    invoke-direct {v5, p0, p4}, Lcom/android/email/activity/MessageCompose$7;-><init>(Lcom/android/email/activity/MessageCompose;Z)V

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/MessageCompose$LoadMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Lcom/android/email/activity/MessageCompose$OnMessageLoadHandler;)V

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1359
    return-void
.end method

.method private static safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z
    .locals 8
    .parameter "addrs"
    .parameter "ourAddress"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3024
    .local p3, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    const/4 v0, 0x0

    .line 3025
    .local v0, added:Z
    invoke-static {p0}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 3026
    .local v2, addresses:[Lcom/android/emailcommon/mail/Address;
    array-length v6, v2

    const/16 v7, 0x32

    if-ge v6, v7, :cond_1

    .line 3027
    move-object v3, v2

    .local v3, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v5, v3

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_0
    if-ge v4, v5, :cond_2

    aget-object v1, v3, v4

    .line 3029
    .local v1, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 3031
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3032
    invoke-virtual {v1}, Lcom/android/emailcommon/mail/Address;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p2, v6}, Lcom/android/email/activity/MessageCompose;->addAddress(Landroid/widget/MultiAutoCompleteTextView;Ljava/lang/String;)V

    .line 3033
    const/4 v0, 0x1

    .line 3027
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3037
    .end local v1           #address:Lcom/android/emailcommon/mail/Address;
    .end local v3           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v4           #i$:I
    .end local v5           #len$:I
    :cond_1
    invoke-static {v2, p1, p2, p3}, Lcom/android/email/activity/MessageCompose;->safeAddAddressesAsync([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)V

    .line 3038
    const/4 v0, 0x1

    .line 3041
    :cond_2
    return v0
.end method

.method private static safeAddAddressesAsync([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)V
    .locals 1
    .parameter "addrs"
    .parameter "ourAddress"
    .parameter "view"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/android/emailcommon/mail/Address;",
            "Ljava/lang/String;",
            "Landroid/widget/MultiAutoCompleteTextView;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/mail/Address;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3046
    .local p3, addrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    new-instance v0, Lcom/android/email/activity/MessageCompose$15;

    invoke-direct {v0, p0, p1, p3, p2}, Lcom/android/email/activity/MessageCompose$15;-><init>([Lcom/android/emailcommon/mail/Address;Ljava/lang/String;Ljava/util/ArrayList;Landroid/widget/MultiAutoCompleteTextView;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3089
    return-void
.end method

.method private saveIfNeeded()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2002
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-nez v0, :cond_0

    .line 2007
    :goto_0
    return-void

    .line 2005
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 2006
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    goto :goto_0
.end method

.method private scrollViewTop(Landroid/view/View;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 3780
    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3781
    const-string v0, "MessageCompose"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Skip auto scroll if isTwoPane "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/email/activity/UiUtilities;->useTwoPane(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3787
    :goto_0
    return-void

    .line 3785
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->unRegisteGlobalLayoutListener()V

    .line 3786
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->registeGlobalLayoutListener()V

    goto :goto_0
.end method

.method private sendOrSaveMessage(Z)V
    .locals 7
    .parameter "send"

    .prologue
    .line 1984
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-nez v1, :cond_0

    .line 1985
    const-string v1, "MessageCompose"

    const-string v2, "Attempted to save draft message prior to the state being fully loaded"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1999
    :goto_0
    return-void

    .line 1988
    :cond_0
    sget-object v2, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    monitor-enter v2

    .line 1989
    :try_start_0
    sget-wide v3, Lcom/android/email/activity/MessageCompose;->sNextSaveTaskId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    sput-wide v5, Lcom/android/email/activity/MessageCompose;->sNextSaveTaskId:J

    iput-wide v3, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    .line 1991
    new-instance v0, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    iget-wide v3, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    invoke-direct {v0, p0, v3, v4, p1}, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;-><init>(Lcom/android/email/activity/MessageCompose;JZ)V

    .line 1997
    .local v0, task:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    sget-object v1, Lcom/android/emailcommon/utility/EmailAsyncTask;->SERIAL_EXECUTOR_FOR_SEND_MAIL:Ljava/util/concurrent/Executor;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v3}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1998
    monitor-exit v2

    goto :goto_0

    .end local v0           #task:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setAccount(Lcom/android/emailcommon/provider/Account;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 531
    if-nez p1, :cond_0

    .line 532
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 534
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    .line 535
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mFromView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 536
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 538
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 540
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    new-instance v1, Landroid/accounts/Account;

    iget-object v2, p1, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    const-string v3, "unknown"

    invoke-direct {v1, v2, v3}, Landroid/accounts/Account;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/android/ex/chips/AccountSpecifier;->setAccount(Landroid/accounts/Account;)V

    .line 543
    new-instance v1, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v1, p0, v0}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Void;

    const/4 v3, 0x0

    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Void;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 544
    return-void
.end method

.method private setAccount(Landroid/content/Intent;)Z
    .locals 6
    .parameter "intent"

    .prologue
    const-wide/16 v4, -0x1

    .line 505
    const-string v3, "account_id"

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 506
    .local v1, accountId:J
    const/4 v0, 0x0

    .line 507
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    cmp-long v3, v1, v4

    if-eqz v3, :cond_0

    .line 508
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 510
    :cond_0
    cmp-long v3, v1, v4

    if-eqz v3, :cond_1

    if-nez v0, :cond_2

    .line 511
    :cond_1
    invoke-static {p0}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 512
    cmp-long v3, v1, v4

    if-eqz v3, :cond_2

    .line 513
    invoke-static {p0, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 516
    :cond_2
    if-nez v0, :cond_3

    .line 519
    const-string v3, "MessageCompose"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No account Email need setup a new account for ACTION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/email/activity/setup/AccountSetupBasics;->actionNewAccountFromMessageCompose(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 521
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 522
    const/4 v3, 0x0

    .line 527
    :goto_0
    return v3

    .line 524
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setAccount(Lcom/android/emailcommon/provider/Account;)V

    .line 527
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private setAction(Ljava/lang/String;)V
    .locals 1
    .parameter "action"

    .prologue
    .line 2649
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2655
    :goto_0
    return-void

    .line 2653
    :cond_0
    iput-object p1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 2654
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onActionChanged()V

    goto :goto_0
.end method

.method private setContentViewStyle(Z)V
    .locals 4
    .parameter "focus"

    .prologue
    const/4 v3, 0x1

    .line 590
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 591
    .local v0, context:Landroid/text/Editable;
    if-eqz p1, :cond_2

    .line 592
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v1, v2, Landroid/content/res/Configuration;->orientation:I

    .line 593
    .local v1, orientation:I
    if-ne v1, v3, :cond_1

    .line 594
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const/16 v3, 0xe

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    .line 598
    :goto_0
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->scrollViewTop(Landroid/view/View;)V

    .line 605
    .end local v1           #orientation:I
    :cond_0
    :goto_1
    return-void

    .line 596
    .restart local v1       #orientation:I
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    goto :goto_0

    .line 600
    .end local v1           #orientation:I
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->unRegisteGlobalLayoutListener()V

    .line 601
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 602
    :cond_3
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinLines(I)V

    goto :goto_1
.end method

.method private setForwardSubjectPrefix(Ljava/lang/String;)V
    .locals 4
    .parameter "subject"

    .prologue
    .line 3197
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getForwardSubjectPrefix()Ljava/lang/String;

    move-result-object v0

    .line 3198
    .local v0, prefix:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3200
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3204
    :goto_0
    return-void

    .line 3202
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setIncludeQuotedText(ZZ)V
    .locals 5
    .parameter "include"
    .parameter "updateNeedsSaving"

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 2510
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2511
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2513
    if-eqz p2, :cond_0

    .line 2514
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 2516
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    .line 2517
    .local v0, isShowEditQuoted:Z
    const v1, 0x7f0f0104

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v0, :cond_2

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2519
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2520
    return-void

    .line 2511
    .end local v0           #isShowEditQuoted:Z
    :cond_1
    const/16 v1, 0x8

    goto :goto_0

    .restart local v0       #isShowEditQuoted:Z
    :cond_2
    move v1, v3

    .line 2517
    goto :goto_1

    :cond_3
    move v2, v3

    .line 2519
    goto :goto_2
.end method

.method private setMessageChanged(Z)V
    .locals 2
    .parameter "messageChanged"

    .prologue
    .line 974
    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->areViewsEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    .line 975
    .local v0, needsSaving:Z
    :goto_0
    iget-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    if-eq v1, v0, :cond_0

    .line 976
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    .line 977
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 979
    :cond_0
    return-void

    .line 974
    .end local v0           #needsSaving:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setMessageLoaded(Z)V
    .locals 1
    .parameter "isLoaded"

    .prologue
    .line 967
    iget-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    if-eq v0, p1, :cond_0

    .line 968
    iput-boolean p1, p0, Lcom/android/email/activity/MessageCompose;->mMessageLoaded:Z

    .line 969
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addListeners()V

    .line 971
    :cond_0
    return-void
.end method

.method private setNewMessageFocus()V
    .locals 1

    .prologue
    .line 3329
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getRecipientLength(Landroid/widget/MultiAutoCompleteTextView;)I

    move-result v0

    if-nez v0, :cond_0

    .line 3330
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3337
    :goto_0
    return-void

    .line 3331
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 3332
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    goto :goto_0

    .line 3334
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 3335
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->scrollViewTop(Landroid/view/View;)V

    goto :goto_0
.end method

.method private setQuickResponsesAvailable(Z)V
    .locals 1
    .parameter "quickResponsesAvailable"

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 726
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    .line 727
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 729
    :cond_0
    return-void
.end method

.method private setRecipientsViewHeight(I)V
    .locals 3
    .parameter "height"

    .prologue
    .line 3790
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsScrollCounter:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsScrollCounter:I

    .line 3791
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsViewHeight:I

    if-eq v0, p1, :cond_0

    .line 3792
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsViewHeight:I

    .line 3794
    const-string v0, "MessageCompose"

    const-string v1, "smoothScrollTo "

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3795
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mScrollView:Landroid/widget/ScrollView;

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getContentViewTop()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/ScrollView;->smoothScrollTo(II)V

    .line 3802
    :cond_0
    iget v0, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsScrollCounter:I

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 3803
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->unRegisteGlobalLayoutListener()V

    .line 3805
    :cond_1
    return-void
.end method

.method private setReplyOrReplyAllSubjectPrefix(Ljava/lang/String;)V
    .locals 4
    .parameter "subject"

    .prologue
    .line 3217
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getReplyOrReplyAllSubjectPrefix()Ljava/lang/String;

    move-result-object v0

    .line 3218
    .local v0, prefix:Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3220
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3224
    :goto_0
    return-void

    .line 3222
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setupAddressAdapters()V
    .locals 3

    .prologue
    .line 1234
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v0

    .line 1236
    .local v0, supportsChips:Z
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    instance-of v1, v1, Lcom/android/email/activity/ChipsAddressTextView;

    if-eqz v1, :cond_0

    .line 1237
    new-instance v2, Lcom/android/email/RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/email/activity/ChipsAddressTextView;

    invoke-direct {v2, p0, v1}, Lcom/android/email/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    .line 1238
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/RecipientAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1239
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/email/activity/ChipsAddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/ChipsAddressTextView;->setGalSearchDelayer()V

    .line 1244
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    instance-of v1, v1, Lcom/android/email/activity/ChipsAddressTextView;

    if-eqz v1, :cond_1

    .line 1245
    new-instance v2, Lcom/android/email/RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/email/activity/ChipsAddressTextView;

    invoke-direct {v2, p0, v1}, Lcom/android/email/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    .line 1246
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/RecipientAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1247
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/email/activity/ChipsAddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/ChipsAddressTextView;->setGalSearchDelayer()V

    .line 1252
    :goto_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    instance-of v1, v1, Lcom/android/email/activity/ChipsAddressTextView;

    if-eqz v1, :cond_2

    .line 1253
    new-instance v2, Lcom/android/email/RecipientAdapter;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/email/activity/ChipsAddressTextView;

    invoke-direct {v2, p0, v1}, Lcom/android/email/RecipientAdapter;-><init>(Landroid/content/Context;Lcom/android/ex/chips/MTKRecipientEditTextView;)V

    iput-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    .line 1254
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/RecipientAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1255
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    check-cast v1, Lcom/android/email/activity/ChipsAddressTextView;

    invoke-virtual {v1}, Lcom/android/email/activity/ChipsAddressTextView;->setGalSearchDelayer()V

    .line 1260
    :goto_2
    return-void

    .line 1241
    :cond_0
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    .line 1242
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 1249
    :cond_1
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    .line 1250
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_1

    .line 1257
    :cond_2
    new-instance v1, Lcom/android/email/EmailAddressAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/EmailAddressAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    .line 1258
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v1, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v2, v1}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_2
.end method

.method private showAttachmentConfirmDialog(I)V
    .locals 3
    .parameter "maxCount"

    .prologue
    .line 3533
    invoke-static {p1}, Lcom/android/email/activity/AttachmentsConfirmDialog;->newInstance(I)Lcom/android/email/activity/AttachmentsConfirmDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "AttachmentsConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3535
    return-void
.end method

.method private showAttachmentSizeTooLargeToast()V
    .locals 1

    .prologue
    .line 2433
    new-instance v0, Lcom/android/email/activity/MessageCompose$12;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$12;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2442
    return-void
.end method

.method private showCannotAddAttachmentToast()V
    .locals 1

    .prologue
    .line 2421
    new-instance v0, Lcom/android/email/activity/MessageCompose$11;

    invoke-direct {v0, p0}, Lcom/android/email/activity/MessageCompose$11;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2430
    return-void
.end method

.method private showCcBccFields(Z)V
    .locals 2
    .parameter "focusCc"

    .prologue
    .line 2146
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    .line 2147
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2148
    if-eqz p1, :cond_0

    .line 2149
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2151
    :cond_0
    const v0, 0x7f0f0076

    const/4 v1, 0x4

    invoke-static {p0, v0, v1}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/app/Activity;II)V

    .line 2152
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2154
    :cond_1
    return-void
.end method

.method private showCcBccFieldsIfFilled(Z)V
    .locals 1
    .parameter "focusCc"

    .prologue
    .line 2138
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getRecipientLength(Landroid/widget/MultiAutoCompleteTextView;)I

    move-result v0

    if-gtz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->getRecipientLength(Landroid/widget/MultiAutoCompleteTextView;)I

    move-result v0

    if-lez v0, :cond_1

    .line 2140
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->showCcBccFields(Z)V

    .line 2143
    :cond_1
    return-void
.end method

.method private showError()V
    .locals 2

    .prologue
    .line 2247
    const v0, 0x7f08000a

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 2249
    return-void
.end method

.method private showLoadAttachmentProgressDialog(Lcom/android/emailcommon/utility/EmailAsyncTask;)V
    .locals 5
    .parameter "task"

    .prologue
    .line 3543
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    .line 3544
    .local v0, fm:Landroid/app/FragmentManager;
    const-string v3, "LoadingAttachProgressDialog"

    invoke-virtual {v0, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 3545
    .local v1, fragment:Landroid/app/Fragment;
    if-nez v1, :cond_0

    .line 3546
    new-instance v2, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;

    invoke-direct {v2, p1}, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;-><init>(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    .line 3547
    .local v2, loadingDialog:Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    const-string v4, "LoadingAttachProgressDialog"

    invoke-virtual {v3, v2, v4}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commit()I

    .line 3550
    invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 3555
    :goto_0
    return-void

    .end local v2           #loadingDialog:Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
    :cond_0
    move-object v2, v1

    .line 3552
    check-cast v2, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;

    .line 3553
    .restart local v2       #loadingDialog:Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
    invoke-virtual {v2, p1}, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->resetLoadingTask(Lcom/android/emailcommon/utility/EmailAsyncTask;)V

    goto :goto_0
.end method

.method private showLoadMoreAttachmentDialog(Landroid/os/Bundle;)V
    .locals 3
    .parameter "bundle"

    .prologue
    .line 3510
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/email/activity/LoadAttachmentsConfirmDialog;->newInstance(Landroid/os/Bundle;Landroid/app/Fragment;)Lcom/android/email/activity/LoadAttachmentsConfirmDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "LoadAttachmentsConfirmDialog"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 3512
    return-void
.end method

.method private showQuickResponseDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2086
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v0, :cond_0

    .line 2092
    :goto_0
    return-void

    .line 2090
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v2, v0}, Lcom/android/email/activity/InsertQuickResponseDialog;->newInstance(Landroid/app/Fragment;Lcom/android/emailcommon/provider/Account;)Lcom/android/email/activity/InsertQuickResponseDialog;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static startActivityWithMessage(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 3
    .parameter "context"
    .parameter "action"
    .parameter "messageId"

    .prologue
    .line 495
    invoke-static {p0}, Lcom/android/email/activity/MessageCompose;->getBaseIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 496
    .local v0, i:Landroid/content/Intent;
    const-string v1, "message_id"

    invoke-virtual {v0, v1, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 498
    const-string v1, "from_within_app"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 500
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 501
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 502
    return-void
.end method

.method private startAsyncTaskLoadMoreAttachments(Ljava/util/ArrayList;I)V
    .locals 4
    .parameter
    .parameter "addMumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 3411
    .local p1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move-object v0, p1

    .line 3412
    .local v0, attachUris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    move v1, p2

    .line 3413
    .local v1, length:I
    new-instance v3, Lcom/android/email/activity/MessageCompose$17;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v3, p0, v2, v0, v1}, Lcom/android/email/activity/MessageCompose$17;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Ljava/util/ArrayList;I)V

    const/4 v2, 0x0

    check-cast v2, [Ljava/lang/Void;

    invoke-virtual {v3, v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3484
    return-void
.end method

.method private startAsyncTaskLoadOneAttachments(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 3357
    new-instance v0, Lcom/android/email/activity/MessageCompose$16;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$16;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 3402
    return-void
.end method

.method private triggerSend()V
    .locals 1

    .prologue
    .line 2080
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->sendOrSaveMessage(Z)V

    .line 2081
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 2082
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2083
    return-void
.end method

.method private unRegisteGlobalLayoutListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3808
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v1, :cond_0

    .line 3809
    const-string v1, "MessageCompose"

    const-string v2, "unRegisteGlobalLayoutListener"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 3811
    .local v0, vto:Landroid/view/ViewTreeObserver;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 3812
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 3813
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsScrollCounter:I

    .line 3814
    iput v3, p0, Lcom/android/email/activity/MessageCompose;->mRecipientsViewHeight:I

    .line 3816
    .end local v0           #vto:Landroid/view/ViewTreeObserver;
    :cond_0
    return-void
.end method

.method private updateActionSelector()V
    .locals 3

    .prologue
    .line 2686
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2688
    .local v0, actionBar:Landroid/app/ActionBar;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    if-nez v1, :cond_0

    .line 2689
    new-instance v1, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    invoke-direct {v1, p0}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    .line 2690
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerAdapter:Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mActionSpinnerListener:Landroid/app/ActionBar$OnNavigationListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 2692
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 2693
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/email/activity/MessageCompose$ActionSpinnerAdapter;->getActionPosition(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 2694
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 2695
    return-void
.end method

.method private updateAttachmentContainer()V
    .locals 2

    .prologue
    .line 2394
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContainer:Landroid/view/View;

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 2396
    return-void

    .line 2394
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateAttachmentUi()V
    .locals 12

    .prologue
    const/4 v7, 0x0

    .line 2357
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2359
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v8}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 2367
    .local v1, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFlags:I

    and-int/lit16 v8, v8, 0x100

    if-nez v8, :cond_0

    const/4 v0, 0x1

    .line 2369
    .local v0, allowDelete:Z
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v8

    const v9, 0x7f040050

    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9, v10, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 2371
    .local v6, view:Landroid/view/View;
    const v8, 0x7f0f006d

    invoke-static {v6, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 2372
    .local v4, nameView:Landroid/widget/TextView;
    const v8, 0x7f0f006f

    invoke-static {v6, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 2373
    .local v2, delete:Landroid/widget/ImageView;
    const v8, 0x7f0f006e

    invoke-static {v6, v8}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 2375
    .local v5, sizeView:Landroid/widget/TextView;
    iget-object v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mFileName:Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2376
    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    const-wide/16 v10, 0x0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 2377
    iget-wide v8, v1, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSize:J

    invoke-static {p0, v8, v9}, Lcom/android/email/activity/UiUtilities;->formatSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2381
    :goto_2
    if-eqz v0, :cond_2

    .line 2382
    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2383
    invoke-virtual {v2, v6}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2387
    :goto_3
    invoke-virtual {v6, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 2388
    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentContentView:Landroid/view/ViewGroup;

    invoke-virtual {v8, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0

    .end local v0           #allowDelete:Z
    .end local v2           #delete:Landroid/widget/ImageView;
    .end local v4           #nameView:Landroid/widget/TextView;
    .end local v5           #sizeView:Landroid/widget/TextView;
    .end local v6           #view:Landroid/view/View;
    :cond_0
    move v0, v7

    .line 2367
    goto :goto_1

    .line 2379
    .restart local v0       #allowDelete:Z
    .restart local v2       #delete:Landroid/widget/ImageView;
    .restart local v4       #nameView:Landroid/widget/TextView;
    .restart local v5       #sizeView:Landroid/widget/TextView;
    .restart local v6       #view:Landroid/view/View;
    :cond_1
    const/16 v8, 0x8

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 2385
    :cond_2
    const/4 v8, 0x4

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3

    .line 2390
    .end local v0           #allowDelete:Z
    .end local v1           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v2           #delete:Landroid/widget/ImageView;
    .end local v4           #nameView:Landroid/widget/TextView;
    .end local v5           #sizeView:Landroid/widget/TextView;
    .end local v6           #view:Landroid/view/View;
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->updateAttachmentContainer()V

    .line 2391
    return-void
.end method

.method private updateChangeAccountSpitter()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 3729
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountsSelectorAdapter:Lcom/android/email/activity/SwitchAccountSelectorAdapter;

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCursor:Landroid/database/Cursor;

    invoke-virtual {v1, v2}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 3730
    const v1, 0x7f0f0085

    invoke-static {p0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v0

    .line 3731
    .local v0, switchAccountIcon:Landroid/view/View;
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCursor:Landroid/database/Cursor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mCursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 3732
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3733
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountSpinner:Landroid/view/View;

    new-instance v2, Lcom/android/email/activity/MessageCompose$19;

    invoke-direct {v2, p0}, Lcom/android/email/activity/MessageCompose$19;-><init>(Lcom/android/email/activity/MessageCompose;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3742
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setClickable(Z)V

    .line 3747
    :goto_0
    return-void

    .line 3744
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    .line 3745
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;ZZ)V
    .locals 8
    .parameter "message"
    .parameter "account"
    .parameter "hasAttachments"
    .parameter "sending"

    .prologue
    .line 1775
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 1776
    :cond_0
    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->generateMessageId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMessageId:Ljava/lang/String;

    .line 1778
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTimeStamp:J

    .line 1779
    new-instance v4, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getEmailAddress()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2}, Lcom/android/emailcommon/provider/Account;->getSenderName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Lcom/android/emailcommon/mail/Address;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/emailcommon/mail/Address;->pack()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    .line 1780
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    .line 1781
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    .line 1782
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v4}, Lcom/android/email/activity/MessageCompose;->getPackedAddresses(Landroid/widget/TextView;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    .line 1783
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1784
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    .line 1786
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    if-eqz v4, :cond_4

    .line 1787
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/utility/TextUtilities;->makeSnippetFromPlainText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    .line 1792
    :goto_0
    iget-wide v4, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    .line 1794
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-wide v5, p2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const/4 v7, 0x3

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/email/Controller;->findOrCreateMailboxOfType(JI)J

    move-result-wide v4

    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mMailboxKey:J

    .line 1796
    iget-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6}, Lcom/android/email/activity/MessageCompose;->makeDisplayName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mDisplayName:Ljava/lang/String;

    .line 1797
    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagRead:Z

    .line 1798
    const/4 v4, 0x1

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagLoaded:I

    .line 1799
    iput-boolean p3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlagAttachment:Z

    .line 1802
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    if-eqz v4, :cond_2

    .line 1804
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSourceKey:J

    .line 1805
    iget v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isForward()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    :goto_1
    or-int/2addr v4, v5

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1807
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_2

    .line 1810
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    .line 1811
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1812
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1813
    .local v1, fromAsString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->isForward()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1814
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v2, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 1815
    .local v2, subject:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1816
    .local v3, to:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-object v4, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v4}, Lcom/android/emailcommon/mail/Address;->unpackToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1817
    .local v0, cc:Ljava/lang/String;
    const v4, 0x7f0800db

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    const/4 v6, 0x2

    if-eqz v3, :cond_6

    .end local v3           #to:Ljava/lang/String;
    :goto_2
    aput-object v3, v5, v6

    const/4 v6, 0x3

    if-eqz v0, :cond_7

    .end local v0           #cc:Ljava/lang/String;
    :goto_3
    aput-object v0, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 1827
    .end local v1           #fromAsString:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    :cond_2
    :goto_4
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->includeQuotedText()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 1828
    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const v5, -0x20001

    and-int/2addr v4, v5

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1844
    :cond_3
    :goto_5
    return-void

    .line 1789
    :cond_4
    const/4 v4, 0x0

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSnippet:Ljava/lang/String;

    goto/16 :goto_0

    .line 1805
    :cond_5
    const/4 v4, 0x1

    goto :goto_1

    .line 1817
    .restart local v0       #cc:Ljava/lang/String;
    .restart local v1       #fromAsString:Ljava/lang/String;
    .restart local v2       #subject:Ljava/lang/String;
    .restart local v3       #to:Ljava/lang/String;
    :cond_6
    const-string v3, ""

    goto :goto_2

    .end local v3           #to:Ljava/lang/String;
    :cond_7
    const-string v0, ""

    goto :goto_3

    .line 1821
    .end local v0           #cc:Ljava/lang/String;
    .end local v2           #subject:Ljava/lang/String;
    :cond_8
    const v4, 0x7f0800dc

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-virtual {p0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    goto :goto_4

    .line 1830
    .end local v1           #fromAsString:Ljava/lang/String;
    :cond_9
    iget v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v5, 0x2

    or-int/2addr v4, v5

    iput v4, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    .line 1831
    if-eqz p4, :cond_3

    .line 1836
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mIntroText:Ljava/lang/String;

    .line 1837
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    .line 1838
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v5, 0x0

    iput-object v5, v4, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    goto :goto_5
.end method

.method private updateQuotedText(Ljava/lang/String;)V
    .locals 4
    .parameter "result"

    .prologue
    .line 4021
    if-eqz p1, :cond_0

    .line 4023
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 4024
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mIncludeQuotedTextCheckBox:Landroid/widget/CheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 4025
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateQuotedText append quoted text, lenght "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4028
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onResetAttachmentList()V

    .line 4031
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v0

    .line 4032
    .local v0, textLength:I
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const/16 v2, 0x3a98

    const/4 v3, 0x1

    invoke-static {v1, p0, v2, v3}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 4035
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 4036
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 4037
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 4042
    .end local v0           #textLength:I
    :goto_0
    return-void

    .line 4040
    :cond_0
    const-string v1, "MessageCompose"

    const-string v2, "Warning, edited quoted cache result lost!!"

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateReadFlag(Lcom/android/emailcommon/provider/EmailContent$Message;)V
    .locals 3
    .parameter "message"

    .prologue
    .line 1264
    new-instance v0, Lcom/android/email/activity/MessageCompose$6;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/MessageCompose$6;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/android/emailcommon/provider/EmailContent$Message;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 1274
    return-void
.end method


# virtual methods
.method addAttachmentFromUri(Landroid/net/Uri;)V
    .locals 5
    .parameter "uri"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2403
    new-instance v0, Lcom/mediatek/drm/OmaDrmClient;

    invoke-direct {v0, p0}, Lcom/mediatek/drm/OmaDrmClient;-><init>(Landroid/content/Context;)V

    .line 2404
    .local v0, drmClient:Lcom/mediatek/drm/OmaDrmClient;
    invoke-static {p0, p1, v0}, Lcom/mediatek/drm/OmaDrmUtils;->getDrmProfile(Landroid/content/Context;Landroid/net/Uri;Lcom/mediatek/drm/OmaDrmClient;)Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;

    move-result-object v1

    .line 2407
    .local v1, profile:Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;
    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->isDrm()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->getMethod()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_0

    invoke-virtual {v1}, Lcom/mediatek/drm/OmaDrmUtils$DrmProfile;->getMethod()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2409
    const v3, 0x20500d0

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    .line 2411
    .local v2, toast:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 2418
    .end local v2           #toast:Landroid/widget/Toast;
    :goto_0
    return-void

    .line 2417
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->startAsyncTaskLoadOneAttachments(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method getAccountDropdown()Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3862
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDropdown:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    return-object v0
.end method

.method getAction()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3867
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    return-object v0
.end method

.method getAttachment()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3852
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAttachments:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method getAttachmentDialog()Landroid/app/AlertDialog$Builder;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3857
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    return-object v0
.end method

.method getDraft()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3847
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method getSourceAttachment()Ljava/util/ArrayList;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3842
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSourceAttachments:Ljava/util/ArrayList;

    return-object v0
.end method

.method getSourceMessage()Lcom/android/emailcommon/provider/EmailContent$Message;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3837
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSource:Lcom/android/emailcommon/provider/EmailContent$Message;

    return-object v0
.end method

.method inferAction()Ljava/lang/String;
    .locals 7
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 1477
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1478
    .local v3, subject:Ljava/lang/String;
    if-nez v3, :cond_0

    .line 1479
    const/4 v5, 0x0

    .line 1502
    :goto_0
    return-object v5

    .line 1482
    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getForwardSubjectPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1483
    .local v1, prefixFWD:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getReplyOrReplyAllSubjectPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1484
    .local v2, prefixRep:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 1485
    .local v4, subjectLowerCase:Ljava/lang/String;
    const-string v5, "fwd:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v4, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1488
    :cond_1
    const-string v5, "com.android.email.intent.action.FORWARD"

    goto :goto_0

    .line 1489
    :cond_2
    const-string v5, "re:"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v4, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v3, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1492
    :cond_3
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v5}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v5

    array-length v5, v5

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    iget-object v6, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v6}, Lcom/android/email/activity/MessageCompose;->getAddresses(Landroid/widget/TextView;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    array-length v6, v6

    add-int v0, v5, v6

    .line 1495
    .local v0, numRecipients:I
    const/4 v5, 0x1

    if-le v0, v5, :cond_4

    .line 1496
    const-string v5, "com.android.email.intent.action.REPLY_ALL"

    goto :goto_0

    .line 1498
    :cond_4
    const-string v5, "com.android.email.intent.action.REPLY"

    goto :goto_0

    .line 1502
    .end local v0           #numRecipients:I
    :cond_5
    const-string v5, "com.android.email.intent.action.EDIT_DRAFT"

    goto/16 :goto_0
.end method

.method initFromIntent(Landroid/content/Intent;)V
    .locals 13
    .parameter "intent"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2832
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->setAccount(Landroid/content/Intent;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 2921
    :goto_0
    return-void

    .line 2837
    :cond_0
    const-string v10, "android.intent.extra.EMAIL"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2838
    .local v4, extraStrings:[Ljava/lang/String;
    if-eqz v4, :cond_1

    .line 2839
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v10, v4}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2841
    :cond_1
    const-string v10, "android.intent.extra.CC"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2842
    if-eqz v4, :cond_2

    .line 2843
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v10, v4}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2845
    :cond_2
    const-string v10, "android.intent.extra.BCC"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 2846
    if-eqz v4, :cond_3

    .line 2847
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-direct {p0, v10, v4}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    .line 2849
    :cond_3
    const-string v10, "android.intent.extra.SUBJECT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2850
    .local v3, extraString:Ljava/lang/String;
    if-eqz v3, :cond_4

    .line 2851
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v10, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2858
    :cond_4
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 2859
    .local v2, dataUri:Landroid/net/Uri;
    if-eqz v2, :cond_5

    .line 2860
    const-string v10, "mailto"

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2861
    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->initializeFromMailTo(Ljava/lang/String;)V

    .line 2876
    :cond_5
    :goto_1
    const-string v10, "android.intent.extra.TEXT"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 2877
    .local v7, text:Ljava/lang/CharSequence;
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v10}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2878
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v10}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, v7, v10}, Lcom/android/email/activity/MessageCompose;->setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 2882
    :cond_6
    const-string v10, "android.intent.action.SEND"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2883
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v9

    check-cast v9, Landroid/net/Uri;

    .line 2884
    .local v9, uri:Landroid/net/Uri;
    if-eqz v9, :cond_7

    .line 2885
    invoke-direct {p0, v9}, Lcom/android/email/activity/MessageCompose;->startAsyncTaskLoadOneAttachments(Landroid/net/Uri;)V

    .line 2889
    .end local v9           #uri:Landroid/net/Uri;
    :cond_7
    const-string v10, "android.intent.action.SEND_MULTIPLE"

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 2891
    const-string v10, "android.intent.extra.STREAM"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 2892
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-eqz v5, :cond_8

    .line 2893
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 2894
    .local v6, size:I
    const-string v10, "MessageCompose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Attachments size is "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2895
    if-lez v6, :cond_8

    .line 2896
    invoke-direct {p0, v6}, Lcom/android/email/activity/MessageCompose;->getAvailableAttachSize(I)I

    move-result v0

    .line 2897
    .local v0, availableSize:I
    if-ltz v0, :cond_b

    .line 2899
    const-string v10, "MessageCompose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadingAttachments runing runing .. add "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "attachments"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2901
    invoke-direct {p0, v5, v6}, Lcom/android/email/activity/MessageCompose;->startAsyncTaskLoadMoreAttachments(Ljava/util/ArrayList;I)V

    .line 2917
    .end local v0           #availableSize:I
    .end local v5           #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .end local v6           #size:I
    :cond_8
    :goto_2
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->addBccMySelf(Lcom/android/emailcommon/provider/Account;)V

    .line 2919
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled(Z)V

    .line 2920
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    goto/16 :goto_0

    .line 2863
    .end local v7           #text:Ljava/lang/CharSequence;
    :cond_9
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    .line 2864
    .local v8, toText:Ljava/lang/String;
    if-eqz v8, :cond_5

    .line 2865
    invoke-static {v8}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2866
    iget-object v10, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const-string v11, ","

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v10, v11}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2868
    :cond_a
    const-string v10, "MessageCompose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "unavailable email address "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not add to mToView "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 2904
    .end local v8           #toText:Ljava/lang/String;
    .restart local v0       #availableSize:I
    .restart local v5       #list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    .restart local v6       #size:I
    .restart local v7       #text:Ljava/lang/CharSequence;
    :cond_b
    const-string v10, "MessageCompose"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "show dialog .. add "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    add-int v12, v6, v0

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " attachments"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2906
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2907
    .local v1, bundle:Landroid/os/Bundle;
    const-string v10, "com.email.attachment.addnumber"

    add-int v11, v6, v0

    invoke-virtual {v1, v10, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2909
    const-string v10, "com.email.attachment.uris"

    invoke-virtual {v1, v10, v5}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2911
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showLoadMoreAttachmentDialog(Landroid/os/Bundle;)V

    goto :goto_2
.end method

.method isAddressAllValid()Z
    .locals 10
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2014
    invoke-static {}, Lcom/android/ex/chips/ChipsUtil;->supportsChipsUi()Z

    move-result v4

    .line 2015
    .local v4, supportsChips:Z
    const/4 v8, 0x3

    new-array v1, v8, [Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v8, v1, v6

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v8, v1, v7

    const/4 v8, 0x2

    iget-object v9, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    aput-object v9, v1, v8

    .local v1, arr$:[Landroid/widget/TextView;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_3

    aget-object v5, v1, v2

    .line 2016
    .local v5, view:Landroid/widget/TextView;
    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 2017
    .local v0, addresses:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/emailcommon/mail/Address;->isAllValid(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_2

    .line 2020
    if-eqz v4, :cond_0

    instance-of v7, v5, Lcom/android/email/activity/ChipsAddressTextView;

    if-nez v7, :cond_1

    .line 2021
    :cond_0
    const v7, 0x7f0800e0

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 2026
    .end local v0           #addresses:Ljava/lang/String;
    .end local v5           #view:Landroid/widget/TextView;
    :cond_1
    :goto_1
    return v6

    .line 2015
    .restart local v0       #addresses:Ljava/lang/String;
    .restart local v5       #view:Landroid/widget/TextView;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .end local v0           #addresses:Ljava/lang/String;
    .end local v5           #view:Landroid/widget/TextView;
    :cond_3
    move v6, v7

    .line 2026
    goto :goto_1
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2446
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mPickingAttachment:Z

    .line 2447
    if-nez p3, :cond_0

    .line 2486
    :goto_0
    return-void

    .line 2450
    :cond_0
    iput p1, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentRequestCode:I

    .line 2451
    iput-object p3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentResultIntent:Landroid/content/Intent;

    .line 2453
    packed-switch p1, :pswitch_data_0

    .line 2482
    const-string v2, "MessageCompose"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can not handle the requestCode ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] in onActivityResult method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2485
    :cond_1
    :goto_1
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    goto :goto_0

    .line 2455
    :pswitch_0
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 2458
    :pswitch_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 2461
    :pswitch_2
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 2464
    :pswitch_3
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 2465
    .local v0, extras:Landroid/os/Bundle;
    if-eqz v0, :cond_2

    .line 2466
    const-string v2, "com.mediatek.contacts.list.pickcontactsresult"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 2467
    .local v1, uri:Landroid/net/Uri;
    if-eqz v1, :cond_1

    .line 2468
    invoke-virtual {p0, v1}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 2471
    .end local v1           #uri:Landroid/net/Uri;
    :cond_2
    const-string v2, "MessageCompose"

    const-string v3, "Can not get extras data from the attaching contact"

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 2476
    .end local v0           #extras:Landroid/os/Bundle;
    :pswitch_4
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 2479
    :pswitch_5
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/email/activity/MessageCompose;->addAttachmentFromUri(Landroid/net/Uri;)V

    goto :goto_1

    .line 2453
    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 938
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->onBack(Z)V

    .line 939
    return-void
.end method

.method public onCancelPressed()V
    .locals 1

    .prologue
    .line 2073
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 2074
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "view"

    .prologue
    .line 2494
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2507
    :goto_0
    return-void

    .line 2497
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 2499
    :sswitch_0
    invoke-direct {p0, p1}, Lcom/android/email/activity/MessageCompose;->onDeleteAttachmentIconClicked(Landroid/view/View;)V

    goto :goto_0

    .line 2502
    :sswitch_1
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->onEditQuotedText()V

    goto :goto_0

    .line 2497
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0f006f -> :sswitch_0
        0x7f0f0105 -> :sswitch_1
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x1

    .line 556
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 557
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mNeedResetDropDownWidth:Z

    .line 558
    iput-boolean v1, p0, Lcom/android/email/activity/MessageCompose;->mCcBccNeedResetDropDownWidth:Z

    .line 559
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_3

    .line 561
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxWidthPortraitMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 566
    :goto_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccountDropdown:Lcom/android/email/activity/MessageCompose$AccountDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 569
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setContentViewStyle(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 575
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 576
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 578
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 579
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->dismissDropDown()V

    .line 582
    :cond_2
    return-void

    .line 564
    :cond_3
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxWidthLandMode()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto :goto_0
.end method

.method public onConfirmDialogCancelPressed()V
    .locals 0

    .prologue
    .line 4018
    return-void
.end method

.method public onConfirmDialogOkPressed()V
    .locals 1

    .prologue
    .line 4012
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->updateQuotedText(Ljava/lang/String;)V

    .line 4013
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "savedInstanceState"

    .prologue
    .line 609
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 610
    invoke-static {p0}, Lcom/android/email/activity/ActivityHelper;->debugSetWindowFlags(Landroid/app/Activity;)V

    .line 611
    const v11, 0x7f04003a

    invoke-virtual {p0, v11}, Landroid/app/Activity;->setContentView(I)V

    .line 613
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v11

    invoke-static {v11}, Lcom/android/email/Controller;->getInstance(Landroid/content/Context;)Lcom/android/email/Controller;

    move-result-object v11

    iput-object v11, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    .line 614
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->initViews()V

    .line 615
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v9, v11, Landroid/content/res/Configuration;->orientation:I

    .line 616
    .local v9, orientation:I
    const/4 v11, 0x1

    if-ne v9, v11, :cond_3

    .line 618
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxWidthPortraitMode()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    .line 625
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v11

    const/4 v12, 0x4

    const/4 v13, 0x4

    invoke-virtual {v11, v12, v13}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 628
    if-eqz p1, :cond_5

    .line 629
    const-string v11, "com.android.email.activity.MessageCompose.draftId"

    const-wide/16 v12, -0x1

    invoke-virtual {p1, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 630
    .local v1, draftId:J
    const-string v11, "com.android.email.activity.MessageCompose.requestId"

    const-wide/16 v12, -0x1

    invoke-virtual {p1, v11, v12, v13}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 631
    .local v4, existingSaveTaskId:J
    const-string v11, "com.android.email.activity.MessageCompose.action"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    .line 632
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-direct {p0, v11}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    .line 633
    sget-object v11, Lcom/android/email/activity/MessageCompose;->sActiveSaveTasks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;

    .line 635
    .local v3, existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    const-wide/16 v11, -0x1

    cmp-long v11, v1, v11

    if-nez v11, :cond_0

    if-eqz v3, :cond_4

    .line 638
    :cond_0
    const/4 v11, 0x0

    invoke-direct {p0, v1, v2, v3, v11}, Lcom/android/email/activity/MessageCompose;->resumeDraft(JLcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;Z)V

    .line 645
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v6

    .line 646
    .local v6, fm:Landroid/app/FragmentManager;
    const-string v11, "LoadingAttachProgressDialog"

    invoke-virtual {v6, v11}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v7

    check-cast v7, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;

    .line 648
    .local v7, fragment:Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;->isLoadingTaskNull()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 649
    const-string v11, "com.android.email.add.attachment.request"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    .line 650
    .local v10, requestCode:I
    const-string v11, "com.android.email.add.attachment.result"

    invoke-virtual {p1, v11}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 651
    .local v0, data:Landroid/content/Intent;
    const/4 v11, 0x0

    invoke-virtual {p0, v10, v11, v0}, Lcom/android/email/activity/MessageCompose;->onActivityResult(IILandroid/content/Intent;)V

    .line 660
    .end local v0           #data:Landroid/content/Intent;
    .end local v1           #draftId:J
    .end local v3           #existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .end local v4           #existingSaveTaskId:J
    .end local v6           #fm:Landroid/app/FragmentManager;
    .end local v7           #fragment:Lcom/android/email/activity/MessageCompose$LoadingAttachProgressDialog;
    .end local v10           #requestCode:I
    :cond_1
    :goto_2
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    if-eqz v11, :cond_2

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    const-string v12, "com.android.email.intent.action.FORWARD"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    const-string v12, "com.android.email.intent.action.REPLY"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    const-string v12, "com.android.email.intent.action.REPLY_ALL"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    .line 662
    :cond_2
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->loadAccountInfo()V

    .line 667
    :goto_3
    invoke-static {}, Lcom/android/email/Email;->addMessageComposeInstance()V

    .line 668
    return-void

    .line 621
    :cond_3
    iget-object v11, p0, Lcom/android/email/activity/MessageCompose;->mEditQuotedText:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->getMaxWidthLandMode()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setMaxWidth(I)V

    goto/16 :goto_0

    .line 642
    .restart local v1       #draftId:J
    .restart local v3       #existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .restart local v4       #existingSaveTaskId:J
    :cond_4
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/email/activity/MessageCompose;->resolveIntent(Landroid/content/Intent;)V

    goto :goto_1

    .line 655
    .end local v1           #draftId:J
    .end local v3           #existingSaveTask:Lcom/android/email/activity/MessageCompose$SendOrSaveMessageTask;
    .end local v4           #existingSaveTaskId:J
    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    .line 656
    .local v8, intent:Landroid/content/Intent;
    invoke-virtual {v8}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    .line 657
    invoke-direct {p0, v8}, Lcom/android/email/activity/MessageCompose;->resolveIntent(Landroid/content/Intent;)V

    goto :goto_2

    .line 664
    .end local v8           #intent:Landroid/content/Intent;
    :cond_6
    const-string v11, "MessageCompose"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Disable change account for action :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 2775
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 2776
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2777
    const/4 v0, 0x1

    return v0
.end method

.method public onDeleteMessageConfirmationDialogOkPressed()V
    .locals 4

    .prologue
    .line 2114
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 2121
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mController:Lcom/android/email/Controller;

    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v1, v1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-virtual {v0, v1, v2}, Lcom/android/email/Controller;->deleteMessage(J)V

    .line 2123
    :cond_0
    const v0, 0x7f080115

    invoke-static {p0, v0}, Lcom/android/emailcommon/utility/Utility;->showToast(Landroid/content/Context;I)V

    .line 2124
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 2125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2126
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 880
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    .line 882
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;->cancellAllInterrupt()V

    .line 884
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_0

    .line 885
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterTo:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->close()V

    .line 887
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_1

    .line 888
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterCc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->close()V

    .line 890
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    instance-of v0, v0, Lcom/android/email/EmailAddressAdapter;

    if-eqz v0, :cond_2

    .line 891
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAddressAdapterBcc:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v0, Lcom/android/email/EmailAddressAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/CompositeCursorAdapter;->close()V

    .line 894
    :cond_2
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mDialogBuilder:Landroid/app/AlertDialog$Builder;

    .line 895
    iput-object v1, p0, Lcom/android/email/activity/MessageCompose;->mAttachmentTypeSelectorAdapter:Lcom/android/email/activity/AttachmentTypeSelectorAdapter;

    .line 897
    invoke-static {}, Lcom/android/email/Email;->removeMessageComposeInstance()V

    .line 898
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 899
    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .parameter "view"
    .parameter "focused"

    .prologue
    .line 1649
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1668
    :cond_0
    :goto_0
    return-void

    .line 1652
    :pswitch_0
    invoke-direct {p0, p2}, Lcom/android/email/activity/MessageCompose;->setContentViewStyle(Z)V

    .line 1654
    if-eqz p2, :cond_0

    .line 1658
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    if-nez v0, :cond_0

    .line 1664
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-static {v0}, Lcom/android/email/activity/MessageCompose;->getAccountSignature(Lcom/android/emailcommon/provider/Account;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/email/activity/MessageCompose;->setMessageContentSelection(Ljava/lang/String;)V

    goto :goto_0

    .line 1649
    nop

    :pswitch_data_0
    .packed-switch 0x7f0f0083
        :pswitch_0
    .end packed-switch
.end method

.method public onLoadAttachmentsConfirmDialogOkPressed(Landroid/os/Bundle;)V
    .locals 4
    .parameter "bundle"

    .prologue
    .line 3516
    if-nez p1, :cond_1

    .line 3517
    const-string v2, "MessageCompose"

    const-string v3, "LoadAttachmentsConfirmDialog get Bundle is null "

    invoke-static {v2, v3}, Lcom/android/emailcommon/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3526
    :cond_0
    :goto_0
    return-void

    .line 3520
    :cond_1
    const-string v2, "com.email.attachment.uris"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3522
    .local v1, uris:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    const-string v2, "com.email.attachment.addnumber"

    const/4 v3, -0x1

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 3523
    .local v0, addNumber:I
    if-eqz v1, :cond_0

    .line 3524
    invoke-direct {p0, v1, v0}, Lcom/android/email/activity/MessageCompose;->startAsyncTaskLoadMoreAttachments(Ljava/util/ArrayList;I)V

    goto :goto_0
.end method

.method public onOkPressed()V
    .locals 0

    .prologue
    .line 2068
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->triggerSend()V

    .line 2069
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2558
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->handleCommand(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2559
    const/4 v0, 0x1

    .line 2561
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 858
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 859
    invoke-static {p0}, Lcom/android/emailcommon/utility/DataCollectUtils;->stopRecord(Landroid/content/Context;)V

    .line 860
    sput-boolean v1, Lcom/android/email/activity/EmailActivity;->sEmailActivityResumed:Z

    .line 862
    iget-boolean v2, p0, Lcom/android/email/activity/MessageCompose;->mRunTestCase:Z

    if-eqz v2, :cond_0

    .line 863
    const-string v0, "MessageCompose"

    const-string v1, "Run testcase not save draft to database."

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    :goto_0
    return-void

    .line 867
    :cond_0
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsBackground:Z

    .line 868
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->saveIfNeeded()V

    .line 869
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getError()Ljava/lang/CharSequence;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_1
    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsShowRecipientError:Z

    .line 870
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 869
    goto :goto_1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 5
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    .line 2782
    const v2, 0x7f0f001a

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mDraftNeedsSaving:Z

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2783
    const v2, 0x7f0f0076

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2784
    .local v0, addCcBcc:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 2786
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v2, v3

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2789
    :cond_1
    const v2, 0x7f0f012e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2790
    .local v1, insertQuickResponse:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2791
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuickResponsesAvailable:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2792
    return v3

    .line 2786
    .end local v1           #insertQuickResponse:Landroid/view/MenuItem;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onQuickResponseSelected(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 2099
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v1

    .line 2100
    .local v1, start:I
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v0

    .line 2101
    .local v0, end:I
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->getEditableText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2, v1, v0, p1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2102
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 702
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->removeListeners()V

    .line 703
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 704
    const-string v0, "com.android.email.activity.MessageCompose.ccShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 705
    invoke-direct {p0, v1}, Lcom/android/email/activity/MessageCompose;->showCcBccFields(Z)V

    .line 707
    :cond_0
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    const-string v0, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedText:Landroid/webkit/WebView;

    const-string v3, "com.android.email.activity.MessageCompose.quotedTextShown"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 711
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->addListeners()V

    .line 712
    const-string v0, "com.android.email.activity.MessageCompose.recipient.error"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mIsShowRecipientError:Z

    .line 714
    const-string v0, "com.android.email.activity.MessageCompose.quotedCacheText"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;

    .line 715
    return-void

    :cond_1
    move v0, v2

    .line 707
    goto :goto_0

    :cond_2
    move v1, v2

    .line 709
    goto :goto_1
.end method

.method public onResume()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 758
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 760
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-nez v4, :cond_3

    .line 761
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v4

    const-string v5, "message_id"

    const-wide/16 v6, -0x1

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 762
    .local v2, sourceMessageId:J
    invoke-static {p0, v2, v3}, Lcom/android/emailcommon/provider/EmailContent$Message;->restoreMessageWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/EmailContent$Message;

    move-result-object v1

    .line 763
    .local v1, message:Lcom/android/emailcommon/provider/EmailContent$Message;
    if-eqz v1, :cond_0

    .line 764
    iget-wide v4, v1, Lcom/android/emailcommon/provider/EmailContent$Message;->mAccountKey:J

    invoke-static {p0, v4, v5, v8}, Lcom/android/emailcommon/utility/DataCollectUtils;->startRecord(Landroid/content/Context;JZ)V

    .line 774
    .end local v1           #message:Lcom/android/emailcommon/provider/EmailContent$Message;
    .end local v2           #sourceMessageId:J
    :cond_0
    :goto_0
    sget-boolean v4, Lcom/android/email/activity/EmailActivity;->sEmailActivityResumed:Z

    if-nez v4, :cond_1

    .line 775
    sput-boolean v9, Lcom/android/email/activity/EmailActivity;->sRecordOpening:Z

    .line 776
    invoke-static {}, Lcom/android/emailcommon/utility/DataCollectUtils;->clearRecordedList()V

    .line 779
    :cond_1
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mIsBackground:Z

    .line 780
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mNeedResetDropDownWidth:Z

    .line 781
    iput-boolean v9, p0, Lcom/android/email/activity/MessageCompose;->mCcBccNeedResetDropDownWidth:Z

    .line 784
    invoke-static {}, Lcom/android/email/Email;->getNotifyUiAccountsChanged()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 786
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v4, :cond_4

    .line 787
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v0

    .line 788
    .local v0, account:Lcom/android/emailcommon/provider/Account;
    if-nez v0, :cond_4

    .line 789
    invoke-static {p0}, Lcom/android/email/activity/Welcome;->actionStart(Landroid/app/Activity;)V

    .line 790
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 804
    .end local v0           #account:Lcom/android/emailcommon/provider/Account;
    :cond_2
    :goto_1
    return-void

    .line 767
    :cond_3
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    iget-wide v4, v4, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {p0, v4, v5, v8}, Lcom/android/emailcommon/utility/DataCollectUtils;->startRecord(Landroid/content/Context;JZ)V

    goto :goto_0

    .line 797
    :cond_4
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    if-eqz v4, :cond_5

    .line 798
    new-instance v5, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;

    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mTaskTracker:Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;

    invoke-direct {v5, p0, v4}, Lcom/android/email/activity/MessageCompose$QuickResponseChecker;-><init>(Lcom/android/email/activity/MessageCompose;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;)V

    new-array v6, v9, [Ljava/lang/Void;

    const/4 v4, 0x0

    check-cast v4, Ljava/lang/Void;

    aput-object v4, v6, v8

    invoke-virtual {v5, v6}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeParallel([Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 800
    :cond_5
    iget-boolean v4, p0, Lcom/android/email/activity/MessageCompose;->mIsShowRecipientError:Z

    if-eqz v4, :cond_2

    .line 801
    iget-object v4, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    const v5, 0x7f0800df

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    .line 802
    iput-boolean v8, p0, Lcom/android/email/activity/MessageCompose;->mIsShowRecipientError:Z

    goto :goto_1
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .parameter "outState"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 910
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget-wide v0, v2, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    .line 911
    .local v0, draftId:J
    const-wide/16 v5, -0x1

    cmp-long v2, v0, v5

    if-eqz v2, :cond_0

    .line 912
    const-string v2, "com.android.email.activity.MessageCompose.draftId"

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 914
    :cond_0
    const-string v5, "com.android.email.activity.MessageCompose.ccShown"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mCcBccContainer:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-virtual {p1, v5, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 915
    const-string v2, "com.android.email.activity.MessageCompose.quotedTextShown"

    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextArea:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getVisibility()I

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 917
    const-string v2, "com.android.email.activity.MessageCompose.action"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    const-string v2, "com.android.email.activity.MessageCompose.requestId"

    iget-wide v3, p0, Lcom/android/email/activity/MessageCompose;->mLastSaveTaskId:J

    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 922
    const-string v2, "com.android.email.activity.MessageCompose.recipient.error"

    iget-boolean v3, p0, Lcom/android/email/activity/MessageCompose;->mIsShowRecipientError:Z

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 924
    const-string v2, "com.android.email.add.attachment.request"

    iget v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentRequestCode:I

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 925
    const-string v2, "com.android.email.add.attachment.result"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAddAttachmentResultIntent:Landroid/content/Intent;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 929
    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 930
    const-string v2, "com.android.email.activity.MessageCompose.quotedCacheText"

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mQuotedTextCache:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 933
    :cond_1
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 934
    return-void

    :cond_2
    move v2, v4

    .line 914
    goto :goto_0

    :cond_3
    move v3, v4

    .line 915
    goto :goto_1
.end method

.method processDraftMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Z)V
    .locals 7
    .parameter "message"
    .parameter "restoreViews"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1363
    if-eqz p2, :cond_2

    .line 1364
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mSubjectView:Landroid/widget/EditText;

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1365
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v2

    .line 1366
    .local v2, to:[Lcom/android/emailcommon/mail/Address;
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3, v2}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 1367
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v1

    .line 1368
    .local v1, cc:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v1

    if-lez v3, :cond_0

    .line 1369
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3, v1}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 1371
    :cond_0
    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mBcc:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v0

    .line 1372
    .local v0, bcc:[Lcom/android/emailcommon/mail/Address;
    array-length v3, v0

    if-lez v3, :cond_1

    .line 1373
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mBccView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v3, v0}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 1376
    :cond_1
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1377
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAccount:Lcom/android/emailcommon/provider/Account;

    invoke-direct {p0, v3}, Lcom/android/email/activity/MessageCompose;->addBccMySelf(Lcom/android/emailcommon/provider/Account;)V

    .line 1378
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled(Z)V

    .line 1379
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 1381
    .end local v0           #bcc:[Lcom/android/emailcommon/mail/Address;
    .end local v1           #cc:[Lcom/android/emailcommon/mail/Address;
    .end local v2           #to:[Lcom/android/emailcommon/mail/Address;
    :cond_2
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->setMessageChanged(Z)V

    .line 1384
    iget-wide v5, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    iget-object v5, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTextReply:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtmlReply:Ljava/lang/String;

    invoke-direct {p0, v3, v5, v6}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 1385
    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mDraft:Lcom/android/emailcommon/provider/EmailContent$Message;

    iget v3, v3, Lcom/android/emailcommon/provider/EmailContent$Message;->mFlags:I

    const/high16 v5, 0x2

    and-int/2addr v3, v5

    if-nez v3, :cond_3

    const/4 v3, 0x1

    :goto_0
    invoke-direct {p0, v3, v4}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 1387
    return-void

    :cond_3
    move v3, v4

    .line 1385
    goto :goto_0
.end method

.method processSourceMessage(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;)V
    .locals 6
    .parameter "message"
    .parameter "account"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 3135
    iget-object v0, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mSubject:Ljava/lang/String;

    .line 3136
    .local v0, subject:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3137
    const-string v0, ""

    .line 3140
    :cond_0
    const-string v1, "com.android.email.intent.action.REPLY"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3141
    :cond_1
    const-string v1, "com.android.email.intent.action.REPLY_ALL"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/android/email/activity/MessageCompose;->setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;Z)V

    .line 3143
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setReplyOrReplyAllSubjectPrefix(Ljava/lang/String;)V

    .line 3144
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 3145
    invoke-direct {p0, v5, v4}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    .line 3159
    :goto_0
    invoke-direct {p0, p2}, Lcom/android/email/activity/MessageCompose;->addBccMySelf(Lcom/android/emailcommon/provider/Account;)V

    .line 3160
    invoke-direct {p0, v4}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled(Z)V

    .line 3161
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->setNewMessageFocus()V

    .line 3162
    return-void

    .line 3146
    :cond_2
    const-string v1, "com.android.email.intent.action.FORWARD"

    iget-object v2, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3148
    const-string v1, "com.android.email.intent.action.EDIT_DRAFT"

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3149
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->clearAddressViews()V

    .line 3152
    :cond_3
    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setForwardSubjectPrefix(Ljava/lang/String;)V

    .line 3153
    iget-wide v1, p1, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mText:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mHtml:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3}, Lcom/android/email/activity/MessageCompose;->displayQuotedText(Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;)V

    .line 3154
    invoke-direct {p0, v5, v4}, Lcom/android/email/activity/MessageCompose;->setIncludeQuotedText(ZZ)V

    goto :goto_0

    .line 3156
    :cond_4
    const-string v1, "MessageCompose"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected action for a call to processSourceMessage "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/email/activity/MessageCompose;->mAction:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method processSourceMessageAttachments(Ljava/util/List;Ljava/util/List;Z)Z
    .locals 8
    .parameter
    .parameter
    .parameter "include"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/emailcommon/provider/EmailContent$Attachment;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 3257
    .local p1, current:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    .local p2, sourceAttachments:Ljava/util/List;,"Ljava/util/List<Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 3258
    .local v2, currentIds:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 3259
    .local v1, currSourceKey:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/emailcommon/provider/EmailContent$Attachment;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3260
    .local v0, attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3261
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSourceAttachmentKey:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3264
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_0
    const/4 v3, 0x0

    .line 3265
    .local v3, dirty:Z
    if-eqz p3, :cond_2

    .line 3267
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3268
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3270
    const-string v6, "MessageCompose"

    const-string v7, "add souce attachment to current list"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v0}, Lcom/android/emailcommon/provider/EmailContent$Attachment;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3272
    .local v5, tempAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    iput-wide v6, v5, Lcom/android/emailcommon/provider/EmailContent$Attachment;->mSourceAttachmentKey:J

    .line 3273
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3274
    const/4 v3, 0x1

    goto :goto_1

    .line 3279
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    .end local v5           #tempAttachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    .line 3280
    .restart local v0       #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 3282
    :cond_4
    const-string v6, "MessageCompose"

    const-string v7, "remove souce attachment from current list"

    invoke-static {v6, v7}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3283
    iget-wide v6, v0, Lcom/android/emailcommon/provider/EmailContent;->mId:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/emailcommon/provider/EmailContent$Attachment;

    invoke-direct {p0, p1, v6}, Lcom/android/email/activity/MessageCompose;->deleteAttachment(Ljava/util/List;Lcom/android/emailcommon/provider/EmailContent$Attachment;)V

    .line 3284
    const/4 v3, 0x1

    goto :goto_2

    .line 3289
    .end local v0           #attachment:Lcom/android/emailcommon/provider/EmailContent$Attachment;
    :cond_5
    return v3
.end method

.method public runTestCase()V
    .locals 1

    .prologue
    .line 336
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/email/activity/MessageCompose;->mRunTestCase:Z

    .line 337
    return-void
.end method

.method public setFocusShifter(II)V
    .locals 3
    .parameter "fromViewId"
    .parameter "targetViewId"

    .prologue
    .line 1036
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1037
    .local v0, label:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1038
    invoke-static {p0, p2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/app/Activity;I)Landroid/view/View;

    move-result-object v1

    .line 1039
    .local v1, target:Landroid/view/View;
    new-instance v2, Lcom/android/email/activity/MessageCompose$4;

    invoke-direct {v2, p0, v1}, Lcom/android/email/activity/MessageCompose$4;-><init>(Lcom/android/email/activity/MessageCompose;Landroid/view/View;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1046
    .end local v1           #target:Landroid/view/View;
    :cond_0
    return-void
.end method

.method setInitialComposeText(Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3
    .parameter "text"
    .parameter "signature"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 2802
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2803
    const/4 v0, 0x0

    .line 2804
    .local v0, textLength:I
    if-eqz p1, :cond_0

    .line 2805
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2806
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 2808
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 2809
    if-eqz v0, :cond_1

    add-int/lit8 v1, v0, -0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_2

    .line 2810
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2812
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 2815
    iget-object v1, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 2817
    :cond_3
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 1
    .parameter "intent"

    .prologue
    .line 720
    invoke-super {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 721
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/email/activity/MessageCompose;->setAction(Ljava/lang/String;)V

    .line 722
    return-void
.end method

.method setMessageContentSelection(Ljava/lang/String;)V
    .locals 7
    .parameter "signature"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3297
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/TextView;->length()I

    move-result v2

    .line 3298
    .local v2, selection:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 3299
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 3300
    .local v3, signatureLength:I
    sub-int v0, v2, v3

    .line 3301
    .local v0, estimatedSelection:I
    if-ltz v0, :cond_1

    .line 3302
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    .line 3303
    .local v4, text:Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .line 3305
    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    add-int v5, v0, v1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    if-ne v5, v6, :cond_0

    .line 3306
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3308
    :cond_0
    if-ne v1, v3, :cond_1

    .line 3309
    move v2, v0

    .line 3310
    :goto_1
    if-lez v2, :cond_1

    add-int/lit8 v5, v2, -0x1

    invoke-interface {v4, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0xa

    if-ne v5, v6, :cond_1

    .line 3311
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 3316
    .end local v0           #estimatedSelection:I
    .end local v1           #i:I
    .end local v3           #signatureLength:I
    .end local v4           #text:Ljava/lang/CharSequence;
    :cond_1
    iget-object v5, p0, Lcom/android/email/activity/MessageCompose;->mMessageContentView:Landroid/widget/EditText;

    invoke-virtual {v5, v2, v2}, Landroid/widget/EditText;->setSelection(II)V

    .line 3317
    return-void
.end method

.method setupAddressViews(Lcom/android/emailcommon/provider/EmailContent$Message;Lcom/android/emailcommon/provider/Account;Z)V
    .locals 9
    .parameter "message"
    .parameter "account"
    .parameter "replyAll"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 3101
    invoke-direct {p0}, Lcom/android/email/activity/MessageCompose;->clearAddressViews()V

    .line 3104
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mReplyTo:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 3105
    .local v6, replyToAddresses:[Lcom/android/emailcommon/mail/Address;
    array-length v7, v6

    if-nez v7, :cond_0

    .line 3106
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mFrom:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/emailcommon/mail/Address;->unpack(Ljava/lang/String;)[Lcom/android/emailcommon/mail/Address;

    move-result-object v6

    .line 3108
    :cond_0
    iget-object v7, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v7, v6}, Lcom/android/email/activity/MessageCompose;->addAddresses(Landroid/widget/MultiAutoCompleteTextView;[Lcom/android/emailcommon/mail/Address;)V

    .line 3110
    if-eqz p3, :cond_2

    .line 3111
    iget-object v5, p2, Lcom/android/emailcommon/provider/Account;->mEmailAddress:Ljava/lang/String;

    .line 3113
    .local v5, ourAddress:Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3114
    .local v1, allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    move-object v2, v6

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v0, v2, v3

    .line 3115
    .local v0, address:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3114
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 3117
    .end local v0           #address:Lcom/android/emailcommon/mail/Address;
    :cond_1
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mTo:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mToView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 3118
    iget-object v7, p1, Lcom/android/emailcommon/provider/EmailContent$Message;->mCc:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/email/activity/MessageCompose;->mCcView:Landroid/widget/MultiAutoCompleteTextView;

    invoke-static {v7, v5, v8, v1}, Lcom/android/email/activity/MessageCompose;->safeAddAddresses(Ljava/lang/String;Ljava/lang/String;Landroid/widget/MultiAutoCompleteTextView;Ljava/util/ArrayList;)Z

    .line 3120
    .end local v1           #allAddresses:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    .end local v2           #arr$:[Lcom/android/emailcommon/mail/Address;
    .end local v3           #i$:I
    .end local v4           #len$:I
    .end local v5           #ourAddress:Ljava/lang/String;
    :cond_2
    const/4 v7, 0x0

    invoke-direct {p0, v7}, Lcom/android/email/activity/MessageCompose;->showCcBccFieldsIfFilled(Z)V

    .line 3121
    return-void
.end method

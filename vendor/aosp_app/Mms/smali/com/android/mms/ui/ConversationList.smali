.class public Lcom/android/mms/ui/ConversationList;
.super Landroid/app/ListActivity;
.source "ConversationList.java"

# interfaces
.implements Lcom/android/mms/transaction/MmsSystemEventReceiver$OnSimInforChangedListener;
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;
.implements Lcom/mediatek/mms/ext/IMmsConversationHost;
.implements Lcom/mediatek/mms/ipmessage/INotificationsListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;,
        Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;,
        Lcom/android/mms/ui/ConversationList$BaseProgressQueryHandler;,
        Lcom/android/mms/ui/ConversationList$ItemLongClickListener;,
        Lcom/android/mms/ui/ConversationList$ModeCallback;,
        Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/ConversationList$DeleteThreadListener;
    }
.end annotation


# static fields
.field private static final ALMOND_COLOR:I = -0x485f9d

.field private static final CHANGE_SCROLL_LISTENER_MIN_CURSOR_COUNT:I = 0x64

.field private static final CHECKED_MESSAGE_LIMITS:Ljava/lang/String; = "checked_message_limits"

.field private static final CONV_TAG:Ljava/lang/String; = "Mms/convList"

.field private static final DEBUG:Z = false

.field private static final DEFAULT_COLOR:I = 0x0

.field public static final DELETE_CONVERSATION_TOKEN:I = 0x709

.field private static final DELETE_OBSOLETE_THREADS_TOKEN:I = 0x70b

.field private static final DISPLAY_UNREAD_COUNT_CONTENT_FOR_ABOVE_99:Ljava/lang/String; = "99+"

.field private static final DROP_DOWN_KEY_NAME:Ljava/lang/String; = "drop_down_menu_text"

.field public static final HAVE_LOCKED_MESSAGES_TOKEN:I = 0x70a

.field private static final IPMSG_TAG:Ljava/lang/String; = "Mms/ipmsg/ConvList"

.field private static final KEY_SELECTION_SIMID:Ljava/lang/String; = "SIMID"

.field private static final LAST_LIST_OFFSET:Ljava/lang/String; = "last_list_offset"

.field private static final LAST_LIST_POS:Ljava/lang/String; = "last_list_pos"

.field private static final LOCAL_LOGV:Z = false

.field private static final MAX_DISPLAY_UNREAD_COUNT:I = 0x63

.field public static final MAX_FONT_SCALE:F = 1.1f

.field public static final MENU_ADD_TO_CONTACTS:I = 0x3

.field public static final MENU_DELETE:I = 0x0

.field public static final MENU_VIEW:I = 0x1

.field public static final MENU_VIEW_CONTACT:I = 0x2

.field private static final MINT_COLOR:I = -0xff3a70

.field public static final OPTION_CONVERSATION_LIST_ALL:I = 0x0

.field public static final OPTION_CONVERSATION_LIST_GROUP_CHATS:I = 0x2

.field public static final OPTION_CONVERSATION_LIST_IMPORTANT:I = 0x1

.field public static final OPTION_CONVERSATION_LIST_SPAM:I = 0x3

.field private static final RASPBERRY_COLOR:I = -0x1db188

.field private static final REQUEST_CODE_INVITE:I = 0x65

.field private static final REQUEST_CODE_SELECT_CONTACT_FOR_GROUP:I = 0x64

.field private static final SAVE_HISTORY_MIMETYPE_TEXT:Ljava/lang/String; = "text/plain"

.field private static final SAVE_HISTORY_MIMETYPE_ZIP:Ljava/lang/String; = "application/zip"

.field private static final SAVE_HISTORY_SUFFIX:Ljava/lang/String; = ".zip"

.field private static final TAG:Ljava/lang/String; = "ConversationList"

.field private static final THREAD_LIST_QUERY_TOKEN:I = 0x6a5

.field private static final UNREAD_THREADS_QUERY_TOKEN:I = 0x6a6

.field private static final WP_TAG:Ljava/lang/String; = "Mms/WapPush"

.field public static mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

.field private static sActivity:Landroid/app/Activity;

.field public static sConversationListOption:I


# instance fields
.field private mAccountDropdown:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

.field private mActionMode:Landroid/view/ActionMode;

.field private mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;

.field private mAdvancedSearchView:Lcom/android/mms/ui/AdvancedSearchView;

.field private mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

.field private final mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

.field private mContext:Landroid/content/Context;

.field private final mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

.field private mConversationSpinner:Landroid/view/View;

.field private mDataValid:Z

.field private final mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

.field private mDisableSearchFalg:Z

.field private mDropdownAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

.field private mEmptyViewDefault:Landroid/view/View;

.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private mImageSearchBtn:Landroid/widget/ImageButton;

.field private mIsDestroy:Z

.field private mIsInActivity:Z

.field private mIsRunAsyncTask:Z

.field mIsSendEmail:Z

.field private mIsShowMmsApplication:Z

.field private mIsShowSIMIndicator:Z

.field private mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

.field private mNeedQuery:Z

.field private mNeedToMarkAsSeen:Z

.field private mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

.field private mNetworkStatusBar:Landroid/widget/LinearLayout;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSaveChatHistory:Landroid/app/ProgressDialog;

.field private mSavedFirstItemOffset:I

.field private mSavedFirstVisiblePosition:I

.field private mScrollListener:Lcom/android/mms/ui/MyScrollListener;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

.field private mSelectionMenuItem:Landroid/view/MenuItem;

.field private mSimSmsItem:Landroid/view/MenuItem;

.field private mSpinnerTextView:Landroid/widget/TextView;

.field private mStatusBarManager:Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mType:I

.field private mTypingCounter:I

.field private mUnreadConvCount:Landroid/widget/TextView;

.field private mUnreadLayout:Landroid/widget/LinearLayout;

.field private needCloseSearchView:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 241
    sput-object v1, Lcom/android/mms/ui/ConversationList;->sActivity:Landroid/app/Activity;

    .line 281
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    .line 311
    sput-object v1, Lcom/android/mms/ui/ConversationList;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 168
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 204
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 225
    new-instance v0, Lcom/android/mms/ui/MyScrollListener;

    const/16 v1, 0x64

    const-string v2, "ConversationList_Scroll_Tread"

    invoke-direct {v0, v1, v2}, Lcom/android/mms/ui/MyScrollListener;-><init>(ILjava/lang/String;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mScrollListener:Lcom/android/mms/ui/MyScrollListener;

    .line 233
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationList;->mDisableSearchFalg:Z

    .line 235
    new-instance v0, Lcom/android/mms/ui/ConversationList$ModeCallback;

    invoke-direct {v0, p0, v4}, Lcom/android/mms/ui/ConversationList$ModeCallback;-><init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;

    .line 245
    iput-object v4, p0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    .line 280
    iput-object v4, p0, Lcom/android/mms/ui/ConversationList;->mContext:Landroid/content/Context;

    .line 286
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationList;->mIsSendEmail:Z

    .line 297
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z

    .line 298
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z

    .line 303
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationList;->mIsDestroy:Z

    .line 315
    iput-boolean v3, p0, Lcom/android/mms/ui/ConversationList;->needCloseSearchView:Z

    .line 444
    new-instance v0, Lcom/android/mms/ui/ConversationList$1;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$1;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    .line 752
    new-instance v0, Lcom/android/mms/ui/ConversationList$4;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$4;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 1180
    new-instance v0, Lcom/android/mms/ui/ConversationList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$6;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    .line 1381
    new-instance v0, Lcom/android/mms/ui/ConversationList$8;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$8;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 1518
    new-instance v0, Lcom/android/mms/ui/ConversationList$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/ConversationList$9;-><init>(Lcom/android/mms/ui/ConversationList;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    .line 2312
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsShowSIMIndicator:Z

    .line 3135
    return-void
.end method

.method static synthetic access$100(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/ConversationList;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mImageSearchBtn:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mType:I

    return v0
.end method

.method static synthetic access$1202(Lcom/android/mms/ui/ConversationList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput p1, p0, Lcom/android/mms/ui/ConversationList;->mType:I

    return p1
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/ConversationList;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->showMmsApplication()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/ConversationList;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->updateEmptyView(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z

    return v0
.end method

.method static synthetic access$2402(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z

    return p1
.end method

.method static synthetic access$2500(Lcom/android/mms/ui/ConversationList;)Landroid/view/ActionMode;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/ConversationList;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$ModeCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/mms/ui/ConversationList;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mOptionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/ConversationList;Landroid/view/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->setDeleteMenuVisible(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return v0
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/ConversationList;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput p1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/ConversationList;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget v0, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    return v0
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/ConversationList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/mms/ui/ConversationList;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$3302(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mDisableSearchFalg:Z

    return p1
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/CustomMenu$DropDownMenu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/CustomMenu$DropDownMenu;)Lcom/android/mms/ui/CustomMenu$DropDownMenu;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mSelectionMenu:Lcom/android/mms/ui/CustomMenu$DropDownMenu;

    return-object p1
.end method

.method static synthetic access$3502(Lcom/android/mms/ui/ConversationList;Landroid/view/MenuItem;)Landroid/view/MenuItem;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mSelectionMenuItem:Landroid/view/MenuItem;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/mms/ui/ConversationList;Ljava/util/HashSet;Landroid/view/ActionMode;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->showExportDialog(Ljava/util/HashSet;Landroid/view/ActionMode;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsRunAsyncTask:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->mIsRunAsyncTask:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/mms/ui/ConversationList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->updateSelectionTitle()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/AsyncDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object v0
.end method

.method static synthetic access$4102(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/AsyncDialog;)Lcom/android/mms/ui/AsyncDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    return-object p1
.end method

.method static synthetic access$4500(Lcom/android/mms/ui/ConversationList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsDestroy:Z

    return v0
.end method

.method static synthetic access$4800(Lcom/android/mms/ui/ConversationList;)Landroid/widget/ArrayAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mAccountDropdown:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/mms/ui/ConversationList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mConversationSpinner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/mms/ui/ConversationList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->onAccountSpinnerItemClicked(I)V

    return-void
.end method

.method static synthetic access$5200(Lcom/android/mms/ui/ConversationList;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSaveChatHistory:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/mms/ui/ConversationList;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/mms/ui/ConversationList;->mSaveChatHistory:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/mms/ui/ConversationList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 168
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initSpinnerListAdapter()V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/mms/ui/ConversationList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyViewDefault:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/mms/ui/ConversationList;)Lcom/mediatek/ipmsg/ui/ConversationEmptyView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/mms/ui/ConversationList;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/mms/ui/ConversationList;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    invoke-direct {p0, p1}, Lcom/android/mms/ui/ConversationList;->showInternetStatusBar(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 168
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/ConversationList;->log(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/mms/ui/ConversationList;)Lcom/android/mms/ui/ConversationListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 168
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/ConversationList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/android/mms/ui/ConversationList;->needCloseSearchView:Z

    return p1
.end method

.method public static confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V
    .locals 3
    .parameter "threadId"
    .parameter "handler"

    .prologue
    .line 1275
    const/4 v0, 0x0

    .line 1276
    .local v0, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-wide/16 v1, -0x1

    cmp-long v1, p0, v1

    if-eqz v1, :cond_0

    .line 1277
    new-instance v0, Ljava/util/ArrayList;

    .end local v0           #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1278
    .restart local v0       #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1280
    :cond_0
    invoke-static {v0, p2}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    .line 1281
    return-void
.end method

.method public static confirmDeleteThreadDialog(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Ljava/util/Collection;ZLandroid/content/Context;)V
    .locals 15
    .parameter "listener"
    .parameter
    .parameter "hasLockedMessages"
    .parameter "context"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/mms/ui/ConversationList$DeleteThreadListener;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;Z",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1308
    .local p1, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const v1, 0x7f04001f

    const/4 v2, 0x0

    move-object/from16 v0, p3

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    .line 1309
    .local v10, contents:Landroid/view/View;
    const v1, 0x7f0f0087

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1311
    .local v13, msg:Landroid/widget/TextView;
    if-nez p1, :cond_4

    .line 1312
    const v1, 0x7f0b02b9

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1320
    :goto_0
    const v1, 0x7f0f0088

    invoke-virtual {v10, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    .line 1321
    .local v8, checkbox:Landroid/widget/CheckBox;
    if-nez p2, :cond_5

    .line 1322
    const/16 v1, 0x8

    invoke-virtual {v8, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1339
    :goto_1
    const/4 v11, 0x0

    .line 1340
    .local v11, cursor:Landroid/database/Cursor;
    const/4 v14, 0x0

    .line 1341
    .local v14, smsId:I
    const/4 v12, 0x0

    .line 1342
    .local v12, mmsId:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    move-result-object v11

    .line 1344
    if-eqz v11, :cond_1

    .line 1346
    :try_start_0
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1347
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .line 1348
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmDeleteThreadDialog max SMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1351
    :cond_0
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1352
    const/4 v11, 0x0

    .line 1355
    :cond_1
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

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

    move-result-object v11

    .line 1357
    if-eqz v11, :cond_3

    .line 1359
    :try_start_1
    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1360
    const/4 v1, 0x0

    invoke-interface {v11, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 1361
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "confirmDeleteThreadDialog max MMS id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1364
    :cond_2
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1365
    const/4 v11, 0x0

    .line 1368
    :cond_3
    invoke-virtual {p0, v12, v14}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setMaxMsgId(II)V

    .line 1371
    new-instance v7, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p3

    invoke-direct {v7, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1372
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

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0296

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1379
    return-void

    .line 1315
    .end local v7           #builder:Landroid/app/AlertDialog$Builder;
    .end local v8           #checkbox:Landroid/widget/CheckBox;
    .end local v11           #cursor:Landroid/database/Cursor;
    .end local v12           #mmsId:I
    .end local v14           #smsId:I
    :cond_4
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v9

    .line 1316
    .local v9, cnt:I
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v9, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 1325
    .end local v9           #cnt:I
    .restart local v8       #checkbox:Landroid/widget/CheckBox;
    :cond_5
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "serviceId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static/range {p3 .. p3}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1326
    invoke-static/range {p3 .. p3}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1327
    invoke-static/range {p3 .. p3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x75

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1330
    :cond_6
    invoke-virtual {v8}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/mms/ui/ConversationList$DeleteThreadListener;->setDeleteLockedMessage(Z)V

    .line 1331
    new-instance v1, Lcom/android/mms/ui/ConversationList$7;

    invoke-direct {v1, p0, v8}, Lcom/android/mms/ui/ConversationList$7;-><init>(Lcom/android/mms/ui/ConversationList$DeleteThreadListener;Landroid/widget/CheckBox;)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_1

    .line 1351
    .restart local v11       #cursor:Landroid/database/Cursor;
    .restart local v12       #mmsId:I
    .restart local v14       #smsId:I
    :catchall_0
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1352
    const/4 v11, 0x0

    throw v1

    .line 1364
    :catchall_1
    move-exception v1

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 1365
    const/4 v11, 0x0

    throw v1
.end method

.method public static confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V
    .locals 1
    .parameter
    .parameter "handler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/content/AsyncQueryHandler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1291
    .local p0, threadIds:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    const/16 v0, 0x70a

    invoke-static {p1, p0, v0}, Lcom/android/mms/data/Conversation;->startQueryHaveLockedMessages(Landroid/content/AsyncQueryHandler;Ljava/util/Collection;I)V

    .line 1293
    return-void
.end method

.method public static createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "address"

    .prologue
    .line 1166
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1167
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1168
    invoke-static {p0}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1169
    const-string v1, "email"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1175
    :goto_0
    const/high16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1177
    return-object v0

    .line 1171
    :cond_0
    const-string v1, "phone"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1172
    const-string v1, "phone_type"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private createNewMessage()V
    .locals 2

    .prologue
    .line 1145
    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1146
    return-void
.end method

.method public static getContext()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 2329
    sget-object v0, Lcom/android/mms/ui/ConversationList;->sActivity:Landroid/app/Activity;

    return-object v0
.end method

.method private getDropDownMenuData(Landroid/widget/ArrayAdapter;I)Landroid/widget/ArrayAdapter;
    .locals 3
    .parameter
    .parameter "dropdownStatus"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;I)",
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2636
    .local p1, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 2637
    const/4 p1, 0x0

    .line 2662
    .end local p1           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    :goto_0
    return-object p1

    .line 2639
    .restart local p1       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_1
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1}, Landroid/widget/ArrayAdapter;->clear()V

    .line 2641
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2642
    .local v0, res:Landroid/content/res/Resources;
    if-eqz p2, :cond_2

    .line 2643
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2647
    :cond_2
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    .line 2648
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2652
    :cond_3
    const/4 v1, 0x2

    if-eq p2, v1, :cond_4

    .line 2653
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 2657
    :cond_4
    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 2658
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private getExceptId()J
    .locals 8

    .prologue
    .line 3231
    const-wide/16 v0, 0x0

    .line 3232
    .local v0, exceptID:J
    sget-object v5, Lcom/android/mms/draft/DraftManager;->sEditingThread:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3233
    .local v3, id:J
    const-string v5, "ConversationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getExceptId() id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3234
    cmp-long v5, v3, v0

    if-lez v5, :cond_0

    .line 3235
    move-wide v0, v3

    goto :goto_0

    .line 3238
    .end local v3           #id:J
    :cond_1
    return-wide v0
.end method

.method public static getThemeDrawble(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"

    .prologue
    .line 3203
    if-nez p0, :cond_0

    .line 3204
    const/4 v0, 0x0

    .line 3224
    :goto_0
    return-object v0

    .line 3207
    :cond_0
    new-instance v1, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v1, v3}, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;-><init>(Landroid/content/res/Resources;)V

    .line 3208
    .local v1, res:Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;
    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/content/res/EncapsulatedResources;->getThemeMainColor()I

    move-result v2

    .line 3209
    .local v2, textColor:I
    const/4 v0, 0x0

    .line 3210
    .local v0, drawable:Landroid/graphics/drawable/Drawable;
    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    .line 3215
    :sswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020118

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3216
    goto :goto_0

    .line 3212
    :sswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020116

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3213
    goto :goto_0

    .line 3218
    :sswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020117

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3219
    goto :goto_0

    .line 3221
    :sswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020119

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 3210
    :sswitch_data_0
    .sparse-switch
        -0xff3a70 -> :sswitch_0
        -0x485f9d -> :sswitch_2
        -0x1db188 -> :sswitch_3
        0x0 -> :sswitch_1
    .end sparse-switch
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 461
    new-instance v0, Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    .line 466
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 467
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 468
    return-void
.end method

.method private initPlugin(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 2466
    :try_start_0
    const-class v1, Lcom/mediatek/mms/ext/IMmsConversation;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/content/pm/Signature;

    invoke-static {p1, v1, v2}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsConversation;

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    .line 2469
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "operator mMmsConversationPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/util/AndroidException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2475
    :goto_0
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    invoke-interface {v1, p0}, Lcom/mediatek/mms/ext/IMmsConversation;->init(Lcom/mediatek/mms/ext/IMmsConversationHost;)V

    .line 2476
    return-void

    .line 2470
    :catch_0
    move-exception v0

    .line 2471
    .local v0, e:Landroid/util/AndroidException;
    new-instance v1, Lcom/mediatek/mms/ext/MmsConversationImpl;

    invoke-direct {v1, p1}, Lcom/mediatek/mms/ext/MmsConversationImpl;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    .line 2472
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default mMmsConversationPlugin = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initSpinnerListAdapter()V
    .locals 4

    .prologue
    .line 2626
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x7f04001b

    const v2, 0x7f0f0083

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {v0, p0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    .line 2628
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->getDropDownMenuData(Landroid/widget/ArrayAdapter;I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    .line 2629
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->setupActionBar2()V

    .line 2631
    new-instance v0, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mAccountDropdown:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    .line 2632
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mAccountDropdown:Lcom/android/mms/ui/ConversationList$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 2633
    return-void
.end method

.method private varargs log(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 5
    .parameter "format"
    .parameter "args"

    .prologue
    .line 2308
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2309
    .local v0, s:Ljava/lang/String;
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2310
    return-void
.end method

.method private markCheckedMessageLimit()V
    .locals 3

    .prologue
    .line 531
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 532
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "checked_message_limits"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 533
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 534
    return-void
.end method

.method private onAccountSpinnerItemClicked(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v1, 0x1

    .line 2691
    sget v0, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    packed-switch v0, :pswitch_data_0

    .line 2710
    :cond_0
    :goto_0
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 2742
    :goto_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 2743
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 2744
    return-void

    .line 2693
    :pswitch_1
    add-int/lit8 p1, p1, 0x1

    .line 2694
    goto :goto_0

    .line 2696
    :pswitch_2
    if-lez p1, :cond_0

    .line 2697
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2701
    :pswitch_3
    if-le p1, v1, :cond_0

    .line 2702
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 2712
    :pswitch_4
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    .line 2713
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x81

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2715
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->getDropDownMenuData(Landroid/widget/ArrayAdapter;I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    .line 2716
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 2719
    :pswitch_5
    sput v1, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    .line 2720
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x82

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2722
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->getDropDownMenuData(Landroid/widget/ArrayAdapter;I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    .line 2723
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 2726
    :pswitch_6
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    .line 2727
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x83

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2729
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->getDropDownMenuData(Landroid/widget/ArrayAdapter;I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    .line 2730
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto :goto_1

    .line 2733
    :pswitch_7
    const/4 v0, 0x3

    sput v0, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    .line 2734
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x84

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2736
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    sget v1, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    invoke-direct {p0, v0, v1}, Lcom/android/mms/ui/ConversationList;->getDropDownMenuData(Landroid/widget/ArrayAdapter;I)Landroid/widget/ArrayAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    .line 2737
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    goto/16 :goto_1

    .line 2691
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch

    .line 2710
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method private openIpMsgThread(JZ)V
    .locals 3
    .parameter "threadId"
    .parameter "isImportant"

    .prologue
    .line 2799
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CHAT_DETAILS_BY_THREAD_ID:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2800
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "thread_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2801
    const-string v1, "boolean"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2802
    const-string v1, "need_new_task"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2803
    invoke-static {p0, v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2804
    return-void
.end method

.method private openThread(JI)V
    .locals 1
    .parameter "threadId"
    .parameter "type"

    .prologue
    .line 1150
    packed-switch p3, :pswitch_data_0

    .line 1158
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1161
    :goto_0
    return-void

    .line 1152
    :pswitch_0
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/WPMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1155
    :pswitch_1
    invoke-static {p0, p1, p2}, Lcom/android/mms/ui/CBMessageListActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1150
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDeleteMenuVisible(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 3167
    if-eqz p1, :cond_0

    .line 3168
    const v1, 0x7f0f01bf

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3169
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 3170
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Lcom/android/mms/ui/ConversationListAdapter;->isDataValid()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mDataValid:Z

    .line 3171
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v1}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 3174
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_0
    return-void

    .line 3171
    .restart local v0       #item:Landroid/view/MenuItem;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    .line 429
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 431
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040014

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 433
    .local v1, v:Landroid/view/ViewGroup;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 435
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x15

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 440
    const v2, 0x7f0f006e

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;

    .line 441
    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    .line 442
    return-void
.end method

.method private setupActionBar2()V
    .locals 8

    .prologue
    const/16 v7, 0x10

    const/16 v6, 0x8

    const/4 v5, -0x2

    .line 2592
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 2594
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040015

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 2596
    .local v1, v:Landroid/view/ViewGroup;
    invoke-virtual {v0, v7, v7}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 2597
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 2602
    const v2, 0x7f0f006e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mUnreadLayout:Landroid/widget/LinearLayout;

    .line 2603
    const v2, 0x7f0f006f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mUnreadConvCount:Landroid/widget/TextView;

    .line 2604
    const v2, 0x7f0f0071

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    .line 2605
    const v2, 0x7f0f0070

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConversationSpinner:Landroid/view/View;

    .line 2606
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2607
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v3

    const/16 v4, 0x81

    invoke-virtual {v3, v4}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2609
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConversationSpinner:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/ConversationList$10;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/ConversationList$10;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2622
    :goto_0
    return-void

    .line 2619
    :cond_0
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2620
    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mConversationSpinner:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showExportDialog(Ljava/util/HashSet;Landroid/view/ActionMode;)V
    .locals 6
    .parameter
    .parameter "mode"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/view/ActionMode;",
            ")V"
        }
    .end annotation

    .prologue
    .line 3049
    .local p1, selectedThreadIds:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/Long;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3050
    .local v3, urls:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v4

    const/16 v5, 0x7d

    invoke-virtual {v4, v5}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3052
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v4

    const/16 v5, 0x7e

    invoke-virtual {v4, v5}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3055
    new-instance v0, Lcom/android/mms/ui/ConversationList$18;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mContext:Landroid/content/Context;

    const v5, 0x1090011

    invoke-direct {v0, p0, v4, v5, v3}, Lcom/android/mms/ui/ConversationList$18;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/Context;ILjava/util/List;)V

    .line 3078
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mContext:Landroid/content/Context;

    invoke-direct {v1, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 3080
    .local v1, b:Landroid/app/AlertDialog$Builder;
    new-instance v2, Lcom/android/mms/ui/ConversationList$19;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/mms/ui/ConversationList$19;-><init>(Lcom/android/mms/ui/ConversationList;Ljava/util/HashSet;Landroid/view/ActionMode;)V

    .line 3120
    .local v2, click:Landroid/content/DialogInterface$OnClickListener;
    const v4, 0x7f0b015c

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 3121
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 3122
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3124
    const/high16 v4, 0x104

    new-instance v5, Lcom/android/mms/ui/ConversationList$20;

    invoke-direct {v5, p0}, Lcom/android/mms/ui/ConversationList$20;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v1, v4, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3131
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 3132
    return-void
.end method

.method private showInternetStatusBar(Z)V
    .locals 2
    .parameter "show"

    .prologue
    .line 3156
    if-eqz p1, :cond_0

    .line 3157
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStatusBar:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3161
    :goto_0
    return-void

    .line 3159
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStatusBar:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private showMmsApplication()V
    .locals 2

    .prologue
    .line 3243
    iget-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsShowMmsApplication:Z

    if-eqz v1, :cond_0

    .line 3244
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IAppGuideExt;

    .line 3246
    .local v0, appGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;
    const-string v1, "MMS"

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IAppGuideExt;->showAppGuide(Ljava/lang/String;)V

    .line 3247
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsShowMmsApplication:Z

    .line 3249
    .end local v0           #appGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;
    :cond_0
    return-void
.end method

.method private startAsyncQuery()V
    .locals 8

    .prologue
    .line 677
    :try_start_0
    invoke-static {}, Lcom/android/mms/data/Conversation;->getActivated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 678
    const/4 v3, 0x0

    .line 679
    .local v3, selection:Ljava/lang/String;
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z

    .line 681
    sget v4, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    packed-switch v4, :pswitch_data_0

    .line 731
    :goto_0
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    sget v5, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    invoke-direct {p0, v4, v5}, Lcom/android/mms/ui/ConversationList;->getDropDownMenuData(Landroid/widget/ArrayAdapter;I)Landroid/widget/ArrayAdapter;

    move-result-object v4

    iput-object v4, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    .line 750
    .end local v3           #selection:Ljava/lang/String;
    :goto_1
    return-void

    .line 683
    .restart local v3       #selection:Ljava/lang/String;
    :pswitch_0
    const-string v4, "Mms/ipmsg/ConvList"

    const-string v5, "startAsyncQuery(): query for all messages except spam"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x81

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 686
    const-string v3, "threads._id not in (SELECT DISTINCT thread_id FROM thread_settings WHERE spam=1) "

    .line 689
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a5

    invoke-static {v4, v5, v3}, Lcom/android/mms/data/Conversation;->startQueryExtend(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 690
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read=0 and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 747
    .end local v3           #selection:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 748
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_1

    .line 694
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    .restart local v3       #selection:Ljava/lang/String;
    :pswitch_1
    :try_start_1
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x82

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 696
    const-string v3, "threads._id IN (SELECT thread_id FROM sms WHERE locked=1 UNION SELECT thread_id FROM pdu WHERE locked=1)"

    .line 698
    const-string v4, "Mms/ipmsg/ConvList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAsyncQuery(): query for important messages, selection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a5

    invoke-static {v4, v5, v3}, Lcom/android/mms/data/Conversation;->startQueryExtend(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 700
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read=0 and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 704
    :pswitch_2
    const-string v4, "Mms/ipmsg/ConvList"

    const-string v5, "startAsyncQuery(): query for group messages"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x83

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    const-string v3, "threads._id IN (SELECT DISTINCT thread_id FROM thread_settings WHERE spam=0) AND threads.recipient_ids IN (SELECT _id FROM canonical_addresses WHERE SUBSTR(address, 1, 4) = \'7---\')"

    .line 712
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a5

    invoke-static {v4, v5, v3}, Lcom/android/mms/data/Conversation;->startQueryExtend(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 713
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read=0 and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 717
    :pswitch_3
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mSpinnerTextView:Landroid/widget/TextView;

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x84

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 721
    const-string v3, "threads._id IN (SELECT DISTINCT thread_id FROM thread_settings WHERE spam=1) "

    .line 722
    const-string v4, "Mms/ipmsg/ConvList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "startAsyncQuery(): query for spam messages, selection = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 723
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a5

    invoke-static {v4, v5, v3}, Lcom/android/mms/data/Conversation;->startQueryExtend(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 724
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "read=0 and "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    goto/16 :goto_0

    .line 734
    .end local v3           #selection:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z

    .line 736
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mEmptyViewDefault:Landroid/view/View;

    check-cast v4, Landroid/widget/TextView;

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0b0225

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 737
    sget-object v4, Lcom/android/mms/draft/DraftManager;->sEditingThread:Ljava/util/HashSet;

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 738
    const-string v4, "ConversationList"

    const-string v5, "DraftManager.sEditingThread = Empty"

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a5

    invoke-static {v4, v5}, Lcom/android/mms/data/Conversation;->startQueryForAll(Landroid/content/AsyncQueryHandler;I)V

    .line 745
    :goto_2
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a6

    const-string v6, "allunread"

    invoke-static {v4, v5, v6}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    goto/16 :goto_1

    .line 741
    :cond_1
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->getExceptId()J

    move-result-wide v1

    .line 742
    .local v1, exceptID:J
    const-string v4, "ConversationList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DraftManager except ThreadId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    iget-object v4, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v5, 0x6a5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "threads._id<>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v5, v6}, Lcom/android/mms/data/Conversation;->startQuery(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 681
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateEmptyView(Landroid/database/Cursor;)V
    .locals 4
    .parameter "cursor"

    .prologue
    const/4 v3, 0x1

    .line 3023
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3024
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cursor count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3025
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 3027
    const-string v0, "ConversationList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sConversationListOption:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3028
    sget v0, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    packed-switch v0, :pswitch_data_0

    .line 3042
    const-string v0, "ConversationList"

    const-string v1, "unkown position!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 3046
    :cond_0
    :goto_0
    return-void

    .line 3030
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v0}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->setAllChatEmpty()V

    goto :goto_0

    .line 3033
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v0, v3}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->setImportantEmpty(Z)V

    goto :goto_0

    .line 3036
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v0, v3}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->setGroupChatEmpty(Z)V

    goto :goto_0

    .line 3039
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v0, v3}, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;->setSpamEmpty(Z)V

    goto :goto_0

    .line 3028
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSelectionTitle()V
    .locals 2

    .prologue
    .line 3182
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectionMenuItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 3183
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0}, Lcom/android/mms/ui/ConversationListAdapter;->isAllSelected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3184
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectionMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0b00b0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 3189
    :cond_0
    :goto_0
    return-void

    .line 3186
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSelectionMenuItem:Landroid/view/MenuItem;

    const v1, 0x7f0b0074

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0
.end method


# virtual methods
.method public changeMode()V
    .locals 3

    .prologue
    .line 2582
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/MmsConfig;->setMmsDirMode(Z)V

    .line 2583
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->updateNotification(Landroid/content/Context;)V

    .line 2584
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2585
    .local v0, it:Landroid/content/Intent;
    const-string v1, "floderview_key"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2586
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2587
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2588
    return-void
.end method

.method public isActionMode()Z
    .locals 1

    .prologue
    .line 3255
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notificationsReceived(Landroid/content/Intent;)V
    .locals 14
    .parameter "intent"

    .prologue
    .line 2808
    const-string v11, "Mms/noti"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "convList.notificationsReceived(): start, intent = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2809
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2810
    .local v0, action:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 3020
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 2813
    :cond_1
    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActionTypeByAction(Ljava/lang/String;)I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto :goto_0

    .line 2874
    :pswitch_1
    iget-object v11, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    new-instance v12, Lcom/android/mms/ui/ConversationList$11;

    invoke-direct {v12, p0}, Lcom/android/mms/ui/ConversationList$11;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 2882
    const-string v11, "com.mediatek.mms.ipmessage.saveHistroyDone"

    const/4 v12, 0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 2883
    .local v2, done:I
    const-string v11, "ConversationList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "save history done: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2884
    const-string v11, "com.mediatek.mms.ipmessage.saveHistoryFile"

    invoke-virtual {p1, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2885
    .local v5, filePath:Ljava/lang/String;
    const-string v11, "ConversationList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "save history file: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2887
    iget-boolean v11, p0, Lcom/android/mms/ui/ConversationList;->mIsSendEmail:Z

    if-nez v11, :cond_4

    .line 2888
    if-nez v2, :cond_2

    .line 2889
    new-instance v11, Lcom/android/mms/ui/ConversationList$12;

    invoke-direct {v11, p0, v5}, Lcom/android/mms/ui/ConversationList$12;-><init>(Lcom/android/mms/ui/ConversationList;Ljava/lang/String;)V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2899
    :cond_2
    if-eqz v5, :cond_3

    .line 2900
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2901
    .local v9, saveHistoryFile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 2902
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 2905
    .end local v9           #saveHistoryFile:Ljava/io/File;
    :cond_3
    new-instance v11, Lcom/android/mms/ui/ConversationList$13;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationList$13;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 2915
    :cond_4
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/mms/ui/ConversationList;->mIsSendEmail:Z

    .line 2916
    if-nez v2, :cond_6

    if-eqz v5, :cond_6

    .line 2917
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2918
    .local v4, emailFile:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 2919
    const-string v11, "ConversationList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "File: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2920
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 2921
    .local v7, i:Landroid/content/Intent;
    const-string v11, "android.intent.action.SEND"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2922
    const-string v11, "android.intent.extra.STREAM"

    invoke-static {v4}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v7, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 2923
    const-string v11, "message/rfc822"

    invoke-virtual {v7, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 2925
    :try_start_0
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 2926
    :catch_0
    move-exception v3

    .line 2927
    .local v3, e:Landroid/content/ActivityNotFoundException;
    const-string v11, "ConversationList"

    const-string v12, "invoke email failed!"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2930
    .end local v3           #e:Landroid/content/ActivityNotFoundException;
    .end local v7           #i:Landroid/content/Intent;
    :cond_5
    const-string v11, "ConversationList"

    const-string v12, "file does not exist!"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2933
    .end local v4           #emailFile:Ljava/io/File;
    :cond_6
    if-eqz v5, :cond_7

    .line 2934
    new-instance v10, Ljava/io/File;

    invoke-direct {v10, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2935
    .local v10, sendHistoryFile:Ljava/io/File;
    invoke-virtual {v10}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 2936
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    .line 2939
    .end local v10           #sendHistoryFile:Ljava/io/File;
    :cond_7
    new-instance v11, Lcom/android/mms/ui/ConversationList$14;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationList$14;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2965
    .end local v2           #done:I
    .end local v5           #filePath:Ljava/lang/String;
    :pswitch_2
    const-string v11, "group_id"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 2966
    .local v6, groupId:I
    const-string v11, "ConversationList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "update group info,group id:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2967
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;

    move-result-object v11

    int-to-short v12, v6

    invoke-virtual {v11, v12}, Lcom/mediatek/mms/ipmessage/ContactManager;->getNumberByEngineId(S)Ljava/lang/String;

    move-result-object v8

    .line 2968
    .local v8, number:Ljava/lang/String;
    const-string v11, "ConversationList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "group number:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2969
    const/4 v11, 0x0

    invoke-static {v8, v11}, Lcom/android/mms/data/Contact;->get(Ljava/lang/String;Z)Lcom/android/mms/data/Contact;

    move-result-object v1

    .line 2970
    .local v1, contact:Lcom/android/mms/data/Contact;
    if-eqz v1, :cond_8

    .line 2971
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Lcom/android/mms/data/Contact;->setName(Ljava/lang/String;)V

    .line 2972
    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->clearAvatar()V

    .line 2974
    :cond_8
    new-instance v11, Lcom/android/mms/ui/ConversationList$15;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationList$15;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2991
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v6           #groupId:I
    .end local v8           #number:Ljava/lang/String;
    :pswitch_3
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateGroupCache()V

    .line 2992
    new-instance v11, Lcom/android/mms/ui/ConversationList$16;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationList$16;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 3002
    :pswitch_4
    iget-object v11, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    if-nez v11, :cond_0

    invoke-static {}, Lcom/android/mms/data/Conversation;->getActivated()Z

    move-result v11

    if-nez v11, :cond_0

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 3004
    new-instance v11, Lcom/android/mms/ui/ConversationList$17;

    invoke-direct {v11, p0}, Lcom/android/mms/ui/ConversationList$17;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {p0, v11}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 2813
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 14
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 2753
    const-string v11, "Mms/ipmsg/ConvList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onActivityResult(): requestCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", resultCode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2754
    const/4 v11, -0x1

    move/from16 v0, p2

    if-eq v0, v11, :cond_0

    .line 2755
    const-string v11, "Mms/ipmsg/ConvList"

    const-string v12, "onActivityResult(): result is not OK."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2796
    :goto_0
    return-void

    .line 2758
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 2793
    const-string v11, "Mms/ipmsg/ConvList"

    const-string v12, "onActivityResult(): default return."

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2760
    :pswitch_0
    const-string v11, "contactId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 2761
    .local v7, mSelectContactsIds:[Ljava/lang/String;
    if-eqz v7, :cond_2

    .line 2762
    move-object v1, v7

    .local v1, arr$:[Ljava/lang/String;
    array-length v6, v1

    .local v6, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v6, :cond_1

    aget-object v2, v1, v3

    .line 2763
    .local v2, contactId:Ljava/lang/String;
    const-string v11, "Mms/ipmsg/ConvList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "onActivityResult(): SELECT_CONTACT get contact id = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2762
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2765
    .end local v2           #contactId:Ljava/lang/String;
    :cond_1
    new-instance v4, Landroid/content/Intent;

    sget-object v11, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->NEW_GROUP_CHAT:Ljava/lang/String;

    invoke-direct {v4, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2766
    .local v4, intent:Landroid/content/Intent;
    const-string v11, "sim_id"

    const-string v12, "SIMID"

    const/4 v13, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    invoke-virtual {v4, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2767
    const-string v11, "array"

    invoke-virtual {v4, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 2768
    invoke-static {p0, v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2769
    const/4 v7, 0x0

    .line 2770
    goto :goto_0

    .line 2771
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v3           #i$:I
    .end local v4           #intent:Landroid/content/Intent;
    .end local v6           #len$:I
    :cond_2
    const-string v11, "Mms/ipmsg/ConvList"

    const-string v12, "onActivityResult(): SELECT_CONTACT get contact id is NULL!"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2775
    .end local v7           #mSelectContactsIds:[Ljava/lang/String;
    :pswitch_1
    const-string v11, "contactId"

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2777
    .local v8, mSelectContactsNumbers:Ljava/lang/String;
    if-eqz v8, :cond_3

    .line 2778
    const-string v11, "Mms/ipmsg/ConvList"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "mSelectContactsNumbers:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2779
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2780
    .local v9, numberString:Ljava/lang/StringBuilder;
    new-instance v5, Landroid/content/Intent;

    const-class v11, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v5, p0, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2781
    .local v5, it:Landroid/content/Intent;
    const-string v11, "android.intent.action.SENDTO"

    invoke-virtual {v5, v11}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 2782
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "smsto:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    .line 2783
    .local v10, uri:Landroid/net/Uri;
    invoke-virtual {v5, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2784
    const-string v11, "sms_body"

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v12

    const/16 v13, 0xe9

    invoke-virtual {v12, v13}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v5, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2787
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 2789
    .end local v5           #it:Landroid/content/Intent;
    .end local v9           #numberString:Ljava/lang/StringBuilder;
    .end local v10           #uri:Landroid/net/Uri;
    :cond_3
    const-string v11, "Mms/ipmsg/ConvList"

    const-string v12, "onActivityResult(): INVITE get contact id is NULL!"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2758
    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 2449
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2455
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    .line 2459
    :goto_0
    return-void

    .line 2457
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 1263
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1265
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 9
    .parameter "item"

    .prologue
    const/4 v8, 0x0

    .line 1218
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v7}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v3

    .line 1219
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->getPosition()I

    move-result v7

    if-ltz v7, :cond_0

    .line 1220
    invoke-static {p0, v3}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v2

    .line 1221
    .local v2, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    .line 1222
    .local v5, threadId:J
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 1250
    .end local v2           #conv:Lcom/android/mms/data/Conversation;
    .end local v5           #threadId:J
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v7

    return v7

    .line 1224
    .restart local v2       #conv:Lcom/android/mms/data/Conversation;
    .restart local v5       #threadId:J
    :pswitch_0
    iget-object v7, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-static {v5, v6, v7}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_0

    .line 1230
    :pswitch_1
    iget v7, p0, Lcom/android/mms/ui/ConversationList;->mType:I

    invoke-direct {p0, v5, v6, v7}, Lcom/android/mms/ui/ConversationList;->openThread(JI)V

    goto :goto_0

    .line 1235
    :pswitch_2
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/mms/data/Contact;

    .line 1236
    .local v1, contact:Lcom/android/mms/data/Contact;
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-virtual {v1}, Lcom/android/mms/data/Contact;->getUri()Landroid/net/Uri;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1237
    .local v4, intent:Landroid/content/Intent;
    const/high16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1238
    invoke-virtual {p0, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1242
    .end local v1           #contact:Lcom/android/mms/data/Contact;
    .end local v4           #intent:Landroid/content/Intent;
    :pswitch_3
    invoke-virtual {v2}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v7

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/mms/data/Contact;

    invoke-virtual {v7}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v0

    .line 1243
    .local v0, address:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/mms/ui/ConversationList;->createAddContactIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1222
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v10, -0x1

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 319
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 321
    invoke-direct {p0, p0}, Lcom/android/mms/ui/ConversationList;->initPlugin(Landroid/content/Context;)V

    .line 325
    sput-object p0, Lcom/android/mms/ui/ConversationList;->sActivity:Landroid/app/Activity;

    .line 330
    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsDirMode()Z

    move-result v2

    .line 331
    .local v2, dirMode:Z
    invoke-static {}, Lcom/android/mms/MmsConfig;->getFolderModeEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    if-eqz v2, :cond_0

    .line 332
    new-instance v3, Landroid/content/Intent;

    const-class v5, Lcom/android/mms/ui/FolderViewList;

    invoke-direct {v3, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 333
    .local v3, intent:Landroid/content/Intent;
    const-string v5, "floderview_key"

    invoke-virtual {v3, v5, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 334
    const/high16 v5, 0x1020

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 336
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 340
    .end local v3           #intent:Landroid/content/Intent;
    :cond_0
    invoke-static {v9}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 342
    .local v1, dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    invoke-interface {v1}, Lcom/mediatek/mms/ext/IMmsDialogNotify;->closeMsgDialog()V

    .line 345
    const v5, 0x7f04001a

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 348
    new-instance v5, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

    invoke-direct {v5, p0}, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mStatusBarManager:Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

    .line 350
    new-instance v5, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/ConversationList;Landroid/content/ContentResolver;)V

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    .line 352
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    .line 353
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mConvListOnCreateContextMenuListener:Landroid/view/View$OnCreateContextMenuListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 354
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 356
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mScrollListener:Lcom/android/mms/ui/MyScrollListener;

    invoke-virtual {v5, v6}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 360
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v5

    if-lez v5, :cond_1

    .line 361
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->addIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 365
    :cond_1
    const v5, 0x7f0f0080

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mEmptyViewDefault:Landroid/view/View;

    .line 366
    const v5, 0x7f0f007f

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    .line 367
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 368
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mEmptyViewDefault:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 374
    :goto_0
    const v5, 0x7f0f0081

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStatusBar:Landroid/widget/LinearLayout;

    .line 375
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStatusBar:Landroid/widget/LinearLayout;

    const v6, 0x7f0f0082

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 376
    .local v4, networkStatusTextView:Landroid/widget/TextView;
    if-eqz v4, :cond_2

    .line 377
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v5

    const/16 v6, 0x69

    invoke-virtual {v5, v6}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    :cond_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    new-instance v6, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;

    invoke-direct {v6, p0}, Lcom/android/mms/ui/ConversationList$ItemLongClickListener;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 383
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initListAdapter()V

    .line 385
    iput-object p0, p0, Lcom/android/mms/ui/ConversationList;->mContext:Landroid/content/Context;

    .line 386
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 387
    invoke-static {v9}, Lcom/android/mms/data/Conversation;->setActivated(Z)V

    .line 388
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initSpinnerListAdapter()V

    .line 389
    const-string v5, ""

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 396
    :goto_1
    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    .line 397
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    .line 398
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mPrefs:Landroid/content/SharedPreferences;

    const-string v6, "checked_message_limits"

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 400
    .local v0, checkedMessageLimits:Z
    if-nez v0, :cond_3

    .line 401
    invoke-virtual {p0}, Lcom/android/mms/ui/ConversationList;->runOneTimeStorageLimitCheckForLegacyMessages()V

    .line 408
    :cond_3
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->fontScale:F

    iput v5, p0, Lcom/android/mms/ui/ConversationList;->mFontScale:F

    .line 409
    iget v5, p0, Lcom/android/mms/ui/ConversationList;->mFontScale:F

    const v6, 0x3f8ccccd

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    .line 410
    const-string v5, "ConversationList"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "system fontscale is:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/mms/ui/ConversationList;->mFontScale:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v5, v9}, Lcom/android/mms/ui/ConversationListAdapter;->setSubjectSingleLineMode(Z)V

    .line 415
    :cond_4
    if-eqz p1, :cond_7

    .line 416
    const-string v5, "last_list_pos"

    invoke-virtual {p1, v5, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 418
    const-string v5, "last_list_offset"

    invoke-virtual {p1, v5, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v5

    iput v5, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 424
    :goto_2
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/mms/ui/ConversationList;->getThemeDrawble(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sput-object v5, Lcom/android/mms/ui/ConversationList;->mUnreadBackDrawable:Landroid/graphics/drawable/Drawable;

    .line 426
    return-void

    .line 370
    .end local v0           #checkedMessageLimits:Z
    .end local v4           #networkStatusTextView:Landroid/widget/TextView;
    :cond_5
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mEmptyViewDefault:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    .line 371
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v5, v8}, Landroid/view/View;->setVisibility(I)V

    .line 372
    iget-object v5, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    iget-object v6, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v5, v6}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    goto/16 :goto_0

    .line 391
    .restart local v4       #networkStatusTextView:Landroid/widget/TextView;
    :cond_6
    const-string v5, "ConversationList"

    const-string v6, "normal message layout"

    invoke-static {v5, v6}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 392
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->setupActionBar()V

    .line 393
    const v5, 0x7f0b022d

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setTitle(I)V

    goto/16 :goto_1

    .line 420
    .restart local v0       #checkedMessageLimits:Z
    :cond_7
    iput v10, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 421
    iput v8, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    goto :goto_2
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 783
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v9

    const v10, 0x7f0e0001

    invoke-virtual {v9, v10, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 785
    const v9, 0x7f0f01bc

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    .line 788
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v9}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/mms/ui/AdvancedSearchView;

    iput-object v9, p0, Lcom/android/mms/ui/ConversationList;->mAdvancedSearchView:Lcom/android/mms/ui/AdvancedSearchView;

    .line 789
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportCTFeature()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 790
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mAdvancedSearchView:Lcom/android/mms/ui/AdvancedSearchView;

    invoke-virtual {v9}, Lcom/android/mms/ui/AdvancedSearchView;->getImageSearchBtn()Landroid/widget/ImageButton;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/ConversationList;->mImageSearchBtn:Landroid/widget/ImageButton;

    .line 791
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mImageSearchBtn:Landroid/widget/ImageButton;

    invoke-virtual {v9, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 792
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mImageSearchBtn:Landroid/widget/ImageButton;

    new-instance v10, Lcom/android/mms/ui/ConversationList$5;

    invoke-direct {v10, p0}, Lcom/android/mms/ui/ConversationList$5;-><init>(Lcom/android/mms/ui/ConversationList;)V

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 799
    :cond_0
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mAdvancedSearchView:Lcom/android/mms/ui/AdvancedSearchView;

    invoke-virtual {v9}, Lcom/android/mms/ui/AdvancedSearchView;->getSearchView()Landroid/widget/SearchView;

    move-result-object v9

    iput-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    .line 801
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    iget-object v10, p0, Lcom/android/mms/ui/ConversationList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 802
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    const v10, 0x7f0b031c

    invoke-virtual {p0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 803
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v12}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 804
    const-string v9, "search"

    invoke-virtual {p0, v9}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SearchManager;

    .line 806
    .local v8, searchManager:Landroid/app/SearchManager;
    if-eqz v8, :cond_1

    .line 807
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v3

    .line 808
    .local v3, info:Landroid/app/SearchableInfo;
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v9, v3}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 811
    .end local v3           #info:Landroid/app/SearchableInfo;
    :cond_1
    const v9, 0x7f0f01c2

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 812
    .local v0, cellBroadcastItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_3

    .line 814
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x1110044

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    .line 817
    .local v4, isCellBroadcastAppLinkEnabled:Z
    if-eqz v4, :cond_2

    .line 818
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 819
    .local v7, pm:Landroid/content/pm/PackageManager;
    const-string v9, "com.android.cellbroadcastreceiver"

    invoke-virtual {v7, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    .line 821
    const/4 v4, 0x0

    .line 827
    .end local v7           #pm:Landroid/content/pm/PackageManager;
    :cond_2
    :goto_0
    if-nez v4, :cond_3

    .line 828
    invoke-interface {v0, v13}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 833
    .end local v4           #isCellBroadcastAppLinkEnabled:Z
    :cond_3
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 834
    const v9, 0x7f0f01bb

    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 835
    .local v5, item:Landroid/view/MenuItem;
    if-eqz v5, :cond_4

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;

    move-result-object v9

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Lcom/mediatek/mms/ipmessage/ServiceManager;->isFeatureSupported(I)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 837
    invoke-interface {v5, v12}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 851
    .end local v5           #item:Landroid/view/MenuItem;
    :cond_4
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    invoke-static {}, Lcom/android/mms/MmsConfig;->getPluginMenuIDBase()I

    move-result v10

    invoke-interface {v9, p1, v10}, Lcom/mediatek/mms/ext/IMmsConversation;->addOptionMenu(Landroid/view/Menu;I)V

    .line 855
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v9

    if-ge v1, v9, :cond_5

    .line 856
    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 857
    .restart local v5       #item:Landroid/view/MenuItem;
    if-eqz v5, :cond_8

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v5}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0b003e

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 859
    iput-object v5, p0, Lcom/android/mms/ui/ConversationList;->mSimSmsItem:Landroid/view/MenuItem;

    .line 864
    .end local v5           #item:Landroid/view/MenuItem;
    :cond_5
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSimSmsItem:Landroid/view/MenuItem;

    if-eqz v9, :cond_7

    .line 865
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 866
    .local v6, listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    if-eqz v6, :cond_6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 867
    :cond_6
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSimSmsItem:Landroid/view/MenuItem;

    invoke-interface {v9, v13}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 879
    .end local v6           #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    :cond_7
    :goto_2
    return v12

    .line 824
    .end local v1           #i:I
    .restart local v4       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v2

    .line 825
    .local v2, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v4, 0x0

    goto :goto_0

    .line 855
    .end local v2           #ignored:Ljava/lang/IllegalArgumentException;
    .end local v4           #isCellBroadcastAppLinkEnabled:Z
    .restart local v1       #i:I
    .restart local v5       #item:Landroid/view/MenuItem;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 869
    .end local v5           #item:Landroid/view/MenuItem;
    .restart local v6       #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    :cond_9
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mSimSmsItem:Landroid/view/MenuItem;

    invoke-interface {v9, v12}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2384
    const-string v0, "ConversationList"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2385
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    if-eqz v0, :cond_0

    .line 2386
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2387
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 2388
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a6

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 2390
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 2391
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 2393
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_2

    .line 2394
    const-string v0, "ConversationList"

    const-string v1, "clear it"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2395
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 2400
    :cond_2
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    if-eqz v0, :cond_3

    .line 2401
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mAsyncDialog:Lcom/android/mms/ui/AsyncDialog;

    invoke-virtual {v0}, Lcom/android/mms/ui/AsyncDialog;->clearPendingProgressDialog()V

    .line 2404
    :cond_3
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mScrollListener:Lcom/android/mms/ui/MyScrollListener;

    invoke-virtual {v0}, Lcom/android/mms/ui/MyScrollListener;->destroyThread()V

    .line 2408
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_4

    .line 2409
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2410
    iput-object v2, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 2412
    :cond_4
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v0

    if-lez v0, :cond_5

    .line 2413
    invoke-static {p0, p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->removeIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 2416
    :cond_5
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_6

    .line 2418
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsRunAsyncTask:Z

    .line 2420
    invoke-static {}, Lcom/android/mms/data/Conversation;->clearCache()V

    .line 2422
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsDestroy:Z

    .line 2425
    :cond_6
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 2426
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 663
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    new-instance v1, Lcom/android/mms/ui/ConversationList$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/mms/ui/ConversationList$3;-><init>(Lcom/android/mms/ui/ConversationList;JZ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 672
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2431
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mDisableSearchFalg:Z

    if-eqz v0, :cond_0

    .line 2432
    packed-switch p1, :pswitch_data_0

    .line 2441
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2436
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 2432
    :pswitch_data_0
    .packed-switch 0x54
        :pswitch_0
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 12
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1071
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v9

    invoke-virtual {v9, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/database/Cursor;

    .line 1073
    .local v2, cursor:Landroid/database/Cursor;
    if-nez v2, :cond_1

    .line 1142
    :cond_0
    :goto_0
    return-void

    .line 1077
    :cond_1
    const-string v9, "ConversationList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onListItemClick: pos="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1078
    invoke-static {p0, v2}, Lcom/android/mms/data/Conversation;->from(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v1

    .line 1080
    .local v1, conv:Lcom/android/mms/data/Conversation;
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v9, :cond_3

    .line 1081
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->isChecked()Z

    move-result v0

    .line 1082
    .local v0, checked:Z
    iget-object v10, p0, Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;

    if-nez v0, :cond_2

    const/4 v9, 0x1

    :goto_1
    const/4 v11, 0x0

    invoke-virtual {v10, p3, v9, v11}, Lcom/android/mms/ui/ConversationList$ModeCallback;->setItemChecked(IZLandroid/database/Cursor;)V

    .line 1083
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mActionModeListener:Lcom/android/mms/ui/ConversationList$ModeCallback;

    #calls: Lcom/android/mms/ui/ConversationList$ModeCallback;->updateActionMode()V
    invoke-static {v9}, Lcom/android/mms/ui/ConversationList$ModeCallback;->access$1100(Lcom/android/mms/ui/ConversationList$ModeCallback;)V

    .line 1084
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v9, :cond_0

    .line 1085
    iget-object v9, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    invoke-virtual {v9}, Lcom/android/mms/ui/ConversationListAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 1082
    :cond_2
    const/4 v9, 0x0

    goto :goto_1

    .line 1090
    .end local v0           #checked:Z
    :cond_3
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v7

    .line 1097
    .local v7, tid:J
    const-string v9, "Mms/WapPush"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ConversationList: conv.getType() is : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1099
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v9

    if-lez v9, :cond_9

    .line 1101
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v9

    const/16 v10, 0xa

    if-ne v9, v10, :cond_4

    .line 1102
    new-instance v4, Landroid/content/Intent;

    sget-object v9, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->SERVICE_CENTER:Ljava/lang/String;

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1103
    .local v4, it:Landroid/content/Intent;
    invoke-static {p0, v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 1104
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->markAsRead()V

    goto :goto_0

    .line 1108
    .end local v4           #it:Landroid/content/Intent;
    :cond_4
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v5

    .line 1109
    .local v5, list:Lcom/android/mms/data/ContactList;
    const/4 v6, 0x0

    .line 1110
    .local v6, number:Ljava/lang/String;
    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ge v9, v10, :cond_6

    .line 1112
    :cond_5
    const-string v9, "ConversationList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "a thread with no recipients, threadId:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1113
    const-string v6, ""

    .line 1117
    :goto_2
    const-string v9, "Mms/ipmsg/ConvList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "open thread by number "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_8

    const-string v9, "7---"

    invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1119
    const-string v9, "Mms/ipmsg/ConvList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "open group thread by thread id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->markAsSeen()V

    .line 1121
    sget v9, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_7

    .line 1122
    const/4 v9, 0x1

    invoke-direct {p0, v7, v8, v9}, Lcom/android/mms/ui/ConversationList;->openIpMsgThread(JZ)V

    goto/16 :goto_0

    .line 1115
    :cond_6
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getRecipients()Lcom/android/mms/data/ContactList;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/mms/data/Contact;

    invoke-virtual {v9}, Lcom/android/mms/data/Contact;->getNumber()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 1124
    :cond_7
    const/4 v9, 0x0

    invoke-direct {p0, v7, v8, v9}, Lcom/android/mms/ui/ConversationList;->openIpMsgThread(JZ)V

    goto/16 :goto_0

    .line 1129
    :cond_8
    sget v9, Lcom/android/mms/ui/ConversationList;->sConversationListOption:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_9

    .line 1130
    const-string v9, "Mms/ipmsg/ConvList"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "open important thread by thread id "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v9

    const/4 v10, 0x2

    if-eq v9, v10, :cond_0

    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v9

    const/4 v10, 0x3

    if-eq v9, v10, :cond_0

    .line 1133
    invoke-static {p0, v7, v8}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v3

    .line 1134
    .local v3, intent:Landroid/content/Intent;
    const-string v9, "load_important"

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1135
    invoke-virtual {p0, v3}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1140
    .end local v3           #intent:Landroid/content/Intent;
    .end local v5           #list:Lcom/android/mms/data/ContactList;
    .end local v6           #number:Ljava/lang/String;
    :cond_9
    invoke-virtual {v1}, Lcom/android/mms/data/Conversation;->getType()I

    move-result v9

    invoke-direct {p0, v7, v8, v9}, Lcom/android/mms/ui/ConversationList;->openThread(JI)V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "intent"

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 541
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 543
    .local v0, dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsDialogNotify;->closeMsgDialog()V

    .line 545
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 21
    .parameter "item"

    .prologue
    .line 966
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList;->mMmsConversationPlugin:Lcom/mediatek/mms/ext/IMmsConversation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IMmsConversation;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 967
    const/16 v18, 0x1

    .line 1059
    :goto_0
    return v18

    .line 972
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_1

    .line 973
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    packed-switch v18, :pswitch_data_0

    .line 998
    :cond_1
    :goto_1
    :pswitch_0
    invoke-interface/range {p1 .. p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v18

    packed-switch v18, :pswitch_data_1

    .line 1057
    :pswitch_1
    const/16 v18, 0x1

    goto :goto_0

    .line 976
    :pswitch_2
    const/16 v18, 0x1

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    move/from16 v3, v20

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->checkCurrentIpMessageServiceStatus(Landroid/app/Activity;ZLandroid/os/Handler;I)Z

    move-result v18

    if-eqz v18, :cond_2

    .line 978
    new-instance v7, Landroid/content/Intent;

    sget-object v18, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CONTACT:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 979
    .local v7, createGroupIntent:Landroid/content/Intent;
    const-string v18, "type"

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 980
    const-string v18, "request_code"

    const/16 v19, 0x64

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 981
    move-object/from16 v0, p0

    invoke-static {v0, v7}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 983
    .end local v7           #createGroupIntent:Landroid/content/Intent;
    :cond_2
    const/16 v18, 0x1

    goto :goto_0

    .line 988
    :pswitch_3
    new-instance v8, Landroid/content/Intent;

    sget-object v18, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->CONTACT:Ljava/lang/String;

    move-object/from16 v0, v18

    invoke-direct {v8, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 989
    .local v8, createGroupIntent2:Landroid/content/Intent;
    const-string v18, "type"

    const/16 v19, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 990
    const-string v18, "request_code"

    const/16 v19, 0x65

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 991
    move-object/from16 v0, p0

    invoke-static {v0, v8}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_1

    .line 1000
    .end local v8           #createGroupIntent2:Landroid/content/Intent;
    :pswitch_4
    invoke-direct/range {p0 .. p0}, Lcom/android/mms/ui/ConversationList;->createNewMessage()V

    .line 1059
    :goto_2
    const/16 v18, 0x0

    goto :goto_0

    .line 1004
    :pswitch_5
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v18

    if-eqz v18, :cond_4

    .line 1005
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1006
    .local v16, threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v11

    .line 1007
    .local v11, listView:Landroid/widget/ListView;
    invoke-virtual {v11}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v4

    check-cast v4, Lcom/android/mms/ui/ConversationListAdapter;

    .line 1008
    .local v4, adapter:Lcom/android/mms/ui/ConversationListAdapter;
    invoke-virtual {v4}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v12

    .line 1009
    .local v12, num:I
    const/4 v14, 0x0

    .local v14, position:I
    :goto_3
    if-ge v14, v12, :cond_3

    .line 1010
    invoke-virtual {v11, v14}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/database/Cursor;

    .line 1011
    .local v9, cursor:Landroid/database/Cursor;
    move-object/from16 v0, p0

    invoke-static {v0, v9}, Lcom/android/mms/data/Conversation;->getFromCursor(Landroid/content/Context;Landroid/database/Cursor;)Lcom/android/mms/data/Conversation;

    move-result-object v6

    .line 1012
    .local v6, conv:Lcom/android/mms/data/Conversation;
    invoke-virtual {v6}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v18

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1009
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 1014
    .end local v6           #conv:Lcom/android/mms/data/Conversation;
    .end local v9           #cursor:Landroid/database/Cursor;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-object/from16 v18, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThreads(Ljava/util/Collection;Landroid/content/AsyncQueryHandler;)V

    goto :goto_2

    .line 1017
    .end local v4           #adapter:Lcom/android/mms/ui/ConversationListAdapter;
    .end local v11           #listView:Landroid/widget/ListView;
    .end local v12           #num:I
    .end local v14           #position:I
    .end local v16           #threadIds:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    :cond_4
    const-wide/16 v18, -0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    move-object/from16 v20, v0

    invoke-static/range {v18 .. v20}, Lcom/android/mms/ui/ConversationList;->confirmDeleteThread(JLandroid/content/AsyncQueryHandler;)V

    goto :goto_2

    .line 1021
    :pswitch_6
    const/4 v15, 0x0

    .line 1022
    .local v15, settingIntent:Landroid/content/Intent;
    invoke-static {}, Lcom/android/mms/MmsConfig;->isSupportTabSetting()Z

    move-result v18

    if-eqz v18, :cond_5

    .line 1023
    new-instance v15, Landroid/content/Intent;

    .end local v15           #settingIntent:Landroid/content/Intent;
    const-class v18, Lcom/android/mms/ui/MessageTabSettingActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1027
    .restart local v15       #settingIntent:Landroid/content/Intent;
    :goto_4
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v15, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_2

    .line 1025
    :cond_5
    new-instance v15, Landroid/content/Intent;

    .end local v15           #settingIntent:Landroid/content/Intent;
    const-class v18, Lcom/android/mms/ui/SettingListActivity;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v15, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .restart local v15       #settingIntent:Landroid/content/Intent;
    goto :goto_4

    .line 1031
    .end local v15           #settingIntent:Landroid/content/Intent;
    :pswitch_7
    new-instance v13, Landroid/content/Intent;

    invoke-direct {v13}, Landroid/content/Intent;-><init>()V

    .line 1032
    .local v13, omacpintent:Landroid/content/Intent;
    const-string v18, "com.mediatek.omacp"

    const-string v19, "com.mediatek.omacp.message.OmacpMessageList"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1033
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1034
    const/16 v18, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v13, v1}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto/16 :goto_2

    .line 1038
    .end local v13           #omacpintent:Landroid/content/Intent;
    :pswitch_8
    new-instance v17, Landroid/content/Intent;

    const-class v18, Lcom/android/mms/ui/WPMessageActivity;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-object/from16 v2, v18

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1039
    .local v17, wpIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 1042
    .end local v17           #wpIntent:Landroid/content/Intent;
    :pswitch_9
    invoke-static/range {p0 .. p0}, Lcom/android/mms/LogTag;->dumpInternalTables(Landroid/content/Context;)V

    goto/16 :goto_2

    .line 1045
    :pswitch_a
    new-instance v5, Landroid/content/Intent;

    const-string v18, "android.intent.action.MAIN"

    move-object/from16 v0, v18

    invoke-direct {v5, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1046
    .local v5, cellBroadcastIntent:Landroid/content/Intent;
    new-instance v18, Landroid/content/ComponentName;

    const-string v19, "com.android.cellbroadcastreceiver"

    const-string v20, "com.android.cellbroadcastreceiver.CellBroadcastListActivity"

    invoke-direct/range {v18 .. v20}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1049
    const/high16 v18, 0x1000

    move/from16 v0, v18

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1051
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    :goto_5
    const/16 v18, 0x1

    goto/16 :goto_0

    .line 1052
    :catch_0
    move-exception v10

    .line 1053
    .local v10, ignored:Landroid/content/ActivityNotFoundException;
    const-string v18, "ConversationList"

    const-string v19, "ActivityNotFoundException for CellBroadcastListActivity"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 973
    :pswitch_data_0
    .packed-switch 0x7f0f01bb
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 998
    :pswitch_data_1
    .packed-switch 0x7f0f01ba
        :pswitch_4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method protected onPause()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 2366
    iget-object v3, p0, Lcom/android/mms/ui/ConversationList;->mStatusBarManager:Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->hideSIMIndicator(Landroid/content/ComponentName;)V

    .line 2367
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mIsShowSIMIndicator:Z

    .line 2368
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2374
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 2375
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1}, Landroid/widget/AdapterView;->getFirstVisiblePosition()I

    move-result v3

    iput v3, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    .line 2376
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 2377
    .local v0, firstChild:Landroid/view/View;
    if-nez v0, :cond_0

    :goto_0
    iput v2, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    .line 2378
    return-void

    .line 2377
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 17
    .parameter "menu"

    .prologue
    .line 884
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/mms/ui/ConversationList;->mOptionsMenu:Landroid/view/Menu;

    .line 885
    invoke-direct/range {p0 .. p1}, Lcom/android/mms/ui/ConversationList;->setDeleteMenuVisible(Landroid/view/Menu;)V

    .line 888
    const v14, 0x7f0f01c3

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 889
    .local v8, item:Landroid/view/MenuItem;
    if-eqz v8, :cond_0

    .line 890
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 895
    :cond_0
    const v14, 0x7f0f01c1

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v8

    .line 896
    const/4 v14, 0x0

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 897
    const/4 v11, 0x0

    .line 899
    .local v11, otherAppContext:Landroid/content/Context;
    :try_start_0
    const-string v14, "com.mediatek.omacp"

    const/4 v15, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v15}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 904
    :goto_0
    if-eqz v11, :cond_1

    .line 905
    const-string v14, "omacp"

    const/4 v15, 0x5

    invoke-virtual {v11, v14, v15}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 907
    .local v13, sp:Landroid/content/SharedPreferences;
    const-string v14, "configuration_msg_exist"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 908
    .local v10, omaCpShow:Z
    if-eqz v10, :cond_1

    .line 909
    const/4 v14, 0x1

    invoke-interface {v8, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 915
    .end local v10           #omaCpShow:Z
    .end local v13           #sp:Landroid/content/SharedPreferences;
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ConversationList;->mSimSmsItem:Landroid/view/MenuItem;

    if-eqz v14, :cond_6

    .line 916
    invoke-static {}, Lcom/android/mms/ui/ConversationList;->getContext()Landroid/app/Activity;

    move-result-object v14

    invoke-static {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 918
    .local v9, listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "airplane_mode_on"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    const/4 v15, 0x1

    if-ne v14, v15, :cond_3

    const/4 v2, 0x1

    .line 920
    .local v2, airplaneOn:Z
    :goto_1
    const/4 v5, 0x0

    .line 921
    .local v5, hasReadySim:Z
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v7

    .line 923
    .local v7, iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_start_1
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_2
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 924
    .local v12, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v12}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v14

    invoke-virtual {v7, v14}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isRadioOnGemini(I)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v14

    if-eqz v14, :cond_2

    .line 925
    const/4 v5, 0x1

    goto :goto_2

    .line 901
    .end local v2           #airplaneOn:Z
    .end local v5           #hasReadySim:Z
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .end local v9           #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    .end local v12           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :catch_0
    move-exception v4

    .line 902
    .local v4, e:Ljava/lang/Exception;
    const-string v14, "Mms/convList"

    const-string v15, "ConversationList NotFoundContext"

    invoke-static {v14, v15}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 918
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v9       #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    :cond_3
    const/4 v2, 0x0

    goto :goto_1

    .line 928
    .restart local v2       #airplaneOn:Z
    .restart local v5       #hasReadySim:Z
    .restart local v7       #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_1
    move-exception v14

    .line 931
    :cond_4
    if-eqz v9, :cond_5

    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_5

    if-nez v2, :cond_5

    if-nez v5, :cond_8

    .line 932
    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ConversationList;->mSimSmsItem:Landroid/view/MenuItem;

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 939
    .end local v2           #airplaneOn:Z
    .end local v5           #hasReadySim:Z
    .end local v7           #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .end local v9           #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    :cond_6
    :goto_3
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_7

    .line 940
    const v14, 0x7f0f01bb

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 941
    .local v3, createGroupItem:Landroid/view/MenuItem;
    const/4 v14, 0x1

    invoke-interface {v3, v14}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 952
    .end local v3           #createGroupItem:Landroid/view/MenuItem;
    :cond_7
    const/4 v14, 0x1

    return v14

    .line 934
    .restart local v2       #airplaneOn:Z
    .restart local v5       #hasReadySim:Z
    .restart local v7       #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .restart local v9       #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/mms/ui/ConversationList;->mSimSmsItem:Landroid/view/MenuItem;

    const/4 v15, 0x1

    invoke-interface {v14, v15}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method protected onResume()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 2351
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2353
    sput-boolean v1, Lcom/android/mms/ui/ComposeMessageActivity;->mDestroy:Z

    .line 2356
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    .line 2357
    .local v0, name:Landroid/content/ComponentName;
    iput-boolean v1, p0, Lcom/android/mms/ui/ConversationList;->mIsShowSIMIndicator:Z

    .line 2358
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mStatusBarManager:Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

    invoke-virtual {v1, v0}, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->hideSIMIndicator(Landroid/content/ComponentName;)V

    .line 2359
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mStatusBarManager:Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

    const-string v2, "sms_sim_setting"

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->showSIMIndicator(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2361
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 3195
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 3197
    const-string v0, "last_list_pos"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstVisiblePosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3198
    const-string v0, "last_list_offset"

    iget v1, p0, Lcom/android/mms/ui/ConversationList;->mSavedFirstItemOffset:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3199
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 960
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onSimInforChanged()V
    .locals 3

    .prologue
    .line 2316
    const-string v0, "Mms"

    const-string v1, "onSimInforChanged(): Conversation List"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2318
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->mIsShowSIMIndicator:Z

    if-eqz v0, :cond_0

    .line 2319
    const-string v0, "Mms"

    const-string v1, "Hide current indicator and show new one."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2320
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mStatusBarManager:Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->hideSIMIndicator(Landroid/content/ComponentName;)V

    .line 2321
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mStatusBarManager:Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    const-string v2, "sms_sim_setting"

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/encapsulation/android/app/EncapsulatedStatusBarManager;->showSIMIndicator(Landroid/content/ComponentName;Ljava/lang/String;)V

    .line 2323
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 549
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 551
    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setMmsDirMode(Z)V

    .line 552
    const-string v1, "ConversationList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Performance test][Mms] loading data start time ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/16 v2, 0xef

    invoke-static {v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V

    .line 556
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 558
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationList;->mNeedToMarkAsSeen:Z

    .line 560
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationList;->mIsShowMmsApplication:Z

    .line 562
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->startAsyncQuery()V

    .line 564
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mDropdownAdapter:Landroid/widget/ArrayAdapter;

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    invoke-static {v5}, Lcom/android/mms/data/Conversation;->setActivated(Z)V

    .line 566
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->initSpinnerListAdapter()V

    .line 567
    const-string v1, ""

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 568
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mEmptyViewDefault:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 569
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v1, v6}, Landroid/view/View;->setVisibility(I)V

    .line 570
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mEmptyView:Lcom/mediatek/ipmsg/ui/ConversationEmptyView;

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 571
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 576
    :cond_0
    invoke-static {p0}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 577
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_1

    .line 578
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 579
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    new-instance v1, Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/mms/ui/ConversationList$NetworkStateReceiver;-><init>(Lcom/android/mms/ui/ConversationList;Lcom/android/mms/ui/ConversationList$1;)V

    iput-object v1, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    .line 581
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mNetworkStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 587
    .end local v0           #filter:Landroid/content/IntentFilter;
    :cond_1
    iput-boolean v5, p0, Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z

    .line 588
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v1, :cond_2

    .line 589
    const-string v1, "ConversationList"

    const-string v2, "set onContentChanged listener"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 590
    iget-object v1, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    iget-object v2, p0, Lcom/android/mms/ui/ConversationList;->mContentChangedListener:Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;

    invoke-virtual {v1, v2}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 612
    :cond_2
    invoke-static {}, Lcom/android/mms/data/Conversation;->loadingThreads()Z

    move-result v1

    if-nez v1, :cond_3

    .line 613
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 617
    :cond_3
    const-string v1, "ConversationList.onStart"

    invoke-static {p0, v1}, Lcom/android/mms/MmsConfig;->printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V

    .line 619
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 623
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 625
    iget-boolean v0, p0, Lcom/android/mms/ui/ConversationList;->needCloseSearchView:Z

    if-eqz v0, :cond_0

    .line 626
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->needCloseSearchView:Z

    .line 627
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->collapseActionView()Z

    .line 633
    :cond_0
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mIsInActivity:Z

    .line 636
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 639
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    if-eqz v0, :cond_1

    .line 640
    const-string v0, "ConversationList"

    const-string v1, "remove OnContentChangedListener"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mListAdapter:Lcom/android/mms/ui/ConversationListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/ConversationListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/ConversationListAdapter$OnContentChangedListener;)V

    .line 643
    :cond_1
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    if-eqz v0, :cond_2

    .line 644
    const-string v0, "ConversationList"

    const-string v1, "cancel undone queries in onStop"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a5

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 646
    iget-object v0, p0, Lcom/android/mms/ui/ConversationList;->mQueryHandler:Lcom/android/mms/ui/ConversationList$ThreadListQueryHandler;

    const/16 v1, 0x6a6

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 647
    iput-boolean v2, p0, Lcom/android/mms/ui/ConversationList;->mNeedQuery:Z

    .line 658
    :cond_2
    return-void
.end method

.method public declared-synchronized runOneTimeStorageLimitCheckForLegacyMessages()V
    .locals 3

    .prologue
    .line 477
    monitor-enter p0

    :try_start_0
    invoke-static {p0}, Lcom/android/mms/util/Recycler;->isAutoDeleteEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    invoke-direct {p0}, Lcom/android/mms/ui/ConversationList;->markCheckedMessageLimit()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 523
    :goto_0
    monitor-exit p0

    return-void

    .line 484
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/ConversationList$2;

    invoke-direct {v1, p0}, Lcom/android/mms/ui/ConversationList$2;-><init>(Lcom/android/mms/ui/ConversationList;)V

    const-string v2, "ConversationList.runOneTimeStorageLimitCheckForLegacyMessages"

    invoke-direct {v0, v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 477
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public showSimSms()V
    .locals 6

    .prologue
    const/high16 v5, 0x1000

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2559
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 2560
    .local v0, listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 2561
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2562
    .local v1, simSmsIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/SelectCardPreferenceActivity;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2563
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2564
    const-string v2, "preference"

    const-string v3, "pref_key_manage_sim_messages"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2565
    const-string v2, "preferenceTitleId"

    const v3, 0x7f0b02a7

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2566
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 2579
    .end local v1           #simSmsIntent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 2567
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v3, :cond_1

    .line 2568
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 2569
    .restart local v1       #simSmsIntent:Landroid/content/Intent;
    const-class v2, Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 2570
    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2571
    const-string v3, "SlotId"

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2572
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 2574
    .end local v1           #simSmsIntent:Landroid/content/Intent;
    :cond_1
    const v2, 0x7f0b006f

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.class public Lcom/android/mms/ui/FolderViewList;
.super Landroid/app/ListActivity;
.source "FolderViewList.java"

# interfaces
.implements Lcom/android/mms/util/DraftCache$OnDraftChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;,
        Lcom/android/mms/ui/FolderViewList$ModeCallback;,
        Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;,
        Lcom/android/mms/ui/FolderViewList$BaseProgressQueryHandler;,
        Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;,
        Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;
    }
.end annotation


# static fields
.field private static ACTIONMODE:Ljava/lang/String; = null

.field private static BOXTYPE:Ljava/lang/String; = null

.field private static final CB_URI:Landroid/net/Uri; = null

.field private static final CONV_TAG:Ljava/lang/String; = "Mms/FolderViewList"

.field private static final DEBUG:Z = false

.field public static final DRAFTFOLDER_LIST_QUERY_TOKEN:I = 0x3f1

.field private static final FOLDERVIEW_DELETE_OBSOLETE_THREADS_TOKEN:I = 0x3eb

.field public static final FOLDERVIEW_DELETE_TOKEN:I = 0x3e9

.field public static final FOLDERVIEW_HAVE_LOCKED_MESSAGES_TOKEN:I = 0x3ea

.field public static final FOLDERVIEW_KEY:Ljava/lang/String; = "floderview_key"

.field private static final FOR_FOLDERMODE_MULTIDELETE:Ljava/lang/String; = "ForFolderMultiDelete"

.field private static final FOR_MULTIDELETE:Ljava/lang/String; = "ForMultiDelete"

.field public static final INBOXFOLDER_LIST_QUERY_TOKEN:I = 0x457

.field private static final LOCAL_LOGV:Z = false

.field public static final MAX_FONT_SCALE:F = 1.1f

.field public static final MENU_ADD_TO_CONTACTS:I = 0x3

.field public static final MENU_CHANGEVIEW:I = 0x1

.field public static final MENU_DELETE:I = 0x0

.field public static final MENU_FORWORD:I = 0x5

.field public static final MENU_MULTIDELETE:I = 0x0

.field public static final MENU_REPLY:I = 0x6

.field public static final MENU_SIM_SMS:I = 0x4

.field public static final MENU_VIEW:I = 0x1

.field public static final MENU_VIEW_CONTACT:I = 0x2

.field private static final MMS_URI:Landroid/net/Uri; = null

.field private static NEED_RESTORE_ADAPTER_STATE:Ljava/lang/String; = null

.field public static final OPTION_DRAFTBOX:I = 0x2

.field public static final OPTION_INBOX:I = 0x0

.field public static final OPTION_OUTBOX:I = 0x1

.field public static final OPTION_SENTBOX:I = 0x3

.field public static final OUTBOXFOLDER_LIST_QUERY_TOKEN:I = 0x461

.field public static final REQUEST_CODE_DELETE_RESULT:I = 0xb4

.field public static final REQUEST_CODE_SELECT_SIMINFO:I = 0xa0

.field public static final SENTFOLDER_LIST_QUERY_TOKEN:I = 0x46b

.field private static final SIM_SMS_URI:Landroid/net/Uri; = null

.field private static final SMS_URI:Landroid/net/Uri; = null

.field private static final TAG:Ljava/lang/String; = "FolderViewList"

.field private static final VIEW_ITEM_KEY_BOXNAME:Ljava/lang/String; = "spinner_line_2"

.field private static final WAPPUSH_URI:Landroid/net/Uri;

.field private static mDeleteCounter:I

.field private static mSELECT_ITEM_IDS:Ljava/lang/String;

.field public static mgViewID:I


# instance fields
.field private context:Landroid/content/Context;

.field private mAccountDropdown:Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;

.field public mActionMode:Landroid/view/ActionMode;

.field private mAdapter:Landroid/widget/SimpleAdapter;

.field private mAdvancedSearchView:Lcom/android/mms/ui/AdvancedSearchView;

.field private mContact:Lcom/android/mms/data/Contact;

.field private final mContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

.field private mCountTextView:Landroid/widget/TextView;

.field private final mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

.field private mDeletedThreadIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDisableSearchFlag:Z

.field private mFolderSpinner:Landroid/view/View;

.field private mFontScale:F

.field private mHandler:Landroid/os/Handler;

.field private mHasLockedMsg:Z

.field private mIsInActivity:Z

.field private mIsNeedRestoreAdapterState:Z

.field private mIsQuerying:Z

.field private mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

.field private mListItemLockInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mListSelectedItem:[J

.field public mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

.field private mNeedQuery:Z

.field private mNeedToMarkAsSeen:Z

.field private mNeedUpdateListView:Z

.field private mOptionsMenu:Landroid/view/Menu;

.field private mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

.field mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

.field private mSIM_SMS_URI_NEW:Landroid/net/Uri;

.field private mSearchItem:Landroid/view/MenuItem;

.field private mSearchView:Landroid/widget/SearchView;

.field private mSpinnerTextView:Landroid/widget/TextView;

.field private final mThreadListKeyListener:Landroid/view/View$OnKeyListener;

.field private mType:I

.field private where:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    const-string v0, "content://sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->SMS_URI:Landroid/net/Uri;

    .line 177
    const-string v0, "content://mms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->MMS_URI:Landroid/net/Uri;

    .line 178
    const-string v0, "content://wappush/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->WAPPUSH_URI:Landroid/net/Uri;

    .line 179
    const-string v0, "content://cb/messages/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->CB_URI:Landroid/net/Uri;

    .line 180
    const-string v0, "content://mms-sms/sim_sms/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->SIM_SMS_URI:Landroid/net/Uri;

    .line 237
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/FolderViewList;->mDeleteCounter:I

    .line 242
    const-string v0, "actionMode"

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->ACTIONMODE:Ljava/lang/String;

    .line 243
    const-string v0, "boxType"

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->BOXTYPE:Ljava/lang/String;

    .line 244
    const-string v0, "needRestore"

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->NEED_RESTORE_ADAPTER_STATE:Ljava/lang/String;

    .line 245
    const-string v0, "selectItemIds"

    sput-object v0, Lcom/android/mms/ui/FolderViewList;->mSELECT_ITEM_IDS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 156
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 201
    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    .line 205
    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mContact:Lcom/android/mms/data/Contact;

    .line 211
    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    .line 216
    const-string v0, "content://mms-sms/sim_sms/#"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSIM_SMS_URI_NEW:Landroid/net/Uri;

    .line 220
    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    .line 226
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mDisableSearchFlag:Z

    .line 228
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mNeedUpdateListView:Z

    .line 230
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mIsQuerying:Z

    .line 231
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z

    .line 232
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z

    .line 240
    new-instance v0, Lcom/android/mms/ui/FolderViewList$ModeCallback;

    invoke-direct {v0, p0, v2}, Lcom/android/mms/ui/FolderViewList$ModeCallback;-><init>(Lcom/android/mms/ui/FolderViewList;Lcom/android/mms/ui/FolderViewList$1;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    .line 241
    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    .line 246
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mIsNeedRestoreAdapterState:Z

    .line 249
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mHasLockedMsg:Z

    .line 438
    new-instance v0, Lcom/android/mms/ui/FolderViewList$2;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderViewList$2;-><init>(Lcom/android/mms/ui/FolderViewList;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    .line 997
    new-instance v0, Lcom/android/mms/ui/FolderViewList$6;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderViewList$6;-><init>(Lcom/android/mms/ui/FolderViewList;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    .line 1092
    new-instance v0, Lcom/android/mms/ui/FolderViewList$7;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderViewList$7;-><init>(Lcom/android/mms/ui/FolderViewList;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    .line 1488
    new-instance v0, Lcom/android/mms/ui/FolderViewList$9;

    invoke-direct {v0, p0}, Lcom/android/mms/ui/FolderViewList$9;-><init>(Lcom/android/mms/ui/FolderViewList;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    .line 1839
    return-void
.end method

.method static synthetic access$1000(Lcom/android/mms/ui/FolderViewList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    return-void
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/mms/ui/FolderViewList;->MMS_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/mms/ui/FolderViewList;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderViewList;->markMmsIndReaded(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/mms/ui/FolderViewList;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/mms/ui/FolderViewList;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mDeleteObsoleteThreadsRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/mms/ui/FolderViewList;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/SimpleAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mAdapter:Landroid/widget/SimpleAdapter;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/mms/ui/FolderViewList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z

    return v0
.end method

.method static synthetic access$2102(Lcom/android/mms/ui/FolderViewList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z

    return p1
.end method

.method static synthetic access$2200(Lcom/android/mms/ui/FolderViewList;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/mms/ui/FolderViewList;)Landroid/view/Menu;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mOptionsMenu:Landroid/view/Menu;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/mms/ui/FolderViewList;Landroid/view/Menu;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderViewList;->setDeleteMenuVisible(Landroid/view/Menu;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/mms/ui/FolderViewList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewList;->mHasLockedMsg:Z

    return p1
.end method

.method static synthetic access$2600(Lcom/android/mms/ui/FolderViewList;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$2700()I
    .locals 1

    .prologue
    .line 156
    sget v0, Lcom/android/mms/ui/FolderViewList;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$2702(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    sput p0, Lcom/android/mms/ui/FolderViewList;->mDeleteCounter:I

    return p0
.end method

.method static synthetic access$2708()I
    .locals 2

    .prologue
    .line 156
    sget v0, Lcom/android/mms/ui/FolderViewList;->mDeleteCounter:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/mms/ui/FolderViewList;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$2710()I
    .locals 2

    .prologue
    .line 156
    sget v0, Lcom/android/mms/ui/FolderViewList;->mDeleteCounter:I

    add-int/lit8 v1, v0, -0x1

    sput v1, Lcom/android/mms/ui/FolderViewList;->mDeleteCounter:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/mms/ui/FolderViewList;)Landroid/view/MenuItem;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSearchItem:Landroid/view/MenuItem;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/android/mms/ui/FolderViewList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewList;->mDisableSearchFlag:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/mms/ui/FolderViewList;)Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mAccountDropdown:Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/mms/ui/FolderViewList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/mms/ui/FolderViewList;->mIsNeedRestoreAdapterState:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/mms/ui/FolderViewList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewList;->mIsNeedRestoreAdapterState:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/mms/ui/FolderViewList;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListSelectedItem:[J

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/mms/ui/FolderViewList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 156
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->confirmMultiDelete()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/mms/ui/FolderViewList;J)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/mms/ui/FolderViewList;->isMsgLocked(J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/mms/ui/FolderViewList;->WAPPUSH_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3600()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Lcom/android/mms/ui/FolderViewList;->CB_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/mms/ui/FolderViewList;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mFolderSpinner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/mms/ui/FolderViewList;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderViewList;->onAccountSpinnerItemClicked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/mms/ui/FolderViewList;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/mms/ui/FolderViewList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/mms/ui/FolderViewList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/mms/ui/FolderViewList;->mIsQuerying:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/mms/ui/FolderViewList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewList;->mIsQuerying:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/mms/ui/FolderViewList;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 156
    iget-boolean v0, p0, Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/mms/ui/FolderViewList;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 156
    iput-boolean p1, p0, Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z

    return p1
.end method

.method private confirmDeleteMessageDialog()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 914
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 915
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b02b6

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 916
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 917
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 920
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const v6, 0x7f04001f

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 921
    .local v2, contents:Landroid/view/View;
    const v5, 0x7f0f0087

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 922
    .local v3, msg:Landroid/widget/TextView;
    const v5, 0x7f0b0109

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    const v5, 0x7f0f0088

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 925
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 926
    iget-boolean v5, p0, Lcom/android/mms/ui/FolderViewList;->mHasLockedMsg:Z

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 927
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 929
    const v4, 0x7f0b02bf

    new-instance v5, Lcom/android/mms/ui/FolderViewList$5;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/ui/FolderViewList$5;-><init>(Lcom/android/mms/ui/FolderViewList;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 961
    const v4, 0x7f0b0296

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 962
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 963
    return-void

    .line 926
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method

.method private confirmDownloadDialog(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "listener"

    .prologue
    const v2, 0x7f0b0247

    .line 966
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 967
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 968
    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 969
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 970
    const v1, 0x7f0b00fa

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 971
    invoke-virtual {v0, v2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 972
    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 973
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 974
    return-void
.end method

.method private confirmMultiDelete()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 1728
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1729
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v5, 0x7f0b02b6

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1730
    const v5, 0x1010355

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    .line 1731
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 1734
    iget-object v5, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const v6, 0x7f04001f

    invoke-static {v5, v6, v7}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 1735
    .local v2, contents:Landroid/view/View;
    const v5, 0x7f0f0087

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1736
    .local v3, msg:Landroid/widget/TextView;
    const v5, 0x7f0b0075

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1738
    const v5, 0x7f0f0088

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    .line 1739
    .local v1, checkbox:Landroid/widget/CheckBox;
    invoke-virtual {v1, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 1740
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->selectedMsgHasLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1741
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 1742
    const v4, 0x7f0b02bf

    new-instance v5, Lcom/android/mms/ui/FolderViewList$10;

    invoke-direct {v5, p0, v1}, Lcom/android/mms/ui/FolderViewList$10;-><init>(Lcom/android/mms/ui/FolderViewList;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1835
    const v4, 0x7f0b0296

    invoke-virtual {v0, v4, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1836
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 1837
    return-void

    .line 1740
    :cond_0
    const/16 v4, 0x8

    goto :goto_0
.end method

.method private forwardMessage(Ljava/lang/String;)V
    .locals 3
    .parameter "body"

    .prologue
    .line 877
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 878
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.mms.ui.ForwardMessageActivity"

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 879
    const-string v1, "forwarded_message"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 880
    if-eqz p1, :cond_0

    .line 881
    const-string v1, "sms_body"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 883
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 884
    return-void
.end method

.method private getData()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 412
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 413
    .local v0, list:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 414
    .local v1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 415
    .local v2, res:Landroid/content/res/Resources;
    const-string v3, "spinner_line_2"

    const v4, 0x7f0b00eb

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 416
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 419
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "spinner_line_2"

    const v4, 0x7f0b00ec

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 422
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 423
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "spinner_line_2"

    const v4, 0x7f0b00ed

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 426
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 427
    .restart local v1       #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v3, "spinner_line_2"

    const v4, 0x7f0b00ee

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    return-object v0
.end method

.method private initListAdapter()V
    .locals 2

    .prologue
    .line 453
    const-string v0, "FolderViewList"

    const-string v1, "initListAdapter"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    if-nez v0, :cond_0

    .line 455
    const-string v0, "FolderViewList"

    const-string v1, "create it"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    new-instance v0, Lcom/android/mms/ui/FolderViewListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/FolderViewListAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    .line 457
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FolderViewListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;)V

    .line 458
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 459
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 461
    :cond_0
    return-void
.end method

.method private initSpinnerListAdapter()V
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 312
    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->getData()Ljava/util/List;

    move-result-object v2

    const v3, 0x7f04002d

    new-array v4, v5, [Ljava/lang/String;

    const-string v1, "spinner_line_2"

    aput-object v1, v4, v6

    new-array v5, v5, [I

    const v1, 0x7f0f00c2

    aput v1, v5, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mAdapter:Landroid/widget/SimpleAdapter;

    .line 316
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->setupActionBar()V

    .line 318
    new-instance v0, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;-><init>(Lcom/android/mms/ui/FolderViewList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mAccountDropdown:Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;

    .line 319
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mAccountDropdown:Lcom/android/mms/ui/FolderViewList$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mAdapter:Landroid/widget/SimpleAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 321
    return-void
.end method

.method private isMsgLocked(J)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 1857
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1858
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1860
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private markMmsIndReaded(Landroid/net/Uri;)V
    .locals 3
    .parameter "uri"

    .prologue
    .line 1293
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/mms/ui/FolderViewList$8;

    invoke-direct {v1, p0, p1}, Lcom/android/mms/ui/FolderViewList$8;-><init>(Lcom/android/mms/ui/FolderViewList;Landroid/net/Uri;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1301
    const-wide/16 v0, -0x2

    const/4 v2, 0x0

    invoke-static {p0, v0, v1, v2}, Lcom/android/mms/transaction/MessagingNotification;->nonBlockingUpdateNewMessageIndicator(Landroid/content/Context;JZ)V

    .line 1302
    return-void
.end method

.method private onAccountSpinnerItemClicked(I)V
    .locals 3
    .parameter "position"

    .prologue
    const/4 v2, 0x1

    .line 382
    packed-switch p1, :pswitch_data_0

    .line 407
    :goto_0
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAccountSpinnerItemClicked mgViewID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    return-void

    .line 384
    :pswitch_0
    const/4 v0, 0x0

    sput v0, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    .line 385
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 386
    iput-boolean v2, p0, Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z

    .line 387
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    goto :goto_0

    .line 390
    :pswitch_1
    sput v2, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    .line 391
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 392
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    goto :goto_0

    .line 395
    :pswitch_2
    const/4 v0, 0x2

    sput v0, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    .line 396
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 397
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    goto :goto_0

    .line 400
    :pswitch_3
    const/4 v0, 0x3

    sput v0, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    .line 401
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 402
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private selectedMsgHasLocked()Z
    .locals 4

    .prologue
    .line 1864
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {v2}, Lcom/android/mms/ui/FolderViewListAdapter;->getBackUpItemList()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 1865
    .local v1, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1867
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 1868
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1869
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/android/mms/ui/FolderViewList;->isMsgLocked(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1870
    const/4 v2, 0x1

    .line 1874
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Boolean;>;"
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private setBoxTitle(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 498
    packed-switch p1, :pswitch_data_0

    .line 512
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mgViewID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :goto_0
    return-void

    .line 500
    :pswitch_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00eb

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 503
    :pswitch_1
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00ec

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 506
    :pswitch_2
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00ed

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 509
    :pswitch_3
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v1, 0x7f0b00ee

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private setDeleteMenuVisible(Landroid/view/Menu;)V
    .locals 3
    .parameter "menu"

    .prologue
    const/4 v1, 0x0

    .line 1881
    if-eqz p1, :cond_1

    .line 1882
    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1883
    .local v0, item:Landroid/view/MenuItem;
    if-eqz v0, :cond_1

    .line 1884
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCount()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1887
    .end local v0           #item:Landroid/view/MenuItem;
    :cond_1
    return-void
.end method

.method private setupActionBar()V
    .locals 7

    .prologue
    const/16 v6, 0x10

    const/4 v5, -0x2

    .line 324
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 325
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f04002c

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 326
    .local v1, v:Landroid/view/ViewGroup;
    invoke-virtual {v0, v6, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 327
    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    const/16 v3, 0x13

    invoke-direct {v2, v5, v5, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 331
    const v2, 0x7f0f00c0

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mCountTextView:Landroid/widget/TextView;

    .line 333
    const v2, 0x7f0f00be

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mFolderSpinner:Landroid/view/View;

    .line 334
    const v2, 0x7f0f00bf

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    .line 335
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mSpinnerTextView:Landroid/widget/TextView;

    const v3, 0x7f0b00eb

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 337
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mFolderSpinner:Landroid/view/View;

    new-instance v3, Lcom/android/mms/ui/FolderViewList$1;

    invoke-direct {v3, p0}, Lcom/android/mms/ui/FolderViewList$1;-><init>(Lcom/android/mms/ui/FolderViewList;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    return-void
.end method

.method private showSimInfoSelectDialog()V
    .locals 3

    .prologue
    .line 977
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 978
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const-class v2, Lcom/android/mms/ui/SiminfoSelectedActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 979
    const-string v1, "FolderViewList"

    const-string v2, "showSimInfoSelectDialog"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 980
    const/16 v1, 0xa0

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 981
    return-void
.end method

.method private startAsyncQuery()V
    .locals 4

    .prologue
    .line 621
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mNeedQuery:Z

    .line 622
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mIsQuerying:Z

    .line 623
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 624
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAsyncQuery mgViewID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 625
    sget v1, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    packed-switch v1, :pswitch_data_0

    .line 646
    :goto_0
    return-void

    .line 627
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x457

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/FolderView;->startQueryForInboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    .line 628
    const/16 v1, 0x213

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 643
    :catch_0
    move-exception v0

    .line 644
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 631
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x461

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/FolderView;->startQueryForOutBoxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V

    goto :goto_0

    .line 635
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x3f1

    invoke-static {v1, v2}, Lcom/android/mms/data/FolderView;->startQueryForDraftboxView(Landroid/content/AsyncQueryHandler;I)V

    goto :goto_0

    .line 638
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x46b

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/mms/data/FolderView;->startQueryForSentboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 625
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private startAsyncQuery(I)V
    .locals 4
    .parameter "iPostTime"

    .prologue
    .line 652
    :try_start_0
    const-string v1, "FolderViewList"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startAsyncQuery(int iPostTime) mgViewID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget v3, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    sget v1, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    packed-switch v1, :pswitch_data_0

    .line 674
    :goto_0
    return-void

    .line 655
    :pswitch_0
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x457

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/android/mms/data/FolderView;->startQueryForInboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;I)V

    .line 656
    const/16 v1, 0x213

    invoke-static {p0, v1}, Lcom/android/mms/transaction/MessagingNotification;->cancelNotification(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 671
    :catch_0
    move-exception v0

    .line 672
    .local v0, e:Landroid/database/sqlite/SQLiteException;
    invoke-static {p0, v0}, Landroid/database/sqlite/SqliteWrapper;->checkSQLiteException(Landroid/content/Context;Landroid/database/sqlite/SQLiteException;)V

    goto :goto_0

    .line 659
    .end local v0           #e:Landroid/database/sqlite/SQLiteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x461

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/android/mms/data/FolderView;->startQueryForOutBoxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;I)V

    goto :goto_0

    .line 663
    :pswitch_2
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x3f1

    invoke-static {v1, v2, p1}, Lcom/android/mms/data/FolderView;->startQueryForDraftboxView(Landroid/content/AsyncQueryHandler;II)V

    goto :goto_0

    .line 666
    :pswitch_3
    iget-object v1, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v2, 0x46b

    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    invoke-static {v1, v2, v3, p1}, Lcom/android/mms/data/FolderView;->startQueryForSentboxView(Landroid/content/AsyncQueryHandler;ILjava/lang/String;I)V
    :try_end_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 653
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v1, -0x1

    .line 985
    const/16 v0, 0xa0

    if-ne p1, v0, :cond_1

    if-ne p2, v1, :cond_1

    .line 986
    const-string v0, "sim_id"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    .line 987
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult where="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    .line 993
    :cond_0
    :goto_0
    return-void

    .line 989
    :cond_1
    const/16 v0, 0xb4

    if-ne p1, v0, :cond_0

    if-ne p2, v1, :cond_0

    .line 990
    const-string v0, "delete_flag"

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/mms/ui/FolderViewList;->mNeedUpdateListView:Z

    .line 991
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onActivityResult mNeedUpdateListView ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/mms/ui/FolderViewList;->mNeedUpdateListView:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAddContactButtonClickInt(Ljava/lang/String;)V
    .locals 7
    .parameter "number"

    .prologue
    .line 841
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 842
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0087

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 843
    .local v2, message:Ljava/lang/String;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 847
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 849
    .local v1, dialog:Landroid/app/AlertDialog;
    const/4 v3, -0x1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0089

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/FolderViewList$3;

    invoke-direct {v5, p0, p1}, Lcom/android/mms/ui/FolderViewList$3;-><init>(Lcom/android/mms/ui/FolderViewList;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 862
    const/4 v3, -0x2

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0088

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lcom/android/mms/ui/FolderViewList$4;

    invoke-direct {v5, p0, p1}, Lcom/android/mms/ui/FolderViewList$4;-><init>(Lcom/android/mms/ui/FolderViewList;Ljava/lang/String;)V

    invoke-virtual {v1, v3, v4, v5}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 873
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 875
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    .end local v1           #dialog:Landroid/app/AlertDialog;
    .end local v2           #message:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 906
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 910
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 263
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 265
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    .line 266
    const v2, 0x7f040033

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setContentView(I)V

    .line 267
    new-instance v2, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;-><init>(Lcom/android/mms/ui/FolderViewList;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    .line 269
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 271
    .local v1, listView:Landroid/widget/ListView;
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mThreadListKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 276
    new-instance v2, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/mms/ui/FolderViewList$MultiSelectOnLongClickListener;-><init>(Lcom/android/mms/ui/FolderViewList;Lcom/android/mms/ui/FolderViewList$1;)V

    invoke-virtual {v1, v2}, Landroid/widget/AdapterView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 277
    if-eqz p1, :cond_1

    .line 278
    sget-object v2, Lcom/android/mms/ui/FolderViewList;->BOXTYPE:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    .line 279
    sget-object v2, Lcom/android/mms/ui/FolderViewList;->NEED_RESTORE_ADAPTER_STATE:Ljava/lang/String;

    invoke-virtual {p1, v2, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/mms/ui/FolderViewList;->mIsNeedRestoreAdapterState:Z

    .line 285
    :goto_0
    const v2, 0x7f0f0080

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 286
    .local v0, emptyView:Landroid/view/View;
    invoke-virtual {v1, v0}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 288
    iput-object p0, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    .line 289
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->initListAdapter()V

    .line 290
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mHandler:Landroid/os/Handler;

    .line 292
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->initSpinnerListAdapter()V

    .line 293
    const-string v2, ""

    invoke-virtual {p0, v2}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 295
    const-string v2, "FolderViewList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate, mgViewID:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    sget v2, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-direct {p0, v2}, Lcom/android/mms/ui/FolderViewList;->setBoxTitle(I)V

    .line 297
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mListItemLockInfo:Ljava/util/Map;

    .line 298
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mDeletedThreadIds:Ljava/util/HashSet;

    .line 303
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iput v2, p0, Lcom/android/mms/ui/FolderViewList;->mFontScale:F

    .line 304
    const-string v2, "FolderViewList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "system fontscale is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/mms/ui/FolderViewList;->mFontScale:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget v2, p0, Lcom/android/mms/ui/FolderViewList;->mFontScale:F

    const v3, 0x3f8ccccd

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    .line 306
    iget-object v2, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/mms/ui/FolderViewListAdapter;->setSubjectSingleLineMode(Z)V

    .line 308
    :cond_0
    return-void

    .line 281
    .end local v0           #emptyView:Landroid/view/View;
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "floderview_key"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    .line 282
    iput-boolean v4, p0, Lcom/android/mms/ui/FolderViewList;->mIsNeedRestoreAdapterState:Z

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1316
    const v6, 0x7f0b033e

    invoke-interface {p1, v8, v8, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1317
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v6

    const v7, 0x7f0e0001

    invoke-virtual {v6, v7, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1318
    const v6, 0x7f0f01bf

    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 1319
    const v6, 0x7f0f01c3

    invoke-interface {p1, v6}, Landroid/view/Menu;->removeItem(I)V

    .line 1320
    const v6, 0x7f0f01bc

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mSearchItem:Landroid/view/MenuItem;

    .line 1321
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v6}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/mms/ui/AdvancedSearchView;

    iput-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mAdvancedSearchView:Lcom/android/mms/ui/AdvancedSearchView;

    .line 1322
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mAdvancedSearchView:Lcom/android/mms/ui/AdvancedSearchView;

    invoke-virtual {v6}, Lcom/android/mms/ui/AdvancedSearchView;->getSearchView()Landroid/widget/SearchView;

    move-result-object v6

    iput-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;

    .line 1324
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;

    iget-object v7, p0, Lcom/android/mms/ui/FolderViewList;->mQueryTextListener:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 1325
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;

    const v7, 0x7f0b031c

    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 1326
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v9}, Landroid/widget/SearchView;->setIconifiedByDefault(Z)V

    .line 1327
    const-string v6, "search"

    invoke-virtual {p0, v6}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/SearchManager;

    .line 1328
    .local v5, searchManager:Landroid/app/SearchManager;
    if-eqz v5, :cond_0

    .line 1329
    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 1330
    .local v2, info:Landroid/app/SearchableInfo;
    iget-object v6, p0, Lcom/android/mms/ui/FolderViewList;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v6, v2}, Landroid/widget/SearchView;->setSearchableInfo(Landroid/app/SearchableInfo;)V

    .line 1333
    .end local v2           #info:Landroid/app/SearchableInfo;
    :cond_0
    const v6, 0x7f0f01c2

    invoke-interface {p1, v6}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 1334
    .local v0, cellBroadcastItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_2

    .line 1336
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x1110044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    .line 1339
    .local v3, isCellBroadcastAppLinkEnabled:Z
    if-eqz v3, :cond_1

    .line 1340
    :try_start_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1341
    .local v4, pm:Landroid/content/pm/PackageManager;
    const-string v6, "com.android.cellbroadcastreceiver"

    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_1

    .line 1343
    const/4 v3, 0x0

    .line 1349
    .end local v4           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    if-nez v3, :cond_2

    .line 1350
    invoke-interface {v0, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1353
    .end local v3           #isCellBroadcastAppLinkEnabled:Z
    :cond_2
    const v6, 0x7f0b00f0

    invoke-interface {p1, v8, v9, v8, v6}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 1354
    const/4 v6, 0x4

    const v7, 0x7f0b003e

    invoke-interface {p1, v8, v6, v8, v7}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v6

    const v7, 0x7f0200ce

    invoke-interface {v6, v7}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1356
    return v9

    .line 1346
    .restart local v3       #isCellBroadcastAppLinkEnabled:Z
    :catch_0
    move-exception v1

    .line 1347
    .local v1, ignored:Ljava/lang/IllegalArgumentException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 583
    const-string v0, "FolderViewList"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    if-eqz v0, :cond_0

    .line 585
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 586
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v1, 0x3f1

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 587
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v1, 0x457

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 588
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v1, 0x461

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 589
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v1, 0x46b

    invoke-virtual {v0, v1}, Landroid/content/AsyncQueryHandler;->cancelOperation(I)V

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    if-eqz v0, :cond_1

    .line 592
    const-string v0, "FolderViewList"

    const-string v1, "clear mListAdapter"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 595
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 596
    return-void
.end method

.method public onDraftChanged(JZ)V
    .locals 2
    .parameter "threadId"
    .parameter "hasDraft"

    .prologue
    .line 1307
    const-string v0, "FolderViewList"

    const-string v1, "Override onDraftChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    sget v0, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1309
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mQueryHandler:Lcom/android/mms/ui/FolderViewList$ThreadListQueryHandler;

    const/16 v1, 0x3f1

    invoke-static {v0, v1}, Lcom/android/mms/data/FolderView;->startQueryForDraftboxView(Landroid/content/AsyncQueryHandler;I)V

    .line 1311
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 599
    sparse-switch p1, :sswitch_data_0

    .line 616
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 601
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 602
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/app/Activity;->moveTaskToBack(Z)Z

    goto :goto_0

    .line 604
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 608
    :sswitch_1
    iget-boolean v1, p0, Lcom/android/mms/ui/FolderViewList;->mDisableSearchFlag:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 599
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x54 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 24
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 678
    invoke-virtual/range {p0 .. p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move/from16 v0, p3

    invoke-virtual {v3, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/database/Cursor;

    .line 679
    .local v12, cursor:Landroid/database/Cursor;
    if-nez v12, :cond_1

    .line 680
    const-string v3, "FolderViewList"

    const-string v4, "cursor == null"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    :cond_0
    :goto_0
    return-void

    .line 683
    :cond_1
    const/4 v3, 0x6

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    .line 684
    .local v23, type:I
    const/4 v3, 0x0

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    .line 686
    .local v19, messageid:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v3, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    if-eqz v3, :cond_3

    .line 687
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    move/from16 v0, v19

    int-to-long v3, v0

    move/from16 v0, v23

    invoke-static {v0, v3, v4}, Lcom/android/mms/ui/FolderViewListAdapter;->getKey(IJ)J

    move-result-wide v16

    .line 688
    .local v16, itemId:J
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/mms/ui/FolderViewList;->mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Lcom/android/mms/ui/FolderViewListAdapter;->isContainItemId(J)Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    :goto_1
    move/from16 v0, p3

    invoke-virtual {v4, v0, v3}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->setItemChecked(IZ)V

    .line 689
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    #calls: Lcom/android/mms/ui/FolderViewList$ModeCallback;->updateActionMode()V
    invoke-static {v3}, Lcom/android/mms/ui/FolderViewList$ModeCallback;->access$1100(Lcom/android/mms/ui/FolderViewList$ModeCallback;)V

    .line 690
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 688
    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    .line 694
    .end local v16           #itemId:J
    :cond_3
    const-string v3, "FolderViewList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "messageid ="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "  mgViewID = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    sget v3, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    .line 696
    const/4 v3, 0x1

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v21

    .line 697
    .local v21, threadId:J
    move-object/from16 v0, p0

    move-wide/from16 v1, v21

    invoke-static {v0, v1, v2}, Lcom/android/mms/ui/ComposeMessageActivity;->createIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v15

    .line 698
    .local v15, it:Landroid/content/Intent;
    const-string v3, "folderbox"

    sget v4, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 699
    const-string v3, "hiderecipient"

    const/4 v4, 0x0

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 700
    const-string v3, "showinput"

    const/4 v4, 0x1

    invoke-virtual {v15, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 701
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 704
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    const/4 v4, 0x0

    move-wide/from16 v0, v21

    invoke-virtual {v3, v0, v1, v4}, Lcom/android/mms/util/DraftCache;->setDraftState(JZ)V

    goto/16 :goto_0

    .line 705
    .end local v15           #it:Landroid/content/Intent;
    .end local v21           #threadId:J
    :cond_4
    const/4 v3, 0x1

    move/from16 v0, v23

    if-ne v0, v3, :cond_5

    .line 706
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 707
    .local v14, intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 708
    sget-object v3, Lcom/android/mms/ui/FolderViewList;->SMS_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 709
    const-string v3, "msg_type"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 710
    const-string v3, "folderbox"

    sget v4, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 711
    const/16 v3, 0xb4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 712
    .end local v14           #intent:Landroid/content/Intent;
    :cond_5
    const/4 v3, 0x3

    move/from16 v0, v23

    if-ne v0, v3, :cond_6

    .line 714
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 715
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 716
    sget-object v3, Lcom/android/mms/ui/FolderViewList;->WAPPUSH_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 717
    const-string v3, "msg_type"

    const/4 v4, 0x3

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 718
    const-string v3, "folderbox"

    sget v4, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 719
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 720
    .end local v14           #intent:Landroid/content/Intent;
    :cond_6
    const/4 v3, 0x4

    move/from16 v0, v23

    if-ne v0, v3, :cond_7

    .line 722
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 723
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/FolderModeSmsViewer;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 724
    sget-object v3, Lcom/android/mms/ui/FolderViewList;->CB_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 725
    const-string v3, "msg_type"

    const/4 v4, 0x4

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 726
    const-string v3, "folderbox"

    sget v4, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 727
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 728
    .end local v14           #intent:Landroid/content/Intent;
    :cond_7
    const/4 v3, 0x2

    move/from16 v0, v23

    if-ne v0, v3, :cond_0

    .line 729
    const-string v3, "FolderViewList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "TYPE1 = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v6, 0x9

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "   mgViewID="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget v6, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    const/16 v3, 0x9

    invoke-interface {v12, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/16 v4, 0x82

    if-ne v3, v4, :cond_b

    .line 731
    invoke-static {}, Lcom/android/mms/util/DownloadManager;->getInstance()Lcom/android/mms/util/DownloadManager;

    move-result-object v13

    .line 732
    .local v13, dManager:Lcom/android/mms/util/DownloadManager;
    sget-object v3, Lcom/android/mms/ui/FolderViewList;->MMS_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/android/mms/util/DownloadManager;->getState(Landroid/net/Uri;)I

    move-result v18

    .line 734
    .local v18, loadstate:I
    const-string v3, "FolderViewList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loadstate = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    const/4 v10, 0x0

    .line 736
    .local v10, autoDownload:Z
    const/4 v9, 0x2

    .line 737
    .local v9, PDU_COLUMN_STATUS:I
    const/4 v3, 0x3

    new-array v5, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "msg_box"

    aput-object v4, v5, v3

    const/4 v3, 0x1

    const-string v4, "m_id"

    aput-object v4, v5, v3

    const/4 v3, 0x2

    const-string v4, "st"

    aput-object v4, v5, v3

    .line 742
    .local v5, PDU_PROJECTION:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/mms/ui/FolderViewList;->MMS_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    .line 743
    .local v11, c:Landroid/database/Cursor;
    const/16 v20, 0x0

    .line 746
    .local v20, status:I
    :try_start_0
    invoke-interface {v12}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 747
    const/4 v3, 0x2

    invoke-interface {v11, v3}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v20

    .line 750
    :cond_8
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    .line 752
    const-string v3, "FolderViewList"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "status"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    and-int/lit8 v3, v20, 0x4

    if-nez v3, :cond_9

    .line 756
    const/4 v10, 0x1

    .line 759
    :cond_9
    const/16 v3, 0x81

    move/from16 v0, v18

    if-eq v0, v3, :cond_a

    if-nez v10, :cond_a

    .line 760
    new-instance v3, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;

    sget-object v4, Lcom/android/mms/ui/FolderViewList;->MMS_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v4, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const/16 v6, 0xa

    invoke-interface {v12, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v3, v0, v4, v6, v1}, Lcom/android/mms/ui/FolderViewList$DownloadMessageListener;-><init>(Lcom/android/mms/ui/FolderViewList;Landroid/net/Uri;II)V

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/mms/ui/FolderViewList;->confirmDownloadDialog(Landroid/content/DialogInterface$OnClickListener;)V

    goto/16 :goto_0

    .line 750
    :catchall_0
    move-exception v3

    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    throw v3

    .line 763
    :cond_a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const v4, 0x7f0b00f9

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 766
    .end local v5           #PDU_PROJECTION:[Ljava/lang/String;
    .end local v9           #PDU_COLUMN_STATUS:I
    .end local v10           #autoDownload:Z
    .end local v11           #c:Landroid/database/Cursor;
    .end local v13           #dManager:Lcom/android/mms/util/DownloadManager;
    .end local v18           #loadstate:I
    .end local v20           #status:I
    :cond_b
    new-instance v14, Landroid/content/Intent;

    invoke-direct {v14}, Landroid/content/Intent;-><init>()V

    .line 767
    .restart local v14       #intent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const-class v4, Lcom/android/mms/ui/MmsPlayerActivity;

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 768
    sget-object v3, Lcom/android/mms/ui/FolderViewList;->MMS_URI:Landroid/net/Uri;

    move/from16 v0, v19

    int-to-long v6, v0

    invoke-static {v3, v6, v7}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 769
    const-string v3, "dirmode"

    const/4 v4, 0x1

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 770
    const-string v3, "folderbox"

    sget v4, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v14, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 771
    const/16 v3, 0xb4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14, v3}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 467
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 468
    const-string v0, "floderview_key"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    .line 469
    const-string v0, "FolderViewList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent, mgViewID:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    sget v0, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-direct {p0, v0}, Lcom/android/mms/ui/FolderViewList;->setBoxTitle(I)V

    .line 471
    sget v0, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 472
    invoke-static {p0}, Lcom/android/mms/data/FolderView;->markFailedSmsMmsSeen(Landroid/content/Context;)V

    .line 474
    :cond_0
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    .line 475
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 14
    .parameter "item"

    .prologue
    const/4 v13, -0x1

    const/4 v10, 0x0

    const/high16 v12, 0x1000

    const/4 v11, 0x1

    .line 1415
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v8

    sparse-switch v8, :sswitch_data_0

    .line 1485
    :goto_0
    return v11

    .line 1417
    :sswitch_0
    invoke-static {v10}, Lcom/android/mms/MmsConfig;->setMmsDirMode(Z)V

    .line 1418
    invoke-static {p0}, Lcom/android/mms/ui/MessageUtils;->updateNotification(Landroid/content/Context;)V

    .line 1419
    new-instance v8, Landroid/content/Intent;

    const-class v9, Lcom/android/mms/ui/ConversationList;

    invoke-direct {v8, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v8}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1420
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1423
    :sswitch_1
    new-instance v2, Landroid/content/Intent;

    iget-object v8, p0, Lcom/android/mms/ui/FolderViewList;->context:Landroid/content/Context;

    const-class v9, Lcom/android/mms/ui/ComposeMessageActivity;

    invoke-direct {v2, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1424
    .local v2, intent:Landroid/content/Intent;
    const-string v8, "folderbox"

    sget v9, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v2, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1425
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1428
    .end local v2           #intent:Landroid/content/Intent;
    :sswitch_2
    new-instance v6, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/SettingListActivity;

    invoke-direct {v6, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1429
    .local v6, sintent:Landroid/content/Intent;
    invoke-virtual {p0, v6, v13}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 1432
    .end local v6           #sintent:Landroid/content/Intent;
    :sswitch_3
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->showSimInfoSelectDialog()V

    goto :goto_0

    .line 1435
    :sswitch_4
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    .line 1436
    .local v4, omacpintent:Landroid/content/Intent;
    const-string v8, "com.mediatek.omacp"

    const-string v9, "com.mediatek.omacp.message.OmacpMessageList"

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1437
    invoke-virtual {v4, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1438
    invoke-virtual {p0, v4, v13}, Landroid/app/Activity;->startActivityIfNeeded(Landroid/content/Intent;I)Z

    goto :goto_0

    .line 1441
    .end local v4           #omacpintent:Landroid/content/Intent;
    :sswitch_5
    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/android/mms/ui/WPMessageActivity;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1442
    .local v7, wpIntent:Landroid/content/Intent;
    invoke-virtual {p0, v7}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 1445
    .end local v7           #wpIntent:Landroid/content/Intent;
    :sswitch_6
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->confirmDeleteMessageDialog()V

    goto :goto_0

    .line 1449
    :sswitch_7
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 1450
    .local v3, listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v11, :cond_0

    .line 1451
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1452
    .local v5, simSmsIntent:Landroid/content/Intent;
    const-class v8, Lcom/android/mms/ui/SelectCardPreferenceActivity;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1453
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1454
    const-string v8, "preference"

    const-string v9, "pref_key_manage_sim_messages"

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1455
    const-string v8, "preferenceTitleId"

    const v9, 0x7f0b02a7

    invoke-virtual {v5, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1456
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1457
    .end local v5           #simSmsIntent:Landroid/content/Intent;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    if-ne v8, v11, :cond_1

    .line 1458
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1459
    .restart local v5       #simSmsIntent:Landroid/content/Intent;
    const-class v8, Lcom/android/mms/ui/ManageSimMessages;

    invoke-virtual {v5, p0, v8}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 1460
    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1461
    const-string v9, "SlotId"

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v8}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v8

    invoke-virtual {v5, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1462
    invoke-virtual {p0, v5}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 1464
    .end local v5           #simSmsIntent:Landroid/content/Intent;
    :cond_1
    const v8, 0x7f0b006f

    invoke-static {p0, v8, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 1471
    .end local v3           #listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    :sswitch_8
    new-instance v0, Landroid/content/Intent;

    const-string v8, "android.intent.action.MAIN"

    invoke-direct {v0, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1472
    .local v0, cellBroadcastIntent:Landroid/content/Intent;
    new-instance v8, Landroid/content/ComponentName;

    const-string v9, "com.android.cellbroadcastreceiver"

    const-string v10, "com.android.cellbroadcastreceiver.CellBroadcastListActivity"

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1475
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1477
    :try_start_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1478
    :catch_0
    move-exception v1

    .line 1479
    .local v1, ignored:Landroid/content/ActivityNotFoundException;
    const-string v8, "FolderViewList"

    const-string v9, "ActivityNotFoundException for CellBroadcastListActivity"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1415
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_0
        0x4 -> :sswitch_7
        0x7f0f01ba -> :sswitch_1
        0x7f0f01be -> :sswitch_3
        0x7f0f01c0 -> :sswitch_2
        0x7f0f01c1 -> :sswitch_4
        0x7f0f01c2 -> :sswitch_8
        0x7f0f01c4 -> :sswitch_5
    .end sparse-switch
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 520
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 521
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 14
    .parameter "menu"

    .prologue
    .line 1362
    iput-object p1, p0, Lcom/android/mms/ui/FolderViewList;->mOptionsMenu:Landroid/view/Menu;

    .line 1363
    invoke-direct {p0, p1}, Lcom/android/mms/ui/FolderViewList;->setDeleteMenuVisible(Landroid/view/Menu;)V

    .line 1365
    const/4 v11, 0x4

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1366
    .local v5, item:Landroid/view/MenuItem;
    invoke-static {p0}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getInsertedSimInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v6

    .line 1368
    .local v6, listSimInfo:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_1

    const/4 v0, 0x1

    .line 1370
    .local v0, airplaneOn:Z
    :goto_0
    const/4 v2, 0x0

    .line 1371
    .local v2, hasReadySim:Z
    invoke-static {}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->getInstance()Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;

    move-result-object v4

    .line 1373
    .local v4, iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :try_start_0
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 1374
    .local v9, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    invoke-virtual {v9}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSlot()I

    move-result v11

    invoke-virtual {v4, v11}, Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;->isRadioOnGemini(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    if-eqz v11, :cond_0

    .line 1375
    const/4 v2, 0x1

    goto :goto_1

    .line 1368
    .end local v0           #airplaneOn:Z
    .end local v2           #hasReadySim:Z
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    .end local v9           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1378
    .restart local v0       #airplaneOn:Z
    .restart local v2       #hasReadySim:Z
    .restart local v4       #iTelephony:Lcom/mediatek/encapsulation/com/android/internal/telephony/EncapsulatedTelephonyService;
    :catch_0
    move-exception v11

    .line 1381
    :cond_2
    if-eqz v6, :cond_3

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_3

    if-nez v0, :cond_3

    if-nez v2, :cond_6

    .line 1382
    :cond_3
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1383
    const-string v11, "FolderViewList"

    const-string v12, "onPrepareOptionsMenu MenuItem setEnabled(false)"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    :goto_2
    if-eqz v6, :cond_4

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_4

    sget v11, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    const/4 v12, 0x2

    if-eq v11, v12, :cond_4

    .line 1389
    const v11, 0x7f0f01be

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1390
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1393
    :cond_4
    const v11, 0x7f0f01c1

    invoke-interface {p1, v11}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 1394
    const/4 v11, 0x0

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1395
    const/4 v8, 0x0

    .line 1397
    .local v8, otherAppContext:Landroid/content/Context;
    :try_start_1
    const-string v11, "com.mediatek.omacp"

    const/4 v12, 0x2

    invoke-virtual {p0, v11, v12}, Landroid/content/ContextWrapper;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 1402
    :goto_3
    if-eqz v8, :cond_5

    .line 1403
    const-string v11, "omacp"

    const/4 v12, 0x5

    invoke-virtual {v8, v11, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v10

    .line 1405
    .local v10, sp:Landroid/content/SharedPreferences;
    const-string v11, "configuration_msg_exist"

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 1406
    .local v7, omaCpShow:Z
    if-eqz v7, :cond_5

    .line 1407
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1410
    .end local v7           #omaCpShow:Z
    .end local v10           #sp:Landroid/content/SharedPreferences;
    :cond_5
    const/4 v11, 0x1

    return v11

    .line 1385
    .end local v8           #otherAppContext:Landroid/content/Context;
    :cond_6
    const/4 v11, 0x1

    invoke-interface {v5, v11}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 1399
    .restart local v8       #otherAppContext:Landroid/content/Context;
    :catch_1
    move-exception v1

    .line 1400
    .local v1, e:Ljava/lang/Exception;
    const-string v11, "Mms/FolderViewList"

    const-string v12, "ConversationList NotFoundContext"

    invoke-static {v11, v12}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 1511
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1512
    sget-object v0, Lcom/android/mms/ui/FolderViewList;->ACTIONMODE:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1513
    sget-object v0, Lcom/android/mms/ui/FolderViewList;->mSELECT_ITEM_IDS:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListSelectedItem:[J

    .line 1514
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mModeCallBack:Lcom/android/mms/ui/FolderViewList$ModeCallback;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    .line 1515
    const-string v0, "FolderViewList"

    const-string v1, "onRestoreInstanceState: start actionMode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 479
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 481
    const/4 v1, 0x4

    invoke-static {v1}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IAppGuideExt;

    .line 483
    .local v0, appGuideExt:Lcom/mediatek/mms/ext/IAppGuideExt;
    if-eqz v0, :cond_0

    .line 484
    const-string v1, "MMS"

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ext/IAppGuideExt;->showAppGuide(Ljava/lang/String;)V

    .line 495
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 8
    .parameter "outState"

    .prologue
    const/4 v7, 0x1

    .line 1522
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1523
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList;->mActionMode:Landroid/view/ActionMode;

    if-eqz v4, :cond_1

    .line 1524
    const-string v4, "FolderViewList"

    const-string v5, "onSaveInstanceState: mActionMode not null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1525
    sget-object v4, Lcom/android/mms/ui/FolderViewList;->ACTIONMODE:Ljava/lang/String;

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1526
    sget-object v4, Lcom/android/mms/ui/FolderViewList;->BOXTYPE:Ljava/lang/String;

    sget v5, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {p1, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1527
    const-string v4, "FolderViewList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSaveInstanceState    mgViewID = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget v6, Lcom/android/mms/ui/FolderViewList;->mgViewID:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1528
    sget-object v4, Lcom/android/mms/ui/FolderViewList;->NEED_RESTORE_ADAPTER_STATE:Ljava/lang/String;

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1529
    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {v4}, Lcom/android/mms/ui/FolderViewListAdapter;->getBackUpItemList()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 1530
    .local v1, selectItemId:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/Long;

    invoke-interface {v1, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Long;

    move-object v2, v4

    check-cast v2, [Ljava/lang/Long;

    .line 1531
    .local v2, selectList:[Ljava/lang/Long;
    array-length v4, v2

    new-array v3, v4, [J

    .line 1532
    .local v3, selectedList:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v2

    if-ge v0, v4, :cond_0

    .line 1533
    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    aput-wide v4, v3, v0

    .line 1532
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1535
    :cond_0
    sget-object v4, Lcom/android/mms/ui/FolderViewList;->mSELECT_ITEM_IDS:Ljava/lang/String;

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 1536
    const-string v4, "FolderViewList"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSaveInstanceState--selectItemIds:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1538
    .end local v0           #i:I
    .end local v1           #selectItemId:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    .end local v2           #selectList:[Ljava/lang/Long;
    .end local v3           #selectedList:[J
    :cond_1
    return-void
.end method

.method public onSearchRequested()Z
    .locals 1

    .prologue
    .line 1505
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mSearchItem:Landroid/view/MenuItem;

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    .line 1506
    const/4 v0, 0x1

    return v0
.end method

.method protected onStart()V
    .locals 7

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 524
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 526
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    if-eqz v3, :cond_0

    .line 527
    const-string v3, "FolderViewList"

    const-string v4, "set OnContentChangedListener"

    invoke-static {v3, v4}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    iget-object v4, p0, Lcom/android/mms/ui/FolderViewList;->mContentChangedListener:Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;

    invoke-virtual {v3, v4}, Lcom/android/mms/ui/FolderViewListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;)V

    .line 531
    :cond_0
    iget-boolean v3, p0, Lcom/android/mms/ui/FolderViewList;->mNeedUpdateListView:Z

    if-eqz v3, :cond_1

    .line 532
    const-string v3, "FolderViewList"

    const-string v4, "onStart mNeedUpdateListView"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v3, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    invoke-virtual {v3, v5}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 535
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/mms/ui/FolderViewList;->mNeedUpdateListView:Z

    .line 537
    :cond_1
    invoke-static {v6}, Lcom/android/mms/MmsConfig;->setMmsDirMode(Z)V

    .line 539
    invoke-static {v6}, Lcom/android/mms/MmsPluginManager;->getMmsPluginObject(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mms/ext/IMmsDialogNotify;

    .line 541
    .local v0, dialogPlugin:Lcom/mediatek/mms/ext/IMmsDialogNotify;
    invoke-interface {v0}, Lcom/mediatek/mms/ext/IMmsDialogNotify;->closeMsgDialog()V

    .line 543
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/mms/util/DraftCache;->addOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 547
    invoke-static {}, Lcom/android/mms/MmsConfig;->getSimCardInfo()I

    move-result v1

    .line 548
    .local v1, mindex:I
    const/4 v2, 0x0

    .line 549
    .local v2, si:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-nez v1, :cond_4

    .line 550
    iput-object v5, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    .line 560
    :cond_2
    :goto_0
    iput-boolean v6, p0, Lcom/android/mms/ui/FolderViewList;->mNeedToMarkAsSeen:Z

    .line 561
    invoke-direct {p0}, Lcom/android/mms/ui/FolderViewList;->startAsyncQuery()V

    .line 562
    iput-boolean v6, p0, Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z

    .line 564
    const-string v3, "FolderViewList.onStart"

    invoke-static {p0, v3}, Lcom/android/mms/MmsConfig;->printMmsMemStat(Landroid/content/Context;Ljava/lang/String;)V

    .line 566
    :cond_3
    return-void

    .line 551
    :cond_4
    if-lez v1, :cond_3

    .line 552
    add-int/lit8 v3, v1, -0x1

    invoke-static {p0, v3}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v2

    .line 553
    if-eqz v2, :cond_2

    .line 554
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v4

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/mms/ui/FolderViewList;->where:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 570
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 571
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/mms/ui/FolderViewList;->mIsInActivity:Z

    .line 572
    invoke-static {}, Lcom/android/mms/data/Contact;->invalidateCache()V

    .line 573
    invoke-static {}, Lcom/android/mms/util/DraftCache;->getInstance()Lcom/android/mms/util/DraftCache;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/mms/util/DraftCache;->removeOnDraftChangedListener(Lcom/android/mms/util/DraftCache$OnDraftChangedListener;)V

    .line 574
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    if-eqz v0, :cond_0

    .line 575
    const-string v0, "FolderViewList"

    const-string v1, "clear OnContentChangedListener"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 576
    iget-object v0, p0, Lcom/android/mms/ui/FolderViewList;->mListAdapter:Lcom/android/mms/ui/FolderViewListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/mms/ui/FolderViewListAdapter;->setOnContentChangedListener(Lcom/android/mms/ui/FolderViewListAdapter$OnContentChangedListener;)V

    .line 578
    :cond_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/mms/widget/MmsWidgetProvider;->notifyDatasetChanged(Landroid/content/Context;)V

    .line 579
    return-void
.end method

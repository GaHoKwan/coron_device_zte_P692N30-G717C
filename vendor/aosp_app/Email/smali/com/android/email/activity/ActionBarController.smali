.class public Lcom/android/email/activity/ActionBarController;
.super Ljava/lang/Object;
.source "ActionBarController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/email/activity/ActionBarController$TabListener;,
        Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;,
        Lcom/android/email/activity/ActionBarController$DropDownListener;,
        Lcom/android/email/activity/ActionBarController$Callback;,
        Lcom/android/email/activity/ActionBarController$SearchContext;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_MASK:I = 0x3a

.field private static final BUNDLE_KEY_ACTION_BAR_SELECTED_FIELD:Ljava/lang/String; = "ActionBarController.ACTION_BAR_SELECTED_TAB"

.field private static final BUNDLE_KEY_FILTER:Ljava/lang/String; = "ActionBarController.FILTER_STRING"

.field private static final BUNDLE_KEY_MODE:Ljava/lang/String; = "ActionBarController.BUNDLE_KEY_MODE"

.field private static final BUNDLE_SEARCH_HINT:Ljava/lang/String; = "ActionBarController.BUNDLE_SEARCH_HINT"

.field private static final CUSTOM_ACTION_BAR_OPTIONS:I = 0x12

.field private static final DISPLAY_TITLE_MULTIPLE_LINES:I = 0x20

.field private static final INDEX_SENDER:I = 0x1

.field private static final LOADER_ID_ACCOUNT_LIST:I = 0xc8

.field private static final LOADER_ID_ACCOUNT_TITLE:I = 0xc9

.field private static final MODE_LOCAL_SEARCH:I = 0x1

.field private static final MODE_NORMAL:I = 0x0

.field private static final MODE_REMOTE_SEARCH:I = 0x2

.field public static final TAG:Ljava/lang/String; = "ActionBarController"

.field private static final TITLE_MODE_SPINNER_ENABLED:I = 0x10

.field private static sActionBarSelectedTab:Ljava/lang/String;


# instance fields
.field private final mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

.field private final mAccountSpinner:Landroid/view/View;

.field private final mAccountSpinnerContainer:Landroid/view/ViewGroup;

.field private final mAccountSpinnerCountView:Landroid/widget/TextView;

.field private final mAccountSpinnerDefaultBackground:Landroid/graphics/drawable/Drawable;

.field private final mAccountSpinnerLine1View:Landroid/widget/TextView;

.field private final mAccountSpinnerLine2View:Landroid/widget/TextView;

.field private final mAccountSyncIntervalView:Landroid/widget/ImageView;

.field private final mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

.field private final mActionBar:Landroid/app/ActionBar;

.field private final mActionBarCustomView:Landroid/view/ViewGroup;

.field private mActionBarSelectedTab:Ljava/lang/String;

.field private final mAllFoldersLabel:Ljava/lang/String;

.field private mBackFromMessageView:Z

.field public final mCallback:Lcom/android/email/activity/ActionBarController$Callback;

.field private final mContext:Landroid/content/Context;

.field private mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

.field private final mDefaultLayoutParams:Landroid/app/ActionBar$LayoutParams;

.field private final mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

.field private mFieldList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Ljava/lang/String;

.field private mIsTitleUpdated:Z

.field private mLastAccountIdForDirtyCheck:J

.field private mLastMailboxIdForDirtyCheck:J

.field private mLayoutChanged:Z

.field private final mLoaderManager:Landroid/app/LoaderManager;

.field private final mMailSwitcher:Landroid/widget/LinearLayout;

.field private final mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

.field private final mRefreshRunnable:Ljava/lang/Runnable;

.field private mRemoteSearchContainer:Landroid/view/View;

.field private mRemoteSearchTitle:Landroid/widget/TextView;

.field private mRestoredSelectedTab:Ljava/lang/String;

.field private mSearchContainer:Landroid/view/View;

.field private mSearchMode:I

.field private mSearchResultCountView:Landroid/widget/TextView;

.field private mSearchView:Landroid/widget/SearchView;

.field private mShouldClearSearchFocus:Z

.field private final mSwitchNewerView:Landroid/widget/ImageButton;

.field private final mSwitchOlderView:Landroid/widget/ImageButton;

.field private mTabChanged:Z

.field private mTabListener:Lcom/android/email/activity/ActionBarController$TabListener;

.field private mTitleMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/LoaderManager;Landroid/app/ActionBar;Lcom/android/email/activity/ActionBarController$Callback;)V
    .locals 4
    .parameter "context"
    .parameter "loaderManager"
    .parameter "actionBar"
    .parameter "callback"

    .prologue
    const-wide/16 v0, -0x1

    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    iput-wide v0, p0, Lcom/android/email/activity/ActionBarController;->mLastAccountIdForDirtyCheck:J

    .line 147
    iput-wide v0, p0, Lcom/android/email/activity/ActionBarController;->mLastMailboxIdForDirtyCheck:J

    .line 150
    iput v2, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    .line 157
    iput-boolean v2, p0, Lcom/android/email/activity/ActionBarController;->mIsTitleUpdated:Z

    .line 160
    iput-boolean v2, p0, Lcom/android/email/activity/ActionBarController;->mShouldClearSearchFocus:Z

    .line 165
    iput-boolean v2, p0, Lcom/android/email/activity/ActionBarController;->mBackFromMessageView:Z

    .line 176
    new-instance v0, Lcom/android/email/activity/ActionBarController$TabListener;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ActionBarController$TabListener;-><init>(Lcom/android/email/activity/ActionBarController;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mTabListener:Lcom/android/email/activity/ActionBarController$TabListener;

    .line 178
    iput-boolean v2, p0, Lcom/android/email/activity/ActionBarController;->mTabChanged:Z

    .line 185
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    .line 765
    new-instance v0, Lcom/android/email/activity/ActionBarController$4;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ActionBarController$4;-><init>(Lcom/android/email/activity/ActionBarController;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mRefreshRunnable:Ljava/lang/Runnable;

    .line 1123
    new-instance v0, Lcom/android/email/activity/ActionBarController$7;

    invoke-direct {v0, p0}, Lcom/android/email/activity/ActionBarController$7;-><init>(Lcom/android/email/activity/ActionBarController;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

    .line 293
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    .line 294
    iput-object p2, p0, Lcom/android/email/activity/ActionBarController;->mLoaderManager:Landroid/app/LoaderManager;

    .line 295
    iput-object p3, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    .line 296
    iput-object p4, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    .line 297
    new-instance v0, Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-static {}, Lcom/android/emailcommon/utility/Utility;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    .line 298
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080205

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAllFoldersLabel:Ljava/lang/String;

    .line 300
    new-instance v0, Lcom/android/email/activity/AccountSelectorAdapter;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/email/activity/AccountSelectorAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    .line 303
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->enterCustomActionBarMode()V

    .line 306
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const v1, 0x7f040018

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    .line 307
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    .line 309
    new-instance v0, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDefaultLayoutParams:Landroid/app/ActionBar$LayoutParams;

    .line 312
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f0056

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerContainer:Landroid/view/ViewGroup;

    .line 314
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f0061

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    .line 315
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerDefaultBackground:Landroid/graphics/drawable/Drawable;

    .line 317
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f0062

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    .line 318
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f0063

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    .line 319
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f005f

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    .line 320
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f0060

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    .line 323
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f005c

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mMailSwitcher:Landroid/widget/LinearLayout;

    .line 324
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f005d

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchNewerView:Landroid/widget/ImageButton;

    .line 325
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const v1, 0x7f0f005e

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getViewOrNull(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchOlderView:Landroid/widget/ImageButton;

    .line 326
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchNewerView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 327
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchNewerView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/email/activity/ActionBarController$1;

    invoke-direct {v1, p0}, Lcom/android/email/activity/ActionBarController$1;-><init>(Lcom/android/email/activity/ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 334
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchOlderView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    .line 335
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchOlderView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/email/activity/ActionBarController$2;

    invoke-direct {v1, p0}, Lcom/android/email/activity/ActionBarController$2;-><init>(Lcom/android/email/activity/ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 345
    :cond_1
    new-instance v0, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;-><init>(Lcom/android/email/activity/ActionBarController;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    .line 346
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 348
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    new-instance v1, Lcom/android/email/activity/ActionBarController$3;

    invoke-direct {v1, p0}, Lcom/android/email/activity/ActionBarController$3;-><init>(Lcom/android/email/activity/ActionBarController;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 357
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setClickable(Z)V

    .line 358
    return-void
.end method

.method static synthetic access$000(Lcom/android/email/activity/ActionBarController;)Lcom/android/email/activity/AccountSelectorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/email/activity/ActionBarController;)Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/email/activity/ActionBarController;Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;)Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/email/activity/ActionBarController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->updateTitle()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/email/activity/ActionBarController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/email/activity/ActionBarController;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    invoke-direct {p0, p1}, Lcom/android/email/activity/ActionBarController;->onAccountSpinnerItemClicked(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/email/activity/ActionBarController;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/email/activity/ActionBarController;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/email/activity/ActionBarController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/email/activity/ActionBarController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/email/activity/ActionBarController;->mTabChanged:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/email/activity/ActionBarController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/email/activity/ActionBarController;->mTabChanged:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/email/activity/ActionBarController;)Landroid/widget/SearchView$OnQueryTextListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/email/activity/ActionBarController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->refreshInernal()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/email/activity/ActionBarController;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/email/activity/ActionBarController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/android/email/activity/ActionBarController;->mIsTitleUpdated:Z

    return v0
.end method

.method static synthetic access$902(Lcom/android/email/activity/ActionBarController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/android/email/activity/ActionBarController;->mIsTitleUpdated:Z

    return p1
.end method

.method private enterCustomActionBarMode()V
    .locals 3

    .prologue
    .line 1082
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0x12

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1083
    return-void
.end method

.method private enterMultiLineTitleCustomActionBarMode()V
    .locals 2

    .prologue
    const/16 v1, 0x3a

    .line 1089
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v0, v1, v1}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1091
    return-void
.end method

.method private enterSingleLineTitleActionBarMode()V
    .locals 3

    .prologue
    .line 1094
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/16 v1, 0xa

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 1096
    return-void
.end method

.method private initRemoteSearchViews()V
    .locals 4

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 534
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 535
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 536
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 537
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 538
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 541
    invoke-direct {p0, v3}, Lcom/android/email/activity/ActionBarController;->setMailSwitcherVisible(Z)V

    .line 543
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchContainer:Landroid/view/View;

    if-nez v1, :cond_0

    .line 544
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 545
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchContainer:Landroid/view/View;

    .line 546
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 547
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchContainer:Landroid/view/View;

    const v2, 0x7f0f0058

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchTitle:Landroid/widget/TextView;

    .line 549
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchContainer:Landroid/view/View;

    const v2, 0x7f0f0059

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchResultCountView:Landroid/widget/TextView;

    .line 551
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchResultCountView:Landroid/widget/TextView;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 553
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 554
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchTitle:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 555
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchResultCountView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 557
    return-void
.end method

.method private initSearchFieldsUI()V
    .locals 2

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    const v1, 0x7f0f005a

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchResultCountView:Landroid/widget/TextView;

    .line 371
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchResultCountView:Landroid/widget/TextView;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 373
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->useListMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 374
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->initSpinner()V

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->initTabs()V

    goto :goto_0
.end method

.method private initSearchViews()V
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 505
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->useListMode()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 506
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-eq v1, v2, :cond_0

    .line 507
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 515
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    if-nez v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 517
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f04001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    .line 518
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    const v2, 0x7f0f005b

    invoke-static {v1, v2}, Lcom/android/email/activity/UiUtilities;->getView(Landroid/view/View;I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SearchView;

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    .line 519
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setSubmitButtonEnabled(Z)V

    .line 520
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

    invoke-virtual {v1, v2}, Landroid/widget/SearchView;->setOnQueryTextListener(Landroid/widget/SearchView$OnQueryTextListener;)V

    .line 521
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->onActionViewExpanded()V

    .line 522
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 524
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->initSearchFieldsUI()V

    .line 526
    .end local v0           #inflater:Landroid/view/LayoutInflater;
    :cond_1
    return-void

    .line 510
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getNavigationMode()I

    move-result v1

    if-eq v1, v3, :cond_0

    .line 511
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v1, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    goto :goto_0
.end method

.method private initSpinner()V
    .locals 9

    .prologue
    .line 457
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v4, items:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 459
    .local v5, resources:Landroid/content/res/Resources;
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 460
    const v7, 0x7f080032

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    const-string v8, "ALL"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 462
    const v7, 0x7f080030

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 463
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    const-string v8, "FROM"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    const v7, 0x7f08002f

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 465
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    const-string v8, "TO"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 466
    const v7, 0x7f08002e

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 467
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    const-string v8, "SUBJECT"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 468
    const v7, 0x7f080031

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 469
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    const-string v8, "BODY"

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    const v8, 0x1090009

    invoke-direct {v0, v7, v8, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 473
    .local v0, adapter:Landroid/widget/SpinnerAdapter;
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    new-instance v8, Lcom/android/email/activity/ActionBarController$DropDownListener;

    invoke-direct {v8, p0, v4}, Lcom/android/email/activity/ActionBarController$DropDownListener;-><init>(Lcom/android/email/activity/ActionBarController;Ljava/util/ArrayList;)V

    invoke-virtual {v7, v0, v8}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 477
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mRestoredSelectedTab:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 478
    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mRestoredSelectedTab:Ljava/lang/String;

    .line 487
    .local v6, selectedTab:Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    .line 488
    .local v1, i:I
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 489
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mFieldList:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 490
    .local v3, item:Ljava/lang/String;
    invoke-virtual {v3, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 491
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v7, v1}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    .line 497
    .end local v1           #i:I
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #item:Ljava/lang/String;
    .end local v6           #selectedTab:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 479
    :cond_1
    sget-object v7, Lcom/android/email/activity/ActionBarController;->sActionBarSelectedTab:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 480
    sget-object v6, Lcom/android/email/activity/ActionBarController;->sActionBarSelectedTab:Ljava/lang/String;

    .restart local v6       #selectedTab:Ljava/lang/String;
    goto :goto_0

    .line 483
    .end local v6           #selectedTab:Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_2

    .line 494
    .restart local v1       #i:I
    .restart local v2       #i$:Ljava/util/Iterator;
    .restart local v3       #item:Ljava/lang/String;
    .restart local v6       #selectedTab:Ljava/lang/String;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private initTabs()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 384
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f080032

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mTabListener:Lcom/android/email/activity/ActionBarController$TabListener;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 388
    .local v2, tab:Landroid/app/ActionBar$Tab;
    const-string v5, "ALL"

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 390
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v2, v7}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 391
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f080030

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mTabListener:Lcom/android/email/activity/ActionBarController$TabListener;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 395
    const-string v5, "FROM"

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 396
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 397
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f08002f

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mTabListener:Lcom/android/email/activity/ActionBarController$TabListener;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 401
    const-string v5, "TO"

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 402
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 403
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f08002e

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mTabListener:Lcom/android/email/activity/ActionBarController$TabListener;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 407
    const-string v5, "SUBJECT"

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 408
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 409
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->newTab()Landroid/app/ActionBar$Tab;

    move-result-object v5

    const v6, 0x7f080031

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setText(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mTabListener:Lcom/android/email/activity/ActionBarController$TabListener;

    invoke-virtual {v5, v6}, Landroid/app/ActionBar$Tab;->setTabListener(Landroid/app/ActionBar$TabListener;)Landroid/app/ActionBar$Tab;

    move-result-object v2

    .line 413
    const-string v5, "BODY"

    invoke-virtual {v2, v5}, Landroid/app/ActionBar$Tab;->setTag(Ljava/lang/Object;)Landroid/app/ActionBar$Tab;

    .line 414
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v2}, Landroid/app/ActionBar;->addTab(Landroid/app/ActionBar$Tab;)V

    .line 417
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mRestoredSelectedTab:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 418
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRestoredSelectedTab:Ljava/lang/String;

    .line 427
    .local v1, selectedTab:Ljava/lang/String;
    :goto_0
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5}, Landroid/app/ActionBar;->getTabCount()I

    move-result v3

    .line 428
    .local v3, tabCount:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v3, :cond_0

    .line 429
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v0}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar$Tab;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 430
    .local v4, tabTag:Ljava/lang/String;
    if-eqz v4, :cond_3

    invoke-virtual {v4, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 431
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v0}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 435
    .end local v0           #i:I
    .end local v1           #selectedTab:Ljava/lang/String;
    .end local v3           #tabCount:I
    .end local v4           #tabTag:Ljava/lang/String;
    :cond_0
    :goto_2
    return-void

    .line 419
    :cond_1
    sget-object v5, Lcom/android/email/activity/ActionBarController;->sActionBarSelectedTab:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 420
    sget-object v1, Lcom/android/email/activity/ActionBarController;->sActionBarSelectedTab:Ljava/lang/String;

    .restart local v1       #selectedTab:Ljava/lang/String;
    goto :goto_0

    .line 423
    .end local v1           #selectedTab:Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v6, v7}, Landroid/app/ActionBar;->getTabAt(I)Landroid/app/ActionBar$Tab;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/ActionBar;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_2

    .line 428
    .restart local v0       #i:I
    .restart local v1       #selectedTab:Ljava/lang/String;
    .restart local v3       #tabCount:I
    .restart local v4       #tabTag:Ljava/lang/String;
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private loadAccountMailboxInfo(JJ)V
    .locals 9
    .parameter "accountId"
    .parameter "mailboxId"

    .prologue
    const/4 v8, 0x0

    .line 795
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/email/activity/ActionBarController;->mIsTitleUpdated:Z

    .line 797
    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v7, 0xc9

    new-instance v0, Lcom/android/email/activity/ActionBarController$5;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/ActionBarController$5;-><init>(Lcom/android/email/activity/ActionBarController;JJ)V

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 819
    iget-object v6, p0, Lcom/android/email/activity/ActionBarController;->mLoaderManager:Landroid/app/LoaderManager;

    const/16 v7, 0xc8

    new-instance v0, Lcom/android/email/activity/ActionBarController$6;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/email/activity/ActionBarController$6;-><init>(Lcom/android/email/activity/ActionBarController;JJ)V

    invoke-virtual {v6, v7, v8, v0}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 839
    return-void
.end method

.method private onAccountSpinnerItemClicked(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 1155
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    if-nez v2, :cond_1

    .line 1166
    :cond_0
    :goto_0
    return-void

    .line 1158
    :cond_1
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getAccountId(I)J

    move-result-wide v0

    .line 1160
    .local v0, accountId:J
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->isAccountItem(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1161
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v2, v0, v1}, Lcom/android/email/activity/ActionBarController$Callback;->onAccountSelected(J)V

    goto :goto_0

    .line 1162
    :cond_2
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v2, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->isMailboxItem(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1163
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    invoke-virtual {v3, p1}, Lcom/android/email/activity/AccountSelectorAdapter;->getId(I)J

    move-result-wide v3

    invoke-interface {v2, v0, v1, v3, v4}, Lcom/android/email/activity/ActionBarController$Callback;->onMailboxSelected(JJ)V

    goto :goto_0
.end method

.method private refreshInernal()V
    .locals 8

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x0

    .line 771
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v7

    if-nez v7, :cond_0

    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v7}, Lcom/android/email/activity/ActionBarController$Callback;->shouldShowUp()Z

    move-result v7

    if-eqz v7, :cond_4

    :cond_0
    const/4 v4, 0x1

    .line 772
    .local v4, showUp:Z
    :goto_0
    iget-object v7, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    if-eqz v4, :cond_1

    move v5, v6

    :cond_1
    invoke-virtual {v7, v5, v6}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 774
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v5, v4}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 776
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v5}, Lcom/android/email/activity/ActionBarController$Callback;->getUIAccountId()J

    move-result-wide v0

    .line 777
    .local v0, accountId:J
    iget-object v5, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v5}, Lcom/android/email/activity/ActionBarController$Callback;->getMailboxId()J

    move-result-wide v2

    .line 778
    .local v2, mailboxId:J
    iget-wide v5, p0, Lcom/android/email/activity/ActionBarController;->mLastAccountIdForDirtyCheck:J

    cmp-long v5, v5, v0

    if-nez v5, :cond_2

    iget-wide v5, p0, Lcom/android/email/activity/ActionBarController;->mLastMailboxIdForDirtyCheck:J

    cmp-long v5, v5, v2

    if-eqz v5, :cond_3

    .line 780
    :cond_2
    iput-wide v0, p0, Lcom/android/email/activity/ActionBarController;->mLastAccountIdForDirtyCheck:J

    .line 781
    iput-wide v2, p0, Lcom/android/email/activity/ActionBarController;->mLastMailboxIdForDirtyCheck:J

    .line 783
    const-wide/16 v5, -0x1

    cmp-long v5, v0, v5

    if-eqz v5, :cond_3

    .line 784
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/email/activity/ActionBarController;->loadAccountMailboxInfo(JJ)V

    .line 788
    :cond_3
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->updateTitle()V

    .line 789
    return-void

    .end local v0           #accountId:J
    .end local v2           #mailboxId:J
    .end local v4           #showUp:Z
    :cond_4
    move v4, v5

    .line 771
    goto :goto_0
.end method

.method private setMailSwitcherVisible(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1052
    if-eqz p1, :cond_0

    .line 1053
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchNewerView:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 1054
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchOlderView:Landroid/widget/ImageButton;

    invoke-static {v0, v1}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 1059
    :goto_0
    return-void

    .line 1056
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchNewerView:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 1057
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchOlderView:Landroid/widget/ImageButton;

    invoke-static {v0, v2}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    goto :goto_0
.end method

.method private setSpinnerEnabled(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 1099
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1120
    :goto_0
    return-void

    .line 1103
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1104
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 1105
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/view/View;->setClickable(Z)V

    .line 1106
    if-eqz p1, :cond_2

    .line 1107
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerDefaultBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1115
    :goto_2
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {v0, v2, v1, v3, v1}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 1105
    goto :goto_1

    .line 1109
    :cond_2
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountSpinner:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_2
.end method

.method private shouldShowRemoteSearchTitle()Z
    .locals 2

    .prologue
    .line 630
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private shouldShowSearchBar()Z
    .locals 2

    .prologue
    .line 623
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateTitle()V
    .locals 17

    .prologue
    .line 845
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountsSelectorAdapter:Lcom/android/email/activity/AccountSelectorAdapter;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13, v14}, Landroid/widget/CursorAdapter;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    .line 847
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->enterCustomActionBarMode()V

    .line 848
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    if-nez v13, :cond_1

    .line 850
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1045
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 855
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v14}, Lcom/android/email/activity/ActionBarController$Callback;->getTitleMode()I

    move-result v14

    if-eq v13, v14, :cond_3

    const/4 v11, 0x1

    .line 856
    .local v11, titleModeChanged:Z
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v13}, Lcom/android/email/activity/ActionBarController$Callback;->getTitleMode()I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    .line 858
    if-eqz v11, :cond_2

    .line 859
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/ActionBarController;->mDefaultLayoutParams:Landroid/app/ActionBar$LayoutParams;

    invoke-virtual {v13, v14, v15}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 862
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountCount()I

    move-result v13

    if-nez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getLookUpTitleOnly()Z

    move-result v13

    if-nez v13, :cond_4

    .line 863
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v13}, Lcom/android/email/activity/ActionBarController$Callback;->onNoAccountsFound()V

    goto :goto_0

    .line 855
    .end local v11           #titleModeChanged:Z
    :cond_3
    const/4 v11, 0x0

    goto :goto_1

    .line 867
    .restart local v11       #titleModeChanged:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountId()J

    move-result-wide v13

    const-wide/16 v15, -0x1

    cmp-long v13, v13, v15

    if-eqz v13, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->accountExists()Z

    move-result v13

    if-nez v13, :cond_6

    .line 869
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 870
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->exitSearchMode()V

    .line 873
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/android/emailcommon/provider/Account;->getDefaultAccountId(Landroid/content/Context;)J

    move-result-wide v1

    .line 875
    .local v1, accountId:J
    const-wide/16 v13, -0x1

    cmp-long v13, v1, v13

    if-eqz v13, :cond_0

    .line 877
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v13, v1, v2}, Lcom/android/email/activity/ActionBarController$Callback;->onAccountSelected(J)V

    goto/16 :goto_0

    .line 887
    .end local v1           #accountId:J
    :cond_6
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->shouldShowRemoteSearchTitle()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 888
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->initRemoteSearchViews()V

    goto/16 :goto_0

    .line 893
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->shouldShowSearchBar()Z

    move-result v13

    if-eqz v13, :cond_a

    .line 894
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->initSearchViews()V

    .line 897
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerContainer:Landroid/view/ViewGroup;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 898
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 899
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mShouldClearSearchFocus:Z

    if-eqz v13, :cond_8

    .line 900
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v13}, Landroid/widget/SearchView;->clearFocus()V

    .line 901
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mShouldClearSearchFocus:Z

    .line 907
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mBackFromMessageView:Z

    if-eqz v13, :cond_9

    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->useListMode()Z

    move-result v13

    if-eqz v13, :cond_9

    .line 908
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mTabChanged:Z

    .line 909
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mOnQueryText:Landroid/widget/SearchView$OnQueryTextListener;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v14}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v13, v14}, Landroid/widget/SearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 910
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mTabChanged:Z

    .line 912
    :cond_9
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mBackFromMessageView:Z

    goto/16 :goto_0

    .line 916
    :cond_a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 922
    const-wide/16 v13, 0x1000

    const-string v15, "AppUpdate"

    const/16 v16, 0x1

    invoke-static/range {v13 .. v16}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    .line 925
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerContainer:Landroid/view/ViewGroup;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 926
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mSearchContainer:Landroid/view/View;

    const/16 v14, 0x8

    invoke-static {v13, v14}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchContainer:Landroid/view/View;

    const/16 v14, 0x8

    invoke-static {v13, v14}, Lcom/android/email/activity/UiUtilities;->setVisibilitySafe(Landroid/view/View;I)V

    .line 929
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/4 v14, 0x3

    if-ne v13, v14, :cond_e

    .line 933
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 934
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 936
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 937
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 938
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/activity/ActionBarController;->setMailSwitcherVisible(Z)V

    .line 939
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v13

    if-eqz v13, :cond_b

    .line 940
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mBackFromMessageView:Z

    .line 941
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/android/email/activity/ActionBarController;->mShouldClearSearchFocus:Z

    .line 945
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->enterMultiLineTitleCustomActionBarMode()V

    .line 949
    if-eqz v11, :cond_c

    .line 951
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mMailSwitcher:Landroid/widget/LinearLayout;

    if-eqz v13, :cond_d

    .line 952
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    invoke-virtual {v13}, Landroid/view/View;->getWidth()I

    move-result v13

    const/high16 v14, -0x8000

    invoke-static {v13, v14}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v12

    .line 955
    .local v12, widthSpec:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mMailSwitcher:Landroid/widget/LinearLayout;

    const/4 v14, 0x0

    invoke-virtual {v13, v12, v14}, Landroid/view/View;->measure(II)V

    .line 956
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mMailSwitcher:Landroid/widget/LinearLayout;

    invoke-virtual {v13}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    .line 960
    .end local v12           #widthSpec:I
    .local v4, customViewWidth:I
    :goto_2
    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    const/4 v13, -0x1

    const/4 v14, 0x5

    invoke-direct {v5, v4, v13, v14}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    .line 963
    .local v5, layout:Landroid/app/ActionBar$LayoutParams;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mActionBarCustomView:Landroid/view/ViewGroup;

    invoke-virtual {v13, v14, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 968
    .end local v4           #customViewWidth:I
    .end local v5           #layout:Landroid/app/ActionBar$LayoutParams;
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->updateAtionBarTitle()V

    .line 1036
    :goto_3
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    and-int/lit8 v13, v13, 0x10

    if-eqz v13, :cond_13

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->shouldEnableSpinner()Z

    move-result v13

    if-eqz v13, :cond_13

    const/4 v10, 0x1

    .line 1039
    .local v10, spinnerEnabled:Z
    :goto_4
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/email/activity/ActionBarController;->setSpinnerEnabled(Z)V

    .line 1044
    const-wide/16 v13, 0x1000

    const-string v15, "AppUpdate"

    const/16 v16, 0x0

    invoke-static/range {v13 .. v16}, Landroid/os/Trace;->traceCounter(JLjava/lang/String;I)V

    goto/16 :goto_0

    .line 958
    .end local v10           #spinnerEnabled:Z
    :cond_d
    const/4 v4, 0x0

    .restart local v4       #customViewWidth:I
    goto :goto_2

    .line 969
    .end local v4           #customViewWidth:I
    :cond_e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_f

    .line 970
    invoke-direct/range {p0 .. p0}, Lcom/android/email/activity/ActionBarController;->enterSingleLineTitleActionBarMode()V

    .line 971
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mAllFoldersLabel:Ljava/lang/String;

    invoke-virtual {v13, v14}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 972
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v14}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 976
    :cond_f
    move-object/from16 v0, p0

    iget v13, v0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/16 v14, 0x12

    if-ne v13, v14, :cond_11

    .line 977
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getMailboxDisplayName()Ljava/lang/String;

    move-result-object v9

    .line 987
    .local v9, mailboxName:Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 989
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->setSingleLine()V

    .line 990
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 991
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 992
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v14}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 995
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1004
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    const/16 v14, 0x8

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1005
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountId()J

    move-result-wide v1

    .line 1006
    .restart local v1       #accountId:J
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v13}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getMailboxId()J

    move-result-wide v7

    .line 1007
    .local v7, mailboxId:J
    invoke-static {v1, v2}, Lcom/android/emailcommon/provider/Account;->isNormalAccount(J)Z

    move-result v13

    if-eqz v13, :cond_10

    const-wide/16 v13, 0x0

    cmp-long v13, v7, v13

    if-lez v13, :cond_10

    .line 1008
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-static {v13, v1, v2}, Lcom/android/emailcommon/provider/Account;->restoreAccountWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Account;

    move-result-object v3

    .line 1009
    .local v3, acct:Lcom/android/emailcommon/provider/Account;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-static {v13, v7, v8}, Lcom/android/emailcommon/provider/Mailbox;->restoreMailboxWithId(Landroid/content/Context;J)Lcom/android/emailcommon/provider/Mailbox;

    move-result-object v6

    .line 1010
    .local v6, mailbox:Lcom/android/emailcommon/provider/Mailbox;
    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v14, "eng"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    if-eqz v3, :cond_10

    iget v13, v3, Lcom/android/emailcommon/provider/Account;->mSyncInterval:I

    const/4 v14, -0x5

    if-ne v13, v14, :cond_10

    if-eqz v6, :cond_10

    iget v13, v6, Lcom/android/emailcommon/provider/Mailbox;->mType:I

    if-nez v13, :cond_10

    .line 1012
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1013
    iget v13, v6, Lcom/android/emailcommon/provider/Mailbox;->mSyncInterval:I

    packed-switch v13, :pswitch_data_0

    .line 1023
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    const v14, 0x7f02005c

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1030
    .end local v3           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v6           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    :cond_10
    :goto_7
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/email/activity/ActionBarController;->setMailSwitcherVisible(Z)V

    .line 1031
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 1032
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerCountView:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v15}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getMailboxMessageCount()I

    move-result v15

    const/16 v16, 0x1

    invoke-static/range {v14 .. v16}, Lcom/android/email/activity/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 979
    .end local v1           #accountId:J
    .end local v7           #mailboxId:J
    .end local v9           #mailboxName:Ljava/lang/String;
    :cond_11
    const/4 v9, 0x0

    .restart local v9       #mailboxName:Ljava/lang/String;
    goto/16 :goto_5

    .line 997
    :cond_12
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine1View:Landroid/widget/TextView;

    invoke-virtual {v13, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 998
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/view/View;->setVisibility(I)V

    .line 999
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSpinnerLine2View:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/email/activity/ActionBarController;->mCursor:Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;

    invoke-virtual {v14}, Lcom/android/email/activity/AccountSelectorAdapter$CursorWithExtras;->getAccountDisplayName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 1017
    .restart local v1       #accountId:J
    .restart local v3       #acct:Lcom/android/emailcommon/provider/Account;
    .restart local v6       #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .restart local v7       #mailboxId:J
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    const v14, 0x7f02005a

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 1020
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/email/activity/ActionBarController;->mAccountSyncIntervalView:Landroid/widget/ImageView;

    const v14, 0x7f02005b

    invoke-virtual {v13, v14}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_7

    .line 1036
    .end local v1           #accountId:J
    .end local v3           #acct:Lcom/android/emailcommon/provider/Account;
    .end local v6           #mailbox:Lcom/android/emailcommon/provider/Mailbox;
    .end local v7           #mailboxId:J
    .end local v9           #mailboxName:Ljava/lang/String;
    :cond_13
    const/4 v10, 0x0

    goto/16 :goto_4

    .line 1013
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private useListMode()Z
    .locals 2

    .prologue
    .line 365
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 366
    .local v0, orientation:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public enterLocalSearchMode(Ljava/lang/String;)V
    .locals 3
    .parameter "initialQueryTerm"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 643
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 663
    :goto_0
    return-void

    .line 646
    :cond_0
    iput v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    .line 647
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->initSearchViews()V

    .line 649
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 650
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    .line 651
    iput-boolean v1, p0, Lcom/android/email/activity/ActionBarController;->mShouldClearSearchFocus:Z

    .line 655
    :goto_1
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/ActionBarController$Callback;->getSearchHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 659
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, v2}, Landroid/widget/SearchView;->setIconified(Z)V

    .line 661
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 662
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v0}, Lcom/android/email/activity/ActionBarController$Callback;->onSearchStarted()V

    goto :goto_0

    .line 653
    :cond_1
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    const-string v1, ""

    invoke-virtual {v0, v1, v2}, Landroid/widget/SearchView;->setQuery(Ljava/lang/CharSequence;Z)V

    goto :goto_1
.end method

.method public enterRemoteSearchMode(Ljava/lang/String;)V
    .locals 5
    .parameter "initialQueryTerm"

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->initRemoteSearchViews()V

    .line 672
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 673
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mRemoteSearchTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    const v2, 0x7f08002c

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 675
    iput-object p1, p0, Lcom/android/email/activity/ActionBarController;->mFilter:Ljava/lang/String;

    .line 680
    :goto_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    .line 681
    return-void

    .line 678
    :cond_0
    const-string v0, "ActionBarController"

    const-string v1, "enterRemoteSearchMode initialQueryTerm is null "

    invoke-static {v0, v1}, Lcom/android/emailcommon/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public exitSearchMode()V
    .locals 2

    .prologue
    .line 693
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isRemoteSearchMode()Z

    move-result v0

    .line 694
    .local v0, isRemoteSearch:Z
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->isLocalSearchMode()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 713
    :goto_0
    return-void

    .line 697
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    .line 699
    if-nez v0, :cond_1

    .line 700
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 708
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    if-eqz v1, :cond_2

    .line 709
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->clearFocus()V

    .line 712
    :cond_2
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/ActionBarController$Callback;->onSearchExit()V

    goto :goto_0
.end method

.method public getQueryTermIfSearchBody()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1222
    iget-object v2, p0, Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1223
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;

    .line 1230
    .local v0, selectedTab:Ljava/lang/String;
    :goto_0
    const-string v2, "BODY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "ALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v1}, Landroid/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .end local v0           #selectedTab:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 1224
    :cond_2
    sget-object v2, Lcom/android/email/activity/ActionBarController;->sActionBarSelectedTab:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 1225
    sget-object v0, Lcom/android/email/activity/ActionBarController;->sActionBarSelectedTab:Ljava/lang/String;

    .restart local v0       #selectedTab:Ljava/lang/String;
    goto :goto_0
.end method

.method public isLocalSearchMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 607
    iget v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRemoteSearchMode()Z
    .locals 2

    .prologue
    .line 615
    iget v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated()V
    .locals 0

    .prologue
    .line 562
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->refresh()V

    .line 563
    return-void
.end method

.method public onActivityDestroy()V
    .locals 1

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 568
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mAccountDropdown:Lcom/android/email/activity/ActionBarController$AccountDropdownPopup;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 571
    :cond_0
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;

    sput-object v0, Lcom/android/email/activity/ActionBarController;->sActionBarSelectedTab:Ljava/lang/String;

    .line 572
    return-void
.end method

.method public onBackPressed(Z)Z
    .locals 1
    .parameter "isSystemBackKey"

    .prologue
    .line 722
    invoke-direct {p0}, Lcom/android/email/activity/ActionBarController;->shouldShowSearchBar()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    invoke-virtual {p0}, Lcom/android/email/activity/ActionBarController;->exitSearchMode()V

    .line 724
    const/4 v0, 0x1

    .line 726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedState"

    .prologue
    const/4 v2, 0x0

    .line 585
    const-string v1, "ActionBarController.BUNDLE_KEY_MODE"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 586
    .local v0, mode:I
    const-string v1, "ActionBarController.ACTION_BAR_SELECTED_TAB"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRestoredSelectedTab:Ljava/lang/String;

    .line 588
    const-string v1, "ActionBarController.FILTER_STRING"

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/email/activity/ActionBarController;->mFilter:Ljava/lang/String;

    .line 589
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 591
    invoke-virtual {p0, v2}, Lcom/android/email/activity/ActionBarController;->enterLocalSearchMode(Ljava/lang/String;)V

    .line 593
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 594
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mFilter:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ActionBarController;->enterRemoteSearchMode(Ljava/lang/String;)V

    .line 596
    :cond_1
    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/ActionBarController$Callback;->getSearchHint()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 597
    const-string v1, "ActionBarController.BUNDLE_SEARCH_HINT"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/email/activity/ActionBarController;->setSearchHint(Ljava/lang/String;)V

    .line 599
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    invoke-virtual {v0}, Lcom/android/emailcommon/utility/DelayedOperations;->removeCallbacks()V

    .line 577
    const-string v0, "ActionBarController.BUNDLE_KEY_MODE"

    iget v1, p0, Lcom/android/email/activity/ActionBarController;->mSearchMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 578
    const-string v0, "ActionBarController.BUNDLE_SEARCH_HINT"

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v1}, Lcom/android/email/activity/ActionBarController$Callback;->getSearchHint()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v0, "ActionBarController.ACTION_BAR_SELECTED_TAB"

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mActionBarSelectedTab:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    const-string v0, "ActionBarController.FILTER_STRING"

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mFilter:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 737
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mDelayedOperations:Lcom/android/emailcommon/utility/DelayedOperations;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mRefreshRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/emailcommon/utility/DelayedOperations;->post(Ljava/lang/Runnable;)V

    .line 738
    return-void
.end method

.method public setSearchHint(Ljava/lang/String;)V
    .locals 1
    .parameter "hint"

    .prologue
    .line 684
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    if-eqz v0, :cond_0

    .line 685
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchView:Landroid/widget/SearchView;

    invoke-virtual {v0, p1}, Landroid/widget/SearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 687
    :cond_0
    return-void
.end method

.method public setSwitchNewerEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1066
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchNewerView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1067
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchNewerView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1069
    :cond_0
    return-void
.end method

.method public setSwitchOlderEnable(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1076
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchOlderView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 1077
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSwitchOlderView:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1079
    :cond_0
    return-void
.end method

.method public updateAtionBarTitle()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 746
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v3}, Lcom/android/email/activity/ActionBarController$Callback;->getTitleMode()I

    move-result v3

    iput v3, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    .line 747
    iget v3, p0, Lcom/android/email/activity/ActionBarController;->mTitleMode:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 748
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mCallback:Lcom/android/email/activity/ActionBarController$Callback;

    invoke-interface {v3}, Lcom/android/email/activity/ActionBarController$Callback;->getMessageSubject()Ljava/lang/String;

    move-result-object v1

    .line 749
    .local v1, subject:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 750
    const-string v1, ""

    .line 752
    :cond_0
    new-instance v2, Landroid/text/SpannableString;

    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 753
    .local v2, title:Landroid/text/SpannableString;
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 754
    .local v0, builder:Landroid/text/SpannableStringBuilder;
    new-instance v3, Landroid/text/style/TextAppearanceSpan;

    iget-object v4, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    const v5, 0x7f0c0015

    invoke-direct {v3, v4, v5}, Landroid/text/style/TextAppearanceSpan;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v6, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 757
    invoke-virtual {v0, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 758
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    invoke-virtual {v3, v0}, Landroid/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 759
    iget-object v3, p0, Lcom/android/email/activity/ActionBarController;->mActionBar:Landroid/app/ActionBar;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 763
    .end local v0           #builder:Landroid/text/SpannableStringBuilder;
    .end local v1           #subject:Ljava/lang/String;
    .end local v2           #title:Landroid/text/SpannableString;
    :goto_0
    return-void

    .line 761
    :cond_1
    const-string v3, "updateAtionBarTitle only running in Message Subject Mode"

    invoke-static {v3}, Lcom/android/emailcommon/Logging;->w(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateSearchCount(I)V
    .locals 3
    .parameter "count"

    .prologue
    .line 1212
    iget-object v0, p0, Lcom/android/email/activity/ActionBarController;->mSearchResultCountView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/email/activity/ActionBarController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/email/activity/UiUtilities;->getMessageCountForUi(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1214
    return-void
.end method

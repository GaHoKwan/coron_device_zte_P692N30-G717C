.class public Lcom/android/contacts/list/PhoneFavoriteFragment;
.super Landroid/app/Fragment;
.source "PhoneFavoriteFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;,
        Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final KEY_FILTER:Ljava/lang/String; = "filter"

.field private static LOADER_ID_ALL_CONTACTS:I = 0x0

.field private static LOADER_ID_CONTACT_TILE:I = 0x0

.field private static final LOADING_EFFECT_DELAY:I = 0x1f4

.field private static final MESSAGE_SHOW_LOADING_EFFECT:I = 0x1

.field private static final REQUEST_CODE_ACCOUNT_FILTER:I = 0x1

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAccountFilterHeader:Landroid/view/View;

.field private mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

.field private mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

.field private mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

.field private mAllContactsForceReload:Z

.field private final mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mAllContactsLoaderStarted:Z

.field private mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

.field private final mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileView$Listener;

.field private final mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

.field private mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mEmptyView:Landroid/widget/TextView;

.field private mFilter:Lcom/android/contacts/list/ContactListFilter;

.field private final mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

.field private mFullScreen:Landroid/view/View;

.field private final mHandler:Landroid/os/Handler;

.field private mImage:Landroid/widget/ImageView;

.field private mListView:Landroid/widget/ListView;

.field private mListViewLeft:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

.field private mLoadingView:Landroid/view/View;

.field private mNoFullScreen:Landroid/widget/TextView;

.field private mOptionsMenuHasFrequents:Z

.field private final mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

.field private mTextViewLeft:Landroid/widget/TextView;

.field private mTextViewRight:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/android/contacts/list/PhoneFavoriteFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    .line 85
    const/4 v0, 0x1

    sput v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    .line 86
    const/4 v0, 0x2

    sput v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 78
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 269
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/list/PhoneFavoriteFragment$1;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    .line 324
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileAdapterListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileView$Listener;

    .line 326
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactTileLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 328
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$AllContactsLoaderListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 330
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$FilterHeaderClickListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    .line 331
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    .line 333
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;Lcom/android/contacts/list/PhoneFavoriteFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mTextViewLeft:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->invalidateOptionsMenuIfNeeded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFullScreen:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mNoFullScreen:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/ContactListFilter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/ContactTileAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/contacts/list/PhoneFavoriteFragment;)Lcom/android/contacts/list/PhoneNumberListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    return-object v0
.end method

.method static synthetic access$600()I
    .locals 1

    .prologue
    .line 78
    sget v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/contacts/list/PhoneFavoriteFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/list/PhoneFavoriteFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/contacts/list/PhoneFavoriteFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 78
    iput-boolean p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/contacts/list/PhoneFavoriteFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    return-void
.end method

.method private hasFrequents()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactTileAdapter;->getNumFrequents()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 1

    .prologue
    .line 539
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->isOptionsMenuChanged()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 540
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 542
    :cond_0
    return-void
.end method

.method private isOptionsMenuChanged()Z
    .locals 2

    .prologue
    .line 535
    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactsPreferences()Z
    .locals 4

    .prologue
    .line 665
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-nez v3, :cond_2

    .line 666
    :cond_0
    const/4 v0, 0x0

    .line 682
    :cond_1
    :goto_0
    return v0

    .line 669
    :cond_2
    const/4 v0, 0x0

    .line 670
    .local v0, changed:Z
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    .line 671
    .local v1, currentDisplayOrder:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getContactNameDisplayOrder()I

    move-result v3

    if-eq v3, v1, :cond_3

    .line 672
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 673
    const/4 v0, 0x1

    .line 676
    :cond_3
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v3}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v2

    .line 677
    .local v2, currentSortOrder:I
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3}, Lcom/android/contacts/list/ContactEntryListAdapter;->getSortOrder()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 678
    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v2}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 679
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private requestReloadAllContacts()V
    .locals 4

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderStarted:Z

    if-nez v0, :cond_1

    .line 699
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 708
    :goto_0
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0}, Lcom/android/contacts/list/ContactEntryListAdapter;->onDataReload()V

    .line 707
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0
.end method

.method private updateFilterHeaderView()V
    .locals 3

    .prologue
    .line 711
    invoke-virtual {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->getFilter()Lcom/android/contacts/list/ContactListFilter;

    move-result-object v0

    .line 712
    .local v0, filter:Lcom/android/contacts/list/ContactListFilter;
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 716
    :cond_0
    :goto_0
    return-void

    .line 715
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/contacts/util/AccountFilterUtil;->updateAccountFilterTitleForPhone(Landroid/view/View;Lcom/android/contacts/list/ContactListFilter;Z)Z

    goto :goto_0
.end method


# virtual methods
.method public getFilter()Lcom/android/contacts/list/ContactListFilter;
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 773
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 654
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 655
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 656
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/list/ContactListFilterController;->getInstance(Landroid/content/Context;)Lcom/android/contacts/list/ContactListFilterController;

    move-result-object v0

    invoke-static {v0, p2, p3}, Lcom/android/contacts/util/AccountFilterUtil;->handleAccountFilterResult(Lcom/android/contacts/list/ContactListFilterController;ILandroid/content/Intent;)V

    .line 662
    :cond_0
    :goto_0
    return-void

    .line 659
    :cond_1
    sget-object v0, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    const-string v1, "getActivity() returns null during Fragment#onActivityResult()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 6
    .parameter "activity"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 340
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 342
    new-instance v0, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v0, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 348
    new-instance v0, Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapterListener:Lcom/android/contacts/list/ContactTileView$Listener;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0006

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    sget-object v3, Lcom/android/contacts/list/ContactTileAdapter$DisplayType;->STREQUENT_PHONE_ONLY:Lcom/android/contacts/list/ContactTileAdapter$DisplayType;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/android/contacts/list/ContactTileAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileView$Listener;ILcom/android/contacts/list/ContactTileAdapter$DisplayType;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    .line 351
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 354
    new-instance v0, Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-direct {v0, p1}, Lcom/android/contacts/list/PhoneNumberListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    .line 355
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDisplayPhotos(Z)V

    .line 356
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setQuickContactEnabled(Z)V

    .line 357
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSearchMode(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setIncludeProfile(Z)V

    .line 359
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSelectionVisible(Z)V

    .line 360
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/ContactEntryListAdapter;->setDarkTheme(Z)V

    .line 361
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-static {p1}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setPhotoLoader(Lcom/android/contacts/ContactPhotoManager;)V

    .line 363
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4, v4}, Lcom/android/common/widget/CompositeCursorAdapter;->setHasHeader(IZ)V

    .line 365
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/widget/IndexerListAdapter;->setSectionHeaderDisplayEnabled(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v4}, Lcom/android/contacts/widget/PinnedHeaderListAdapter;->setPinnedPartitionHeadersEnabled(Z)V

    .line 369
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    sget-object v1, Lcom/android/contacts/list/ContactListItemView$PhotoPosition;->LEFT:Lcom/android/contacts/list/ContactListItemView$PhotoPosition;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setPhotoPosition(Lcom/android/contacts/list/ContactListItemView$PhotoPosition;)V

    .line 373
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v0, v5}, Lcom/android/contacts/list/PhoneNumberListAdapter;->setUseCallableUri(Z)V

    .line 375
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getDisplayOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setContactNameDisplayOrder(I)V

    .line 376
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v1}, Lcom/android/contacts/preference/ContactsPreferences;->getSortOrder()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setSortOrder(I)V

    .line 377
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedState"

    .prologue
    .line 382
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 383
    if-eqz p1, :cond_0

    .line 384
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/list/ContactListFilter;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 386
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 390
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 391
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 546
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 547
    const v0, 0x7f10000f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 548
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const v5, 0x7f040001

    const/high16 v4, 0x200

    const/4 v3, 0x1

    const/4 v2, 0x2

    const/4 v7, 0x0

    .line 402
    const/4 v6, 0x0

    .line 404
    .local v6, listLayout:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 405
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v2, :cond_1

    .line 406
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, v2}, Lcom/android/contacts/list/ContactTileAdapter;->setColumnCount(I)V

    .line 407
    const v0, 0x7f04009f

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 410
    const v0, 0x7f070188

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFullScreen:Landroid/view/View;

    .line 411
    const v0, 0x7f07018e

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mNoFullScreen:Landroid/widget/TextView;

    .line 412
    const v0, 0x7f07018a

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    .line 413
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 415
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setVerticalScrollbarPosition(I)V

    .line 417
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 418
    const v0, 0x7f07018c

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    .line 419
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 420
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/android/contacts/list/PhoneFavoriteFragment$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/list/PhoneFavoriteFragment$2;-><init>(Lcom/android/contacts/list/PhoneFavoriteFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 432
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 433
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setVerticalScrollbarPosition(I)V

    .line 434
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 436
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    .line 437
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 440
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 442
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    .line 443
    const v0, 0x7f0400a2

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    .line 445
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/list/ContactEntryListAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    .line 449
    const v0, 0x7f07018b

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mTextViewLeft:Landroid/widget/TextView;

    .line 450
    const v0, 0x7f07018d

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mTextViewRight:Landroid/widget/TextView;

    .line 451
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListViewLeft:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 454
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 455
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 456
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 457
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    .line 531
    :cond_0
    :goto_0
    return-object v6

    .line 458
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v3, :cond_0

    .line 459
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactTileAdapter;->setColumnCount(I)V

    .line 460
    const v0, 0x7f04009e

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 461
    const v0, 0x7f070105

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    .line 462
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 464
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 465
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setVerticalScrollbarPosition(I)V

    .line 466
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 469
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    .line 470
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 472
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 475
    const v0, 0x7f0400a2

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    .line 477
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/list/ContactEntryListAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    .line 481
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 483
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 484
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 485
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 487
    const v0, 0x7f070106

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    .line 488
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0166

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 489
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 491
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    goto/16 :goto_0

    .line 495
    :cond_2
    const v0, 0x7f04009e

    invoke-virtual {p1, v0, p2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 496
    const v0, 0x7f070105

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    .line 497
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 498
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 499
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    .line 500
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setVerticalScrollbarPosition(I)V

    .line 501
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/view/View;->setScrollBarStyle(I)V

    .line 504
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    .line 505
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v5, v0, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    .line 507
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilterHeaderClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 508
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeader:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 510
    const v0, 0x7f0400a2

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v1, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    .line 512
    new-instance v0, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAccountFilterHeaderContainer:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v5, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/list/ContactTileAdapter;Landroid/view/View;Lcom/android/contacts/list/ContactEntryListAdapter;Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    .line 516
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAdapter:Lcom/android/contacts/list/PhoneFavoriteMergedAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 518
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mScrollListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 519
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollEnabled(Z)V

    .line 520
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, v7}, Landroid/widget/AbsListView;->setFastScrollAlwaysVisible(Z)V

    .line 522
    const v0, 0x7f070106

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    .line 523
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f0c0166

    invoke-virtual {p0, v1}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 524
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 526
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    goto/16 :goto_0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 640
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v0

    .line 641
    .local v0, contactTileAdapterCount:I
    if-gt p3, v0, :cond_1

    .line 642
    sget-object v2, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemClick() event for unexpected position. The position "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is before \"all\" section. Ignored."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    :cond_0
    :goto_0
    return-void

    .line 645
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileAdapter:Lcom/android/contacts/list/ContactTileAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/list/ContactTileAdapter;->getCount()I

    move-result v2

    sub-int v2, p3, v2

    add-int/lit8 v1, v2, -0x1

    .line 646
    .local v1, localPosition:I
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    if-eqz v2, :cond_0

    .line 647
    iget-object v2, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    invoke-virtual {v3, v1}, Lcom/android/contacts/list/PhoneNumberListAdapter;->getDataUri(I)Landroid/net/Uri;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;->onContactSelected(Landroid/net/Uri;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 566
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 591
    :goto_0
    return v1

    .line 580
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.settings.SYNC_SETTINGS"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 581
    .local v0, intent:Landroid/content/Intent;
    const-string v3, "authorities"

    new-array v4, v1, [Ljava/lang/String;

    const-string v5, "com.android.contacts"

    aput-object v5, v4, v2

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 584
    const/high16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 585
    invoke-virtual {p0, v0}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 588
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/dialog/ClearFrequentsDialog;->show(Landroid/app/FragmentManager;)V

    goto :goto_0

    .line 566
    :pswitch_data_0
    .packed-switch 0x7f070207
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 552
    const v1, 0x7f070207

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 553
    .local v0, clearFrequents:Landroid/view/MenuItem;
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->hasFrequents()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    .line 555
    if-eqz v0, :cond_0

    .line 556
    iget-boolean v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mOptionsMenuHasFrequents:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 558
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 396
    const-string v0, "filter"

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 397
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 596
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 598
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPreferenceChangeListener:Lcom/android/contacts/list/PhoneFavoriteFragment$ContactsPreferenceChangeListener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 602
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->loadContactsPreferences()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 603
    iput-boolean v4, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 609
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget v1, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactTileLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 614
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mLoadingView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 615
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 616
    return-void
.end method

.method public onStop()V
    .locals 1

    .prologue
    .line 620
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 621
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 628
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsForceReload:Z

    .line 630
    return-void
.end method

.method public setDataSetChangedNotifyEnable(Z)V
    .locals 8
    .parameter "enabled"

    .prologue
    .line 747
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 748
    .local v0, lStart:J
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    sget v5, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_CONTACT_TILE:I

    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v3

    .line 749
    .local v3, loaderTitle:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v4

    sget v5, Lcom/android/contacts/list/PhoneFavoriteFragment;->LOADER_ID_ALL_CONTACTS:I

    invoke-virtual {v4, v5}, Landroid/app/LoaderManager;->getLoader(I)Landroid/content/Loader;

    move-result-object v2

    .line 751
    .local v2, loaderAllContact:Landroid/content/Loader;,"Landroid/content/Loader<Landroid/database/Cursor;>;"
    if-eqz v3, :cond_0

    .line 752
    if-eqz p1, :cond_2

    .line 753
    invoke-virtual {v3}, Landroid/content/Loader;->startLoading()V

    .line 759
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 760
    if-eqz p1, :cond_3

    .line 761
    invoke-virtual {v2}, Landroid/content/Loader;->startLoading()V

    .line 766
    :cond_1
    :goto_1
    sget-object v4, Lcom/android/contacts/list/PhoneFavoriteFragment;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "zjtest setDataSetChangedNotifyEnable()- Time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void

    .line 755
    :cond_2
    invoke-virtual {v3}, Landroid/content/Loader;->stopLoading()V

    goto :goto_0

    .line 763
    :cond_3
    invoke-virtual {v2}, Landroid/content/Loader;->stopLoading()V

    goto :goto_1
.end method

.method public setFilter(Lcom/android/contacts/list/ContactListFilter;)V
    .locals 2
    .parameter "filter"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-nez v0, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, p1}, Lcom/android/contacts/list/ContactListFilter;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 739
    :cond_1
    :goto_0
    return-void

    .line 732
    :cond_2
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    .line 734
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    if-eqz v0, :cond_1

    .line 735
    iget-object v0, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mAllContactsAdapter:Lcom/android/contacts/list/PhoneNumberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mFilter:Lcom/android/contacts/list/ContactListFilter;

    invoke-virtual {v0, v1}, Lcom/android/contacts/list/ContactEntryListAdapter;->setFilter(Lcom/android/contacts/list/ContactListFilter;)V

    .line 736
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->requestReloadAllContacts()V

    .line 737
    invoke-direct {p0}, Lcom/android/contacts/list/PhoneFavoriteFragment;->updateFilterHeaderView()V

    goto :goto_0
.end method

.method public setListener(Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 742
    iput-object p1, p0, Lcom/android/contacts/list/PhoneFavoriteFragment;->mListener:Lcom/android/contacts/list/PhoneFavoriteFragment$Listener;

    .line 743
    return-void
.end method

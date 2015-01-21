.class public Lcom/mediatek/email/emailvip/activity/VipListFragment;
.super Landroid/app/ListFragment;
.source "VipListFragment.java"

# interfaces
.implements Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;,
        Lcom/mediatek/email/emailvip/activity/VipListFragment$RecipientAdapter;,
        Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;,
        Lcom/mediatek/email/emailvip/activity/VipListFragment$AddressValidator;,
        Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;
    }
.end annotation


# static fields
.field private static final ARG_ACCOUNT_ID:Ljava/lang/String; = "accountId"

.field static final RECIPIENT_FILTER:Landroid/text/InputFilter; = null

.field private static final VIP_LOADER_ID:I = 0x1


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

.field private mCallback:Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

.field private mContactsObserver:Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mImmutableAccountId:Ljava/lang/Long;

.field private mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

.field private mListView:Landroid/widget/ListView;

.field private mNewVipAddress:Ljava/lang/String;

.field private mSearchContent:Landroid/view/View;

.field private mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

.field private mVipNumber:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 213
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipListFragment$2;

    invoke-direct {v0}, Lcom/mediatek/email/emailvip/activity/VipListFragment$2;-><init>()V

    sput-object v0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->RECIPIENT_FILTER:Landroid/text/InputFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mNewVipAddress:Ljava/lang/String;

    .line 376
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/email/emailvip/activity/VipListFragment;[Lcom/android/emailcommon/mail/Address;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->saveAsVips([Lcom/android/emailcommon/mail/Address;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/app/Activity;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Ljava/lang/Long;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mImmutableAccountId:Ljava/lang/Long;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchContent:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mCallback:Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/email/emailvip/activity/VipListFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mVipNumber:I

    return v0
.end method

.method static synthetic access$802(Lcom/mediatek/email/emailvip/activity/VipListFragment;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mVipNumber:I

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/email/emailvip/activity/VipListFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mNewVipAddress:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/email/emailvip/activity/VipListFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 80
    iput-object p1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mNewVipAddress:Ljava/lang/String;

    return-object p1
.end method

.method public static newInstance(Ljava/lang/Long;)Lcom/mediatek/email/emailvip/activity/VipListFragment;
    .locals 5
    .parameter "accountID"

    .prologue
    .line 111
    new-instance v1, Lcom/mediatek/email/emailvip/activity/VipListFragment;

    invoke-direct {v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment;-><init>()V

    .line 112
    .local v1, f:Lcom/mediatek/email/emailvip/activity/VipListFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 113
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "accountId"

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 114
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 115
    return-object v1
.end method

.method private saveAsVips([Lcom/android/emailcommon/mail/Address;)V
    .locals 9
    .parameter "addresses"

    .prologue
    .line 270
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 271
    .local v1, addressList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/emailcommon/mail/Address;>;"
    move-object v2, p1

    .local v2, arr$:[Lcom/android/emailcommon/mail/Address;
    array-length v4, v2

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 272
    .local v0, addr:Lcom/android/emailcommon/mail/Address;
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 274
    .end local v0           #addr:Lcom/android/emailcommon/mail/Address;
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/emailcommon/mail/Address;

    invoke-virtual {v5}, Lcom/android/emailcommon/mail/Address;->getAddress()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mNewVipAddress:Ljava/lang/String;

    .line 277
    :cond_1
    iget-object v5, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;

    iget-object v6, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mImmutableAccountId:Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v8, Lcom/mediatek/email/emailvip/activity/VipListFragment$4;

    invoke-direct {v8, p0}, Lcom/mediatek/email/emailvip/activity/VipListFragment$4;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V

    invoke-static {v5, v6, v7, v1, v8}, Lcom/android/emailcommon/provider/VipMember;->addVIPs(Landroid/content/Context;JLjava/util/ArrayList;Lcom/android/emailcommon/provider/VipMember$AddVipsCallback;)V

    .line 287
    return-void
.end method

.method private startLoading()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 189
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    .line 191
    .local v0, lm:Landroid/app/LoaderManager;
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mCallback:Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

    if-eqz v1, :cond_0

    .line 192
    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mCallback:Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

    iget v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mVipNumber:I

    invoke-interface {v1, v2}, Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;->onVipMemberChanged(I)V

    .line 194
    :cond_0
    const/4 v1, 0x1

    new-instance v2, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;

    invoke-direct {v2, p0, v3}, Lcom/mediatek/email/emailvip/activity/VipListFragment$VipListLoaderCallbacks;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Lcom/mediatek/email/emailvip/activity/VipListFragment$1;)V

    invoke-virtual {v0, v1, v3, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 195
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListView:Landroid/widget/ListView;

    .line 138
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListView:Landroid/widget/ListView;

    new-instance v1, Lcom/mediatek/email/emailvip/activity/VipListFragment$1;

    invoke-direct {v1, p0}, Lcom/mediatek/email/emailvip/activity/VipListFragment$1;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 152
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListShown(Z)V

    .line 153
    invoke-direct {p0}, Lcom/mediatek/email/emailvip/activity/VipListFragment;->startLoading()V

    .line 154
    return-void
.end method

.method public onAddVip([Lcom/android/emailcommon/mail/Address;)V
    .locals 1
    .parameter "addresses"

    .prologue
    .line 260
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipListFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/email/emailvip/activity/VipListFragment$3;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;[Lcom/android/emailcommon/mail/Address;)V

    invoke-static {v0}, Lcom/android/emailcommon/utility/EmailAsyncTask;->runAsyncParallel(Ljava/lang/Runnable;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 267
    return-void
.end method

.method public onAvatarNameChanged(Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;)V
    .locals 3
    .parameter "avatarInfo"

    .prologue
    .line 357
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lcom/mediatek/email/emailvip/activity/VipListFragment$5;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Lcom/android/emailcommon/utility/EmailAsyncTask$Tracker;Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarInfo;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/emailcommon/utility/EmailAsyncTask;->executeExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Lcom/android/emailcommon/utility/EmailAsyncTask;

    .line 365
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 121
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;

    .line 122
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;

    invoke-direct {v0, v1, p0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/email/emailvip/activity/VipListAdapter$AvatarLoaderCallback;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    .line 123
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    invoke-virtual {p0, v0}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 124
    invoke-virtual {p0}, Landroid/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "accountId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mImmutableAccountId:Ljava/lang/Long;

    .line 125
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mCallback:Lcom/mediatek/email/emailvip/activity/VipListFragment$Callback;

    .line 127
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->getInstance(Landroid/content/Context;)Lcom/mediatek/email/emailvip/activity/ListPhotoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/activity/ListPhotoManager;->refreshCache()V

    .line 129
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 130
    new-instance v0, Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mContactsObserver:Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;

    .line 131
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mContactsObserver:Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 132
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 164
    const v2, 0x7f040032

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 165
    .local v1, view:Landroid/view/View;
    const v2, 0x7f0f0098

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    iput-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    .line 166
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    invoke-virtual {v2, p0}, Lcom/mediatek/email/emailvip/activity/VipAddressTextView;->setTargetFragment(Lcom/mediatek/email/emailvip/activity/VipListFragment;)V

    .line 167
    new-instance v2, Lcom/mediatek/email/emailvip/activity/VipListFragment$RecipientAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    invoke-direct {v2, p0, v3, v4}, Lcom/mediatek/email/emailvip/activity/VipListFragment$RecipientAdapter;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Landroid/content/Context;Lcom/mediatek/email/emailvip/activity/VipAddressTextView;)V

    iput-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    .line 169
    new-array v0, v6, [Landroid/text/InputFilter;

    sget-object v2, Lcom/mediatek/email/emailvip/activity/VipListFragment;->RECIPIENT_FILTER:Landroid/text/InputFilter;

    aput-object v2, v0, v5

    .line 170
    .local v0, recipientFilters:[Landroid/text/InputFilter;
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 171
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    new-instance v3, Lcom/mediatek/email/emailvip/activity/VipListFragment$AddressValidator;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/mediatek/email/emailvip/activity/VipListFragment$AddressValidator;-><init>(Lcom/mediatek/email/emailvip/activity/VipListFragment;Lcom/mediatek/email/emailvip/activity/VipListFragment$1;)V

    invoke-virtual {v2, v3}, Lcom/android/email/activity/ChipsAddressTextView;->setValidator(Landroid/widget/AutoCompleteTextView$Validator;)V

    .line 172
    iget-object v3, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mAddressAdapter:Lcom/android/ex/chips/AccountSpecifier;

    check-cast v2, Lcom/mediatek/email/emailvip/activity/VipListFragment$RecipientAdapter;

    invoke-virtual {v3, v2}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 173
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    new-instance v3, Landroid/text/util/Rfc822Tokenizer;

    invoke-direct {v3}, Landroid/text/util/Rfc822Tokenizer;-><init>()V

    invoke-virtual {v2, v3}, Lcom/android/ex/chips/MTKRecipientEditTextView;->setTokenizer(Landroid/widget/MultiAutoCompleteTextView$Tokenizer;)V

    .line 174
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    invoke-virtual {v2}, Lcom/android/email/activity/ChipsAddressTextView;->setGalSearchDelayer()V

    .line 176
    const v2, 0x7f0f0079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchContent:Landroid/view/View;

    .line 177
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchContent:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 179
    iget-object v2, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mSearchVipView:Lcom/mediatek/email/emailvip/activity/VipAddressTextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/16 v4, 0x100

    invoke-static {v2, v3, v4, v6}, Lcom/android/email/activity/UiUtilities;->setupLengthFilter(Landroid/widget/EditText;Landroid/content/Context;IZ)V

    .line 181
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mContactsObserver:Lcom/mediatek/email/emailvip/activity/VipListFragment$ContactsProviderObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 370
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 371
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 158
    invoke-super {p0}, Landroid/app/ListFragment;->onDestroyView()V

    .line 159
    iget-object v0, p0, Lcom/mediatek/email/emailvip/activity/VipListFragment;->mListAdapter:Lcom/mediatek/email/emailvip/activity/VipListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/email/emailvip/activity/VipListAdapter;->onViewDestroy()V

    .line 160
    return-void
.end method

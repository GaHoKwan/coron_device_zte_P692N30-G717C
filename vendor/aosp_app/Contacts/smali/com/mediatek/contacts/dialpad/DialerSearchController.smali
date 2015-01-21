.class public Lcom/mediatek/contacts/dialpad/DialerSearchController;
.super Landroid/content/AsyncQueryHandler;
.source "DialerSearchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;,
        Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;,
        Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;,
        Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field public static final DIALER_SEARCH_MODE_ALL:I = 0x0

.field public static final DIALER_SEARCH_MODE_NUMBER:I = 0x1

.field public static final DIALER_SEARCH_PROJECTION:[Ljava/lang/String; = null

.field private static final QUERY_TOKEN_INCREMENT:I = 0x32

.field private static final QUERY_TOKEN_INIT:I = 0x1e

.field private static final QUERY_TOKEN_NULL:I = 0x28

.field private static final QUERY_TOKEN_SIMPLE:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "DialerSearchController"


# instance fields
.field protected mActivity:Landroid/app/Activity;

.field protected mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

.field mCallLogContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

.field private mClearDigitsOnStop:Z

.field private mConfigFromIntent:Z

.field protected mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

.field private mDataChanged:Z

.field protected mDialerSearchCursorCount:I

.field protected mDigitString:Ljava/lang/String;

.field protected mDigits:Landroid/widget/EditText;

.field private mDigitsFromIntent:Ljava/lang/String;

.field private mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

.field mFilterContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

.field private mFragmentView:Landroid/view/View;

.field private mIsFirstLaunched:Z

.field private mIsForeground:Z

.field private mIsLocaleChanging:Z

.field private mIsShowLoadingTip:Z

.field protected mListView:Landroid/widget/ListView;

.field protected mListener:Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;

.field private mLoadTipsContainer:Landroid/widget/LinearLayout;

.field protected mNoResultDigCnt:I

.field protected mPrevQueryDigCnt:I

.field protected mSearchNumCntQ:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSearchNumberOnly:Z

.field protected mSearchTitle:Landroid/widget/TextView;

.field protected mSelectedContactUri:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 57
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "vds_contact_id"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "vds_call_date"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "vds_call_log_id"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "vds_call_type"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "vds_sim_id"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "vds_indicate_phone_sim"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vds_starred"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "vds_photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "vds_phone_type"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "vds_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "vds_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "vds_lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "matched_data_offsets"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "matched_name_offsets"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "vds_is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->DIALER_SEARCH_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/view/View;Landroid/widget/ListView;Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;)V
    .locals 5
    .parameter "context"
    .parameter "rootView"
    .parameter "listView"
    .parameter "adapterListener"
    .parameter "callOptionHandler"
    .parameter "listener"

    .prologue
    const/4 v4, 0x1

    .line 280
    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 85
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    .line 281
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    .line 282
    iput-object p2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    .line 283
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    const v2, 0x7f070127

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    .line 284
    iput-object p3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mListView:Landroid/widget/ListView;

    .line 285
    iput-object p6, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;

    .line 286
    new-instance v1, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-direct {v1, p1, p4, p5}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;-><init>(Landroid/content/Context;Lcom/mediatek/contacts/dialpad/DialerSearchAdapter$Listener;Lcom/mediatek/contacts/calloption/ContactsCallOptionHandler;)V

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    .line 287
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 290
    new-instance v1, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    .line 291
    new-instance v1, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    invoke-direct {v1, p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    .line 292
    sget-object v1, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v2, "dialer_search"

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 293
    .local v0, baseUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_log"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 296
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "filter"

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 300
    new-instance v1, Lcom/android/contacts/preference/ContactsPreferences;

    invoke-direct {v1, p1}, Lcom/android/contacts/preference/ContactsPreferences;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    .line 301
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    new-instance v2, Lcom/mediatek/contacts/dialpad/DialerSearchController$1;

    invoke-direct {v2, p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController$1;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/preference/ContactsPreferences;->registerChangeListener(Lcom/android/contacts/preference/ContactsPreferences$ChangeListener;)V

    .line 312
    invoke-virtual {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setDialerSearchTextWatcher()V

    .line 313
    iput-boolean v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    .line 314
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsForeground:Z

    return v0
.end method

.method static synthetic access$100(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceQueryIfNeeded()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    return v0
.end method

.method static synthetic access$202(Lcom/mediatek/contacts/dialpad/DialerSearchController;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    return v0
.end method

.method static synthetic access$400(Lcom/mediatek/contacts/dialpad/DialerSearchController;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    return-object v0
.end method

.method private forceLoadAll()V
    .locals 2

    .prologue
    .line 503
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 504
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    .line 506
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    :cond_0
    return-void
.end method

.method private forceQueryIfNeeded()V
    .locals 1

    .prologue
    .line 496
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    .line 497
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceLoadAll()V

    .line 500
    :cond_0
    return-void
.end method

.method private startSimpleSearchNumber(Landroid/text/Editable;II)V
    .locals 3
    .parameter "searchDigits"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 704
    const-string v0, "DialerSearchController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startSimpleSearchNumber] Query Dialersearch DB with tel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setSearchNumberMode(Z)V

    .line 707
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 710
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-gt p2, v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-le p3, v0, :cond_1

    .line 711
    :cond_0
    const-string v0, "DialerSearchController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[startSimpleSearchNumber]  mDigits.length() changed ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/TextView;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 716
    :goto_0
    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0, p2, p3}, Landroid/widget/EditText;->setSelection(II)V

    goto :goto_0
.end method


# virtual methods
.method public clearDialerSearchTextWatcher()V
    .locals 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 435
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 436
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    .line 438
    :cond_0
    return-void
.end method

.method public configureFromIntent(Z)V
    .locals 2
    .parameter "digitsFilled"

    .prologue
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[configureFromIntent]digitsFilled:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 420
    iput-boolean p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mConfigFromIntent:Z

    .line 421
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mConfigFromIntent:Z

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    .line 424
    :cond_0
    return-void
.end method

.method public forceUpdate()V
    .locals 0

    .prologue
    .line 490
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceLoadAll()V

    .line 491
    return-void
.end method

.method public hasDialerSearchTextWatcher()Z
    .locals 1

    .prologue
    .line 441
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isSearchNumberOnly()Z
    .locals 1

    .prologue
    .line 465
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumberOnly:Z

    return v0
.end method

.method log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 682
    const-string v0, "DialerSearchController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method obtainDialerSearchResult(I)Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;
    .locals 1
    .parameter "count"

    .prologue
    .line 455
    new-instance v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V

    .line 456
    .local v0, dialerSearchResult:Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;
    iput p1, v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;->mCount:I

    .line 457
    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onActivityCreated]savedInstance null:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 318
    return-void

    .line 317
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 395
    const-string v0, "[onDestroy]"

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 396
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    if-eqz v0, :cond_0

    .line 397
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mCallLogContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 400
    :cond_0
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    if-eqz v0, :cond_1

    .line 401
    const-string v0, "DialerSearchController onDestroy : unregister the filter observer."

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 402
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFilterContentObserver:Lcom/mediatek/contacts/dialpad/DialerSearchController$DataChangeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 405
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->clearDialerSearchTextWatcher()V

    .line 407
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    if-eqz v0, :cond_2

    .line 408
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mContactsPrefs:Lcom/android/contacts/preference/ContactsPreferences;

    invoke-virtual {v0}, Lcom/android/contacts/preference/ContactsPreferences;->unregisterChangeListener()V

    .line 412
    :cond_2
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    if-eqz v0, :cond_3

    .line 413
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v0, v2}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 414
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v0, v2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->setResultCursor(Landroid/database/Cursor;)V

    .line 416
    :cond_3
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 375
    const-string v0, "[onPause]"

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 376
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsForeground:Z

    .line 377
    return-void
.end method

.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 512
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onQueryComplete]mIsShowLoadingTip:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 513
    iget-boolean v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    if-eqz v3, :cond_0

    .line 514
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0, v3, v5, v6, v5}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->showLoadingTips(Landroid/view/View;ZLjava/lang/String;Z)V

    .line 516
    :cond_0
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumCntQ:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 517
    .local v0, cnt:Ljava/lang/Integer;
    if-eqz v0, :cond_1

    .line 518
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mPrevQueryDigCnt:I

    .line 520
    :cond_1
    const-string v3, "+onQueryComplete"

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 522
    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    .line 525
    .local v1, dialerSearchAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;
    if-eqz p3, :cond_5

    .line 526
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onQueryComplete]mIsLocaleChanging"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 527
    iget-boolean v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    if-eqz v3, :cond_2

    .line 528
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 579
    :goto_0
    return-void

    .line 531
    :cond_2
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    .line 532
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[onQueryComplete]cursor count: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 533
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 535
    .local v2, tempStr:Ljava/lang/String;
    if-eqz v2, :cond_7

    iget v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    if-lez v3, :cond_7

    .line 536
    iput v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mNoResultDigCnt:I

    .line 538
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_3

    .line 539
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 546
    :cond_3
    invoke-static {v2}, Lcom/mediatek/contacts/dialpad/DialerSearchUtils;->tripHyphen(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    iget v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mPrevQueryDigCnt:I

    if-ne v3, v4, :cond_6

    .line 549
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;

    if-eqz v3, :cond_4

    .line 550
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;

    iget v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    invoke-virtual {p0, v4}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->obtainDialerSearchResult(I)Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;->onDialerSearchResult(Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;)V

    .line 552
    :cond_4
    invoke-virtual {v1, p3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->setResultCursor(Landroid/database/Cursor;)V

    .line 553
    invoke-virtual {v1, p3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 578
    .end local v2           #tempStr:Ljava/lang/String;
    :cond_5
    :goto_1
    const-string v3, "-onQueryComplete"

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 555
    .restart local v2       #tempStr:Ljava/lang/String;
    :cond_6
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 558
    :cond_7
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;

    if-eqz v3, :cond_8

    .line 559
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mListener:Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;

    iget v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDialerSearchCursorCount:I

    invoke-virtual {p0, v4}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->obtainDialerSearchResult(I)Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/mediatek/contacts/dialpad/DialerSearchController$Listener;->onDialerSearchResult(Lcom/mediatek/contacts/dialpad/DialerSearchController$DialerSearchResult;)V

    .line 561
    :cond_8
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    iput v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mNoResultDigCnt:I

    .line 562
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 563
    invoke-virtual {v1, v6}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->setResultCursor(Landroid/database/Cursor;)V

    .line 565
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    if-eqz v3, :cond_5

    .line 566
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_9

    .line 567
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    const v4, 0x7f0c00f4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 572
    :goto_2
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 569
    :cond_9
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    const v4, 0x7f0c00f5

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 331
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[onResume]mAdapter is null:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    if-nez v3, :cond_2

    move v3, v4

    :goto_0
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 332
    iget-boolean v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mConfigFromIntent:Z

    if-eqz v3, :cond_3

    .line 333
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 334
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[configureFromIntent]current Text:"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 335
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v6, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 338
    :cond_0
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigitsFromIntent:Ljava/lang/String;

    .line 339
    iput-boolean v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mConfigFromIntent:Z

    .line 371
    :cond_1
    :goto_1
    iput-boolean v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsForeground:Z

    .line 372
    return-void

    :cond_2
    move v3, v5

    .line 331
    goto :goto_0

    .line 340
    :cond_3
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    if-eqz v3, :cond_1

    .line 341
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->onResume()V

    .line 346
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->isDigitsCleared()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 347
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume]mAdapter isDigitsCleared:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v5}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->isDigitsCleared()Z

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 348
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceLoadAll()V

    .line 349
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v3}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->resetDigitsState()V

    goto :goto_1

    .line 350
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    if-eqz v3, :cond_6

    .line 351
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 352
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 353
    .local v0, dialDigits:Landroid/text/Editable;
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 354
    .local v2, start:I
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 355
    .local v1, end:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[onResume] mDigits:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " mDataChanged:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " need forceloadall!"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 357
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceLoadAll()V

    .line 359
    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->startSimpleSearchNumber(Landroid/text/Editable;II)V

    goto/16 :goto_1

    .line 362
    .end local v0           #dialDigits:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v2           #start:I
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceLoadAll()V

    goto/16 :goto_1

    .line 364
    :cond_6
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 365
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 366
    .restart local v0       #dialDigits:Landroid/text/Editable;
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 367
    .restart local v2       #start:I
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 368
    .restart local v1       #end:I
    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->startSimpleSearchNumber(Landroid/text/Editable;II)V

    goto/16 :goto_1
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 1
    .parameter "view"
    .parameter "scrollState"

    .prologue
    .line 469
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    .line 472
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 321
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStart]mIsFirstLaunched:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|mDataChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 322
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    if-eqz v0, :cond_1

    .line 323
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceLoadAll()V

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsFirstLaunched:Z

    .line 328
    :cond_0
    :goto_0
    return-void

    .line 325
    :cond_1
    iget-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    if-eqz v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceQueryIfNeeded()V

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 380
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[onStop]mClearDigitsOnStop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mClearDigitsOnStop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 382
    const-string v0, "[onStop] Reserve tel number as the dialpad is stopping!"

    invoke-virtual {p0, v0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 392
    return-void
.end method

.method public setClearDigitsOnStop(Z)V
    .locals 0
    .parameter "clearDigits"

    .prologue
    .line 687
    iput-boolean p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mClearDigitsOnStop:Z

    .line 688
    return-void
.end method

.method public setDialerSearchTextWatcher()V
    .locals 2

    .prologue
    .line 427
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 428
    new-instance v0, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;-><init>(Lcom/mediatek/contacts/dialpad/DialerSearchController;)V

    iput-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    .line 429
    iget-object v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDsTextWatcher:Lcom/mediatek/contacts/dialpad/DialerSearchController$DsTextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 431
    :cond_0
    return-void
.end method

.method public setDialerSearchTitle(Landroid/widget/TextView;)V
    .locals 0
    .parameter "searchTitle"

    .prologue
    .line 446
    iput-object p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchTitle:Landroid/widget/TextView;

    .line 447
    return-void
.end method

.method public setSearchNumberMode(Z)V
    .locals 0
    .parameter "isSimpleMode"

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mSearchNumberOnly:Z

    .line 462
    return-void
.end method

.method public showLoadingTips(Landroid/view/View;ZLjava/lang/String;Z)V
    .locals 14
    .parameter "rootView"
    .parameter "isShowTips"
    .parameter "tipString"
    .parameter "withoutSearch"

    .prologue
    .line 583
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v11

    iget v11, v11, Landroid/content/res/Configuration;->orientation:I

    const/4 v12, 0x2

    if-ne v11, v12, :cond_1

    .line 585
    const-string v11, "[showLocaleChangeTips] return lanscape."

    invoke-virtual {p0, v11}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 678
    :cond_0
    :goto_0
    return-void

    .line 588
    :cond_1
    const v11, 0x7f070122

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 589
    .local v8, topView:Landroid/view/View;
    const v11, 0x7f07002a

    invoke-virtual {p1, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 590
    .local v2, dialpadBtnView:Landroid/view/View;
    if-eqz v8, :cond_2

    instance-of v11, v8, Landroid/widget/RelativeLayout;

    if-eqz v11, :cond_2

    if-eqz v2, :cond_2

    instance-of v11, v2, Landroid/widget/ImageButton;

    if-nez v11, :cond_3

    .line 592
    :cond_2
    const-string v11, "[showLocaleChangeTips] return due to invalid layout."

    invoke-virtual {p0, v11}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 596
    :cond_3
    const-class v11, Landroid/widget/RelativeLayout;

    invoke-virtual {v11, v8}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/widget/RelativeLayout;

    .line 597
    .local v7, topLayout:Landroid/widget/RelativeLayout;
    const-class v11, Landroid/widget/ImageButton;

    invoke-virtual {v11, v2}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    .line 598
    .local v1, dialpadBtn:Landroid/widget/ImageButton;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "[showLocaleChangeTips]isShowTips:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move/from16 v0, p2

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "||mLoadTipsContainer is null:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    if-nez v11, :cond_4

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 600
    if-eqz p2, :cond_7

    .line 601
    move/from16 v0, p4

    iput-boolean v0, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    .line 602
    if-nez p4, :cond_5

    const/4 v11, 0x1

    :goto_2
    iput-boolean v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    .line 604
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_6

    .line 606
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 607
    .local v9, tv:Landroid/widget/TextView;
    if-eqz v9, :cond_0

    .line 608
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 598
    .end local v9           #tv:Landroid/widget/TextView;
    :cond_4
    const/4 v11, 0x0

    goto :goto_1

    .line 602
    :cond_5
    const/4 v11, 0x0

    goto :goto_2

    .line 613
    :cond_6
    new-instance v3, Landroid/util/DisplayMetrics;

    invoke-direct {v3}, Landroid/util/DisplayMetrics;-><init>()V

    .line 614
    .local v3, displayMetrics:Landroid/util/DisplayMetrics;
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-virtual {v11}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v11

    invoke-interface {v11}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v11

    invoke-virtual {v11, v3}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 616
    iget v10, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 619
    .local v10, width:I
    new-instance v11, Landroid/widget/LinearLayout;

    iget-object v12, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-direct {v11, v12}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    .line 620
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 621
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x11

    invoke-virtual {v11, v12}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 622
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/view/View;->setClickable(Z)V

    .line 623
    new-instance v5, Landroid/widget/ProgressBar;

    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    const/4 v12, 0x0

    const v13, 0x101007a

    invoke-direct {v5, v11, v12, v13}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 625
    .local v5, loadingBar:Landroid/widget/ProgressBar;
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 627
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 628
    new-instance v9, Landroid/widget/TextView;

    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    invoke-direct {v9, v11}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 629
    .restart local v9       #tv:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mActivity:Landroid/app/Activity;

    const v12, 0x1030044

    invoke-virtual {v9, v11, v12}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 630
    const/high16 v11, 0x4080

    iget v12, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v11, v12

    float-to-int v6, v11

    .line 631
    .local v6, paddingTop:I
    const/4 v11, 0x0

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 632
    const/16 v11, 0xa

    const/16 v12, 0xa

    const/4 v13, 0x0

    invoke-virtual {v9, v11, v6, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 633
    const/4 v11, 0x1

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setGravity(I)V

    .line 634
    move-object/from16 v0, p3

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    new-instance v11, Landroid/view/ViewGroup$LayoutParams;

    const/4 v12, -0x2

    const/4 v13, -0x2

    invoke-direct {v11, v12, v13}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v9, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 637
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v11, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 640
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v11, -0x1

    invoke-direct {v4, v10, v11}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 642
    .local v4, layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v11, 0x2

    const v12, 0x7f070126

    invoke-virtual {v4, v11, v12}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V

    .line 644
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v12

    invoke-virtual {v7, v11, v12, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 646
    if-eqz p4, :cond_0

    .line 647
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;->setResultCursor(Landroid/database/Cursor;)V

    .line 648
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mAdapter:Lcom/mediatek/contacts/dialpad/DialerSearchAdapter;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 649
    invoke-virtual {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->clearDialerSearchTextWatcher()V

    .line 651
    if-eqz v1, :cond_0

    .line 652
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_0

    .line 658
    .end local v3           #displayMetrics:Landroid/util/DisplayMetrics;
    .end local v4           #layoutParams:Landroid/widget/RelativeLayout$LayoutParams;
    .end local v5           #loadingBar:Landroid/widget/ProgressBar;
    .end local v6           #paddingTop:I
    .end local v9           #tv:Landroid/widget/TextView;
    .end local v10           #width:I
    :cond_7
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsLocaleChanging:Z

    .line 659
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mIsShowLoadingTip:Z

    .line 660
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/view/View;->setClickable(Z)V

    .line 661
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    if-eqz v11, :cond_0

    .line 662
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    .line 663
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v11}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 664
    if-eqz p4, :cond_8

    .line 665
    invoke-virtual {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->hasDialerSearchTextWatcher()Z

    move-result v11

    if-nez v11, :cond_8

    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v11, :cond_8

    .line 666
    invoke-virtual {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setDialerSearchTextWatcher()V

    .line 667
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v11}, Landroid/widget/TextView;->length()I

    move-result v11

    if-lez v11, :cond_9

    .line 668
    const/4 v11, 0x1

    invoke-virtual {p0, v11}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->setSearchNumberMode(Z)V

    .line 669
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 670
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    iget-object v12, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/TextView;->length()I

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/EditText;->setSelection(I)V

    .line 676
    :cond_8
    :goto_3
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mLoadTipsContainer:Landroid/widget/LinearLayout;

    goto/16 :goto_0

    .line 672
    :cond_9
    iget-object v11, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3
.end method

.method public updateDialerSearch()V
    .locals 5

    .prologue
    .line 475
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceQueryIfNeeded()V

    .line 477
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 478
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 479
    .local v0, dialDigits:Landroid/text/Editable;
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v2

    .line 480
    .local v2, start:I
    iget-object v3, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDigits:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    .line 481
    .local v1, end:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[updateDialerSearch] mDigits:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mDataChanged:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/contacts/dialpad/DialerSearchController;->mDataChanged:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " need forceloadall!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->log(Ljava/lang/String;)V

    .line 482
    invoke-direct {p0}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->forceLoadAll()V

    .line 483
    invoke-direct {p0, v0, v2, v1}, Lcom/mediatek/contacts/dialpad/DialerSearchController;->startSimpleSearchNumber(Landroid/text/Editable;II)V

    .line 486
    .end local v0           #dialDigits:Landroid/text/Editable;
    .end local v1           #end:I
    .end local v2           #start:I
    :cond_0
    return-void
.end method

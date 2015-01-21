.class public Lcom/android/contacts/quickcontact/QuickContactActivity;
.super Landroid/app/Activity;
.source "QuickContactActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;,
        Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;
    }
.end annotation


# static fields
.field private static final ENABLE_STOPWATCH:Z = false

.field private static final LEADING_MIMETYPES:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LEGACY_AUTHORITY:Ljava/lang/String; = "contacts"

.field private static final LOADER_ID:I = 0x0

.field private static final POST_DRAW_WAIT_DURATION:I = 0x3c

.field private static final TAG:Ljava/lang/String; = "QuickContact"

.field private static final TRACE_LAUNCH:Z = false

.field private static final TRACE_TAG:Ljava/lang/String; = "quickcontact"

.field private static final TRAILING_MIMETYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

.field private mContactLoader:Lcom/android/contacts/model/ContactLoader;

.field private mDefaultsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/contacts/quickcontact/Action;",
            ">;"
        }
    .end annotation
.end field

.field private mExcludeMimes:[Ljava/lang/String;

.field private mFinished:Z

.field private mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

.field private mLineAfterTrack:Landroid/view/View;

.field private final mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

.field private mListPager:Landroid/support/v4/view/ViewPager;

.field private mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Lcom/android/contacts/model/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private mLookupUri:Landroid/net/Uri;

.field private mOpenDetailsImage:Landroid/widget/ImageView;

.field private mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

.field private mPhotoContainer:Landroid/view/View;

.field private final mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

.field private mSelectedTabRectangle:Landroid/view/View;

.field private mSortedActionMimeTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mStopWatch:Lcom/android/contacts/util/StopWatch;

.field private mTrack:Landroid/view/ViewGroup;

.field private mTrackScroller:Landroid/widget/HorizontalScrollView;

.field private final mTypeViewClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 161
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/phone_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/sip_address"

    aput-object v1, v0, v3

    const-string v1, "vnd.android.cursor.item/email_v2"

    aput-object v1, v0, v4

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    .line 165
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "vnd.android.cursor.item/postal-address_v2"

    aput-object v1, v0, v2

    const-string v1, "vnd.android.cursor.item/website"

    aput-object v1, v0, v3

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 106
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 120
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    .line 136
    new-instance v0, Lcom/android/contacts/util/ImageViewDrawableSetter;

    invoke-direct {v0}, Lcom/android/contacts/util/ImageViewDrawableSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    .line 141
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    .line 148
    new-instance v0, Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-direct {v0}, Lcom/android/contacts/quickcontact/ActionMultiMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    .line 171
    invoke-static {}, Lcom/android/contacts/util/StopWatch;->getNullStopWatch()Lcom/android/contacts/util/StopWatch;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    .line 577
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$5;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 654
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$6;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    .line 716
    new-instance v0, Lcom/android/contacts/quickcontact/QuickContactActivity$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$7;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    iput-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    .line 789
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFinished:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/contacts/quickcontact/QuickContactActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->handleOutsideTouch()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/ActionMultiMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/quickcontact/QuickContactActivity;I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/widget/HorizontalScrollView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/model/ContactLoader;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/quickcontact/QuickContactActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/quickcontact/FloatingChildLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/quickcontact/QuickContactActivity;)Lcom/android/contacts/util/StopWatch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/util/StopWatch;)Lcom/android/contacts/util/StopWatch;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->bindData(Lcom/android/contacts/model/Contact;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/quickcontact/QuickContactActivity;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/quickcontact/QuickContactActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private bindData(Lcom/android/contacts/model/Contact;)V
    .locals 32
    .parameter "data"

    .prologue
    .line 366
    invoke-static/range {p0 .. p0}, Lcom/android/contacts/quickcontact/ResolveCache;->getInstance(Landroid/content/Context;)Lcom/android/contacts/quickcontact/ResolveCache;

    move-result-object v11

    .line 367
    .local v11, cache:Lcom/android/contacts/quickcontact/ResolveCache;
    move-object/from16 v13, p0

    .line 370
    .local v13, context:Landroid/content/Context;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getSlot()I

    move-result v5

    const-string v6, "ExtensionForAAS"

    invoke-virtual {v4, v5, v6}, Lcom/android/contacts/ext/ContactAccountExtension;->setCurrentSlot(ILjava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsImage:Landroid/widget/ImageView;

    const-string v4, "vnd.android.cursor.item/contact"

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/16 v4, 0x8

    :goto_0
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 377
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v5, "sph"

    invoke-virtual {v4, v5}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    const v5, 0x7f0700a7

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    check-cast v27, Landroid/widget/ImageView;

    .line 381
    .local v27, photoView:Landroid/widget/ImageView;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoSetter:Lcom/android/contacts/util/ImageViewDrawableSetter;

    move-object/from16 v0, p1

    move-object/from16 v1, v27

    invoke-virtual {v4, v0, v1}, Lcom/android/contacts/util/ImageViewDrawableSetter;->setupContactPhoto(Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;)V

    .line 383
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v5, "ph"

    invoke-virtual {v4, v5}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 385
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/contacts/model/RawContact;

    .line 386
    .local v28, rawContact:Lcom/android/contacts/model/RawContact;
    invoke-virtual/range {v28 .. v28}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v20

    .local v20, i$:Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/contacts/model/dataitem/DataItem;

    .line 387
    .local v16, dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    .line 390
    .local v3, mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/quickcontact/QuickContactActivity;->isMimeExcluded(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 392
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/dataitem/DataItem;->getId()J

    move-result-wide v14

    .line 393
    .local v14, dataId:J
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/dataitem/DataItem;->isPrimary()Z

    move-result v23

    .line 394
    .local v23, isPrimary:Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v24

    .line 403
    .local v24, isSuperPrimary:Z
    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v2

    .line 405
    .local v2, kind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v6

    const-string v7, "display_name"

    invoke-virtual {v6, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ExtenstionForRCS"

    invoke-virtual {v4, v3, v5, v6, v7}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v29

    .line 409
    .local v29, reslut:Z
    if-eqz v29, :cond_2

    .line 410
    new-instance v2, Lcom/android/contacts/model/dataitem/DataKind;

    .end local v2           #kind:Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v4, 0x0

    const/16 v5, 0xa

    const/4 v6, 0x0

    const v7, 0x7f0400cd

    invoke-direct/range {v2 .. v7}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    .line 411
    .restart local v2       #kind:Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v4, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v5, "data1"

    invoke-direct {v4, v5}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v4, v2, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 412
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    .line 418
    :cond_2
    if-eqz v2, :cond_4

    .line 429
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v4

    if-nez v4, :cond_6

    const/16 v22, 0x1

    .line 430
    .local v22, isDirectoryEntry:Z
    :goto_2
    new-instance v8, Lcom/mediatek/contacts/quickcontact/QuickDataAction;

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-direct {v8, v13, v0, v1}, Lcom/mediatek/contacts/quickcontact/QuickDataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;Z)V

    .line 434
    .local v8, action:Lcom/android/contacts/quickcontact/Action;
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v8, v11, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    move-result v31

    .line 435
    .local v31, wasAdded:Z
    if-eqz v31, :cond_4

    .line 437
    if-nez v24, :cond_3

    if-eqz v23, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_4

    .line 438
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mDefaultsMap:Ljava/util/HashMap;

    invoke-virtual {v4, v3, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 444
    .end local v8           #action:Lcom/android/contacts/quickcontact/Action;
    .end local v22           #isDirectoryEntry:Z
    .end local v31           #wasAdded:Z
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v4

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/contacts/util/DataStatus;

    .line 445
    .local v30, status:Lcom/android/contacts/util/DataStatus;
    if-eqz v30, :cond_1

    move-object/from16 v0, v16

    instance-of v4, v0, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v4, :cond_1

    move-object/from16 v17, v16

    .line 446
    check-cast v17, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 447
    .local v17, email:Lcom/android/contacts/model/dataitem/EmailDataItem;
    invoke-static/range {v17 .. v17}, Lcom/android/contacts/model/dataitem/ImDataItem;->createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;

    move-result-object v21

    .line 448
    .local v21, im:Lcom/android/contacts/model/dataitem/ImDataItem;
    invoke-virtual/range {v21 .. v21}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 449
    new-instance v8, Lcom/android/contacts/quickcontact/DataAction;

    move-object/from16 v0, v21

    invoke-direct {v8, v13, v0}, Lcom/android/contacts/quickcontact/DataAction;-><init>(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;)V

    .line 450
    .local v8, action:Lcom/android/contacts/quickcontact/DataAction;
    invoke-virtual/range {v30 .. v30}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v4

    invoke-virtual {v8, v4}, Lcom/android/contacts/quickcontact/DataAction;->setPresence(I)V

    .line 451
    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-direct {v0, v8, v11, v1}, Lcom/android/contacts/quickcontact/QuickContactActivity;->considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z

    goto/16 :goto_1

    .line 374
    .end local v2           #kind:Lcom/android/contacts/model/dataitem/DataKind;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v8           #action:Lcom/android/contacts/quickcontact/DataAction;
    .end local v14           #dataId:J
    .end local v16           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v17           #email:Lcom/android/contacts/model/dataitem/EmailDataItem;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v21           #im:Lcom/android/contacts/model/dataitem/ImDataItem;
    .end local v23           #isPrimary:Z
    .end local v24           #isSuperPrimary:Z
    .end local v27           #photoView:Landroid/widget/ImageView;
    .end local v28           #rawContact:Lcom/android/contacts/model/RawContact;
    .end local v29           #reslut:Z
    .end local v30           #status:Lcom/android/contacts/util/DataStatus;
    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 429
    .restart local v2       #kind:Lcom/android/contacts/model/dataitem/DataKind;
    .restart local v3       #mimeType:Ljava/lang/String;
    .restart local v14       #dataId:J
    .restart local v16       #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .restart local v20       #i$:Ljava/util/Iterator;
    .restart local v23       #isPrimary:Z
    .restart local v24       #isSuperPrimary:Z
    .restart local v27       #photoView:Landroid/widget/ImageView;
    .restart local v28       #rawContact:Lcom/android/contacts/model/RawContact;
    .restart local v29       #reslut:Z
    :cond_6
    const/16 v22, 0x0

    goto :goto_2

    .line 457
    .end local v2           #kind:Lcom/android/contacts/model/dataitem/DataKind;
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v14           #dataId:J
    .end local v16           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v20           #i$:Ljava/util/Iterator;
    .end local v23           #isPrimary:Z
    .end local v24           #isSuperPrimary:Z
    .end local v28           #rawContact:Lcom/android/contacts/model/RawContact;
    .end local v29           #reslut:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v5, "e"

    invoke-virtual {v4, v5}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    .line 462
    .local v25, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_8
    :goto_3
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 463
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 464
    .restart local v3       #mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/mediatek/contacts/ExtensionManager;->getQuickContactExtension()Lcom/android/contacts/ext/QuickContactExtension;

    move-result-object v4

    const-string v5, "ExtensionForOP01"

    invoke-virtual {v4, v3, v5}, Lcom/android/contacts/ext/QuickContactExtension;->collapseListPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 466
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-static {v4}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    goto :goto_3

    .line 470
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v5, "c"

    invoke-virtual {v4, v5}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 472
    const v4, 0x7f070090

    invoke-virtual/range {p1 .. p1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 475
    new-instance v12, Ljava/util/HashSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-direct {v12, v4}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 476
    .local v12, containedTypes:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 478
    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->LEADING_MIMETYPES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_a
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 479
    .restart local v3       #mimeType:Ljava/lang/String;
    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 480
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 481
    invoke-interface {v12, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    .line 486
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_b
    invoke-interface {v12}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v12, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .local v10, arr$:[Ljava/lang/String;
    array-length v0, v10

    move/from16 v26, v0

    .local v26, len$:I
    const/16 v19, 0x0

    .local v19, i$:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v26

    if-ge v0, v1, :cond_d

    aget-object v3, v10, v19

    .line 487
    .restart local v3       #mimeType:Ljava/lang/String;
    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 488
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 489
    invoke-interface {v12, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 486
    :cond_c
    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 494
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_d
    sget-object v4, Lcom/android/contacts/quickcontact/QuickContactActivity;->TRAILING_MIMETYPES:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_e
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 495
    .restart local v3       #mimeType:Ljava/lang/String;
    invoke-interface {v12, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    .line 496
    invoke-interface {v12, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 497
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 501
    .end local v3           #mimeType:Ljava/lang/String;
    :cond_f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v5, "mt"

    invoke-virtual {v4, v5}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 505
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_7
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 506
    .restart local v3       #mimeType:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    move-object/from16 v0, p0

    invoke-direct {v0, v3, v11, v4}, Lcom/android/contacts/quickcontact/QuickContactActivity;->inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 507
    .local v9, actionView:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v4, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_7

    .line 510
    .end local v3           #mimeType:Ljava/lang/String;
    .end local v9           #actionView:Landroid/view/View;
    :cond_10
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v5, "mt"

    invoke-virtual {v4, v5}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_11

    const/16 v18, 0x1

    .line 513
    .local v18, hasData:Z
    :goto_8
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    if-eqz v18, :cond_12

    const/4 v4, 0x0

    :goto_9
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 514
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    if-eqz v18, :cond_13

    const/4 v4, 0x0

    :goto_a
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 515
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    if-eqz v18, :cond_14

    const/4 v4, 0x0

    :goto_b
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 516
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    if-eqz v18, :cond_15

    const/4 v4, 0x0

    :goto_c
    invoke-virtual {v5, v4}, Landroid/view/View;->setVisibility(I)V

    .line 517
    return-void

    .line 512
    .end local v18           #hasData:Z
    :cond_11
    const/16 v18, 0x0

    goto :goto_8

    .line 513
    .restart local v18       #hasData:Z
    :cond_12
    const/16 v4, 0x8

    goto :goto_9

    .line 514
    :cond_13
    const/16 v4, 0x8

    goto :goto_a

    .line 515
    :cond_14
    const/16 v4, 0x8

    goto :goto_b

    .line 516
    :cond_15
    const/16 v4, 0x8

    goto :goto_c
.end method

.method private close(Z)V
    .locals 3
    .parameter "withAnimation"

    .prologue
    .line 290
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 292
    if-eqz p1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v1}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->fadeOutBackground()V

    .line 294
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$4;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$4;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v1, v2}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->hideContent(Ljava/lang/Runnable;)Z

    move-result v0

    .line 318
    .local v0, animated:Z
    if-nez v0, :cond_0

    .line 321
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 326
    .end local v0           #animated:Z
    :cond_0
    :goto_0
    return-void

    .line 324
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method private considerAdd(Lcom/android/contacts/quickcontact/Action;Lcom/android/contacts/quickcontact/ResolveCache;Z)Z
    .locals 2
    .parameter "action"
    .parameter "resolveCache"
    .parameter "front"

    .prologue
    .line 529
    invoke-virtual {p2, p1}, Lcom/android/contacts/quickcontact/ResolveCache;->hasResolve(Lcom/android/contacts/quickcontact/Action;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-interface {p1}, Lcom/android/contacts/quickcontact/Action;->getMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p3}, Lcom/android/contacts/quickcontact/ActionMultiMap;->put(Ljava/lang/String;Lcom/android/contacts/quickcontact/Action;Z)V

    .line 531
    const/4 v0, 0x1

    .line 533
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getActionViewAt(I)Lcom/android/contacts/quickcontact/CheckableImageView;
    .locals 1
    .parameter "position"

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/quickcontact/CheckableImageView;

    return-object v0
.end method

.method private handleOutsideTouch()V
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v0}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->isContentFullyVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 284
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 286
    :cond_0
    return-void
.end method

.method private inflateAction(Ljava/lang/String;Lcom/android/contacts/quickcontact/ResolveCache;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
    .parameter "mimeType"
    .parameter "resolveCache"
    .parameter "root"

    .prologue
    const/4 v8, 0x0

    .line 541
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0400b1

    invoke-virtual {v5, v6, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/quickcontact/CheckableImageView;

    .line 544
    .local v4, typeView:Lcom/android/contacts/quickcontact/CheckableImageView;
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mActions:Lcom/android/contacts/quickcontact/ActionMultiMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 545
    .local v0, children:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/quickcontact/Action;>;"
    invoke-virtual {v4, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 546
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/quickcontact/Action;

    .line 549
    .local v2, firstInfo:Lcom/android/contacts/quickcontact/Action;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getDescription(Lcom/android/contacts/quickcontact/Action;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 550
    .local v1, descrip:Ljava/lang/CharSequence;
    invoke-virtual {p2, v2}, Lcom/android/contacts/quickcontact/ResolveCache;->getIcon(Lcom/android/contacts/quickcontact/Action;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 551
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v4, v8}, Lcom/android/contacts/quickcontact/CheckableImageView;->setChecked(Z)V

    .line 552
    invoke-virtual {v4, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 553
    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 555
    const-string v5, "QuickContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSortedActionMimeTypes : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_0

    .line 557
    const-string v5, "QuickContact"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mSortedActionMimeTypes.size() : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSortedActionMimeTypes:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTypeViewClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v5}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 564
    :goto_0
    return-object v4

    .line 561
    :cond_0
    invoke-virtual {v4, v8}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

.method private isMimeExcluded(Ljava/lang/String;)Z
    .locals 6
    .parameter "mimeType"

    .prologue
    const/4 v4, 0x0

    .line 353
    iget-object v5, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 359
    :cond_0
    :goto_0
    return v4

    .line 354
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 355
    .local v1, excludedMime:Ljava/lang/String;
    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 356
    const/4 v4, 0x1

    goto :goto_0

    .line 354
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private setHeaderNameText(II)V
    .locals 1
    .parameter "id"
    .parameter "resId"

    .prologue
    .line 335
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(ILjava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method private setHeaderNameText(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "id"
    .parameter "value"

    .prologue
    .line 340
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 341
    .local v0, view:Landroid/view/View;
    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_0

    .line 342
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    check-cast v0, Landroid/widget/TextView;

    .end local v0           #view:Landroid/view/View;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    :cond_0
    return-void
.end method


# virtual methods
.method public isActivityFinished()Z
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFinished:Z

    return v0
.end method

.method public onAttachFragment(Landroid/app/Fragment;)V
    .locals 2
    .parameter "fragment"

    .prologue
    .line 573
    move-object v0, p1

    check-cast v0, Lcom/android/contacts/quickcontact/QuickContactListFragment;

    .line 574
    .local v0, listFragment:Lcom/android/contacts/quickcontact/QuickContactListFragment;
    iget-object v1, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListFragmentListener:Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;

    invoke-virtual {v0, v1}, Lcom/android/contacts/quickcontact/QuickContactListFragment;->setListener(Lcom/android/contacts/quickcontact/QuickContactListFragment$Listener;)V

    .line 575
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 330
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/contacts/quickcontact/QuickContactActivity;->close(Z)V

    .line 331
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v11, 0x0

    const/high16 v10, 0x2

    .line 176
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v8, "c"

    invoke-virtual {v7, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 177
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 179
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v8, "sc"

    invoke-virtual {v7, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v7

    invoke-virtual {v7, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->registerReceiver(Landroid/app/Activity;)V

    .line 190
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 192
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    .line 195
    .local v1, lookupUri:Landroid/net/Uri;
    if-eqz v1, :cond_0

    const-string v7, "contacts"

    invoke-virtual {v1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 196
    invoke-static {v1}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 197
    .local v3, rawContactId:J
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    sget-object v8, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v8, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/provider/ContactsContract$RawContacts;->getContactLookupUri(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v1

    .line 201
    .end local v3           #rawContactId:J
    :cond_0
    const-string v7, "missing lookupUri"

    invoke-static {v1, v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/Uri;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLookupUri:Landroid/net/Uri;

    .line 203
    const-string v7, "exclude_mimes"

    invoke-virtual {v0, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mExcludeMimes:[Ljava/lang/String;

    .line 205
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v8, "i"

    invoke-virtual {v7, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Landroid/app/Activity;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v7, v8, v11, v9}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/model/ContactLoader;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mContactLoader:Lcom/android/contacts/model/ContactLoader;

    .line 210
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v8, "ld"

    invoke-virtual {v7, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10, v10}, Landroid/view/Window;->setFlags(II)V

    .line 216
    const v7, 0x7f0400a8

    invoke-virtual {p0, v7}, Landroid/app/Activity;->setContentView(I)V

    .line 218
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v8, "l"

    invoke-virtual {v7, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 220
    const v7, 0x7f07019c

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/contacts/quickcontact/FloatingChildLayout;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    .line 221
    const v7, 0x7f0701a5

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrack:Landroid/view/ViewGroup;

    .line 222
    const v7, 0x7f0701a4

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/HorizontalScrollView;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mTrackScroller:Landroid/widget/HorizontalScrollView;

    .line 223
    const v7, 0x7f0701a3

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsImage:Landroid/widget/ImageView;

    .line 224
    const v7, 0x7f0700b0

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    .line 225
    const v7, 0x7f07019e

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/support/v4/view/ViewPager;

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    .line 226
    const v7, 0x7f0701a6

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    .line 227
    const v7, 0x7f07019d

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    .line 231
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getThemeMainColor()I

    move-result v6

    .line 232
    .local v6, textColor:I
    if-eqz v6, :cond_1

    .line 233
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mSelectedTabRectangle:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 234
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mLineAfterTrack:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setBackgroundColor(I)V

    .line 239
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactActivity$1;

    invoke-direct {v8, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$1;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-virtual {v7, v8}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setOnOutsideTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 247
    new-instance v2, Lcom/android/contacts/quickcontact/QuickContactActivity$2;

    invoke-direct {v2, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$2;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    .line 257
    .local v2, openDetailsClickHandler:Landroid/view/View$OnClickListener;
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mOpenDetailsPushLayerButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v9

    invoke-direct {v8, p0, v9}, Lcom/android/contacts/quickcontact/QuickContactActivity$ViewPagerAdapter;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Landroid/app/FragmentManager;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 259
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mListPager:Landroid/support/v4/view/ViewPager;

    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;

    invoke-direct {v8, p0, v11}, Lcom/android/contacts/quickcontact/QuickContactActivity$PageChangeListener;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;Lcom/android/contacts/quickcontact/QuickContactActivity$1;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 261
    invoke-virtual {v0}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v5

    .line 262
    .local v5, sourceBounds:Landroid/graphics/Rect;
    if-eqz v5, :cond_2

    .line 263
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    invoke-virtual {v7, v5}, Lcom/android/contacts/quickcontact/FloatingChildLayout;->setChildTargetScreen(Landroid/graphics/Rect;)V

    .line 267
    :cond_2
    const v7, 0x7f0701a2

    invoke-virtual {p0, v7}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mPhotoContainer:Landroid/view/View;

    .line 268
    const v7, 0x7f070090

    const v8, 0x7f0c01fa

    invoke-direct {p0, v7, v8}, Lcom/android/contacts/quickcontact/QuickContactActivity;->setHeaderNameText(II)V

    .line 270
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v8, "v"

    invoke-virtual {v7, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 272
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFloatingLayout:Lcom/android/contacts/quickcontact/FloatingChildLayout;

    new-instance v8, Lcom/android/contacts/quickcontact/QuickContactActivity$3;

    invoke-direct {v8, p0}, Lcom/android/contacts/quickcontact/QuickContactActivity$3;-><init>(Lcom/android/contacts/quickcontact/QuickContactActivity;)V

    invoke-static {v7, v8}, Lcom/android/contacts/util/SchedulingUtils;->doAfterLayout(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 279
    iget-object v7, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mStopWatch:Lcom/android/contacts/util/StopWatch;

    const-string v8, "cf"

    invoke-virtual {v7, v8}, Lcom/android/contacts/util/StopWatch;->lap(Ljava/lang/String;)V

    .line 280
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 780
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->unregisterReceiver(Landroid/app/Activity;)V

    .line 781
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/quickcontact/QuickContactActivity;->mFinished:Z

    .line 782
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 783
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 774
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 775
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 776
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 768
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 769
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 770
    return-void
.end method

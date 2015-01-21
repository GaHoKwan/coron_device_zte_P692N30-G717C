.class public Lcom/android/contacts/detail/ContactDetailFragment;
.super Landroid/app/Fragment;
.source "ContactDetailFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;
.implements Lcom/android/contacts/ext/FragmentKeyListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;
.implements Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/detail/ContactDetailFragment$OnUpdateClickListener;,
        Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;,
        Lcom/android/contacts/detail/ContactDetailFragment$ContactDetailBroadcastReceiver;,
        Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;,
        Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;,
        Lcom/android/contacts/detail/ContactDetailFragment$DataQuery;,
        Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$Listener;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;,
        Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewCache;,
        Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;,
        Lcom/android/contacts/detail/ContactDetailFragment$ContextMenuIds;
    }
.end annotation


# static fields
.field private static final GROUPLIST_FRAGMENT_TAG:Ljava/lang/String; = "groupList"

.field private static final IP_CALL_STATIC:Ljava/lang/String; = "ipCallStatic"

.field private static final KEY_CONTACT_URI:Ljava/lang/String; = "contactUri"

.field private static final KEY_LIST_STATE:Ljava/lang/String; = "liststate"

.field public static final RCS_DISPLAY_NAME:Ljava/lang/String; = "rcs_display_name"

.field public static final RCS_PHONE_NUMBER:Ljava/lang/String; = "rcs_phone_number"

.field private static final SNS_ACCOUNT_TYPE:Ljava/lang/String; = "account_type"

.field private static final SNS_PACKAGE_ICON:Ljava/lang/String; = "res_package_icon"

.field private static final SNS_PACKAGE_NAME:Ljava/lang/String; = "res_package_name"

.field private static final SNS_USER_ID:Ljava/lang/String; = "user_id"

.field private static final TAG:Ljava/lang/String; = "ContactDetailFragment"

.field private static mExtentionEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mPhoneAndSubtitle:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mSNSEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static mUpdateClickListener:Lcom/android/contacts/detail/ContactDetailFragment$OnUpdateClickListener;


# instance fields
.field final DATA_PROJECTION:[Ljava/lang/String;

.field private callViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;",
            ">;"
        }
    .end annotation
.end field

.field private isFromGroupNameDlg:Z

.field public isGroupItemChecked:Z

.field private mAccountDataSet:Ljava/lang/String;

.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

.field private mAllEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mContactData:Lcom/android/contacts/model/Contact;

.field mContactDetailBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContactGroupMemberShip:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mContactHasSocialUpdates:Z

.field private mContext:Landroid/content/Context;

.field private mCreateNewGroupName:Ljava/lang/String;

.field mDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private mDefaultCountryIso:Ljava/lang/String;

.field mDetailGroupList:Landroid/view/View;

.field private mEmailEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyView:Landroid/view/View;

.field private mEventEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mForwardDragToListView:Landroid/view/View$OnDragListener;

.field private mForwardTouchToListView:Landroid/view/View$OnTouchListener;

.field private mGroupEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;

.field private mGroupMemberShipName:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupQueryToken:I

.field private mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

.field private mHasNameData:Z

.field private mHasPhone:Z

.field private mHasSip:Z

.field private mHasSms:Z

.field private mIdArray:[J

.field private mImEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mInsertedSimCount:I

.field private mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

.field private mIsPhoneEntriesNull:Z

.field private mIsUniqueEmail:Z

.field private mIsUniqueNumber:Z

.field private mListState:Landroid/os/Parcelable;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

.field private mLookupUri:Landroid/net/Uri;

.field private mNicknameEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mNoteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mOnDelSimAssociationListener:Landroid/content/DialogInterface$OnClickListener;

.field private mOnNewAssociationSimListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mOtherEntriesMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/android/contacts/model/account/AccountType;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

.field private mPhotoTouchOverlay:Landroid/view/View;

.field private mPluginView:Landroid/view/View;

.field private mPopup:Landroid/widget/ListPopupWindow;

.field private mPostalEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mPrimaryPhoneUri:Landroid/net/Uri;

.field private mQueryHandler:Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;

.field private mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

.field private mQuickFixButton:Landroid/widget/Button;

.field private mRawContactId:J

.field private mRawContactIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mRelationEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSNSDetailEntryView:Landroid/view/View;

.field private mSelectedGroupsIdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedGroupsNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShowStaticPhoto:Z

.field private mShowingPhoneEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mSimPhotoClickListener:Landroid/view/View$OnClickListener;

.field private mSipEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mSmsEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mStaticPhotoContainer:Landroid/view/ViewGroup;

.field private mTitleArray:[Ljava/lang/String;

.field private mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field private mView:Landroid/view/View;

.field private mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

.field private mWebsiteEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;"
        }
    .end annotation
.end field

.field private rawContactIds:[J

.field private tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

.field private userId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 4049
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneAndSubtitle:Ljava/util/HashMap;

    .line 4050
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtentionEntries:Ljava/util/ArrayList;

    .line 4619
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSNSEntries:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v2, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 327
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 223
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 226
    new-instance v0, Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    .line 232
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 234
    new-array v0, v5, [Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$MakeLocalCopyQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;

    invoke-direct {v1, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$AddToMyContactsQuickFix;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 270
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    .line 271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    .line 272
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    .line 276
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    .line 283
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    .line 285
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    .line 301
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$1;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardTouchToListView:Landroid/view/View$OnTouchListener;

    .line 316
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$2;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardDragToListView:Landroid/view/View$OnDragListener;

    .line 3360
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAnrEntries:Ljava/util/ArrayList;

    .line 3361
    iput-boolean v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsPhoneEntriesNull:Z

    .line 3362
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 3363
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3365
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowingPhoneEntries:Ljava/util/ArrayList;

    .line 3585
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$7;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOnDelSimAssociationListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3609
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$8;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOnNewAssociationSimListener:Landroid/content/DialogInterface$OnClickListener;

    .line 3954
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v2

    const-string v1, "data2"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "sim_id"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->DATA_PROJECTION:[Ljava/lang/String;

    .line 4121
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;

    .line 4122
    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQueryHandler:Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;

    .line 4123
    iput v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupQueryToken:I

    .line 4127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    .line 4128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsNameList:Ljava/util/ArrayList;

    .line 4129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactGroupMemberShip:Ljava/util/ArrayList;

    .line 4130
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupMemberShipName:Ljava/util/ArrayList;

    .line 4132
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCreateNewGroupName:Ljava/lang/String;

    .line 4472
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v0

    iput v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInsertedSimCount:I

    .line 4474
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->callViews:Ljava/util/List;

    .line 4739
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$12;

    invoke-direct {v0, p0}, Lcom/android/contacts/detail/ContactDetailFragment$12;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSimPhotoClickListener:Landroid/view/View$OnClickListener;

    .line 4748
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFromGroupNameDlg:Z

    .line 4749
    iput-boolean v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isGroupItemChecked:Z

    .line 329
    return-void
.end method

.method private static GetType(Landroid/content/ContentValues;Ljava/lang/String;)I
    .locals 1
    .parameter "values"
    .parameter "typeColumn"

    .prologue
    .line 4005
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4006
    invoke-virtual {p0, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 4008
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static synthetic access$1000(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    return-void
.end method

.method static synthetic access$1100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneAndSubtitle:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$1200()Lcom/android/contacts/detail/ContactDetailFragment$OnUpdateClickListener;
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->mUpdateClickListener:Lcom/android/contacts/detail/ContactDetailFragment$OnUpdateClickListener;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailPhotoSetter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPluginView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPluginView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/detail/ContactDetailFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSNSDetailEntryView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSNSDetailEntryView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/detail/ContactDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInsertedSimCount:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->callViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/contacts/detail/ContactDetailFragment;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/util/List;)J
    .locals 2
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->getDefaultGroupId(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$2900(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/util/NotifyingAsyncQueryHandler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasNameData:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"
    .parameter "x6"
    .parameter "x7"

    .prologue
    .line 185
    invoke-direct/range {p0 .. p7}, Lcom/android/contacts/detail/ContactDetailFragment;->importOneUSimContact(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->importOneSimContact(Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/contacts/detail/ContactDetailFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupQueryToken:I

    return v0
.end method

.method static synthetic access$3600(Lcom/android/contacts/detail/ContactDetailFragment;)[J
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J

    return-object v0
.end method

.method static synthetic access$3602(Lcom/android/contacts/detail/ContactDetailFragment;[J)[J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J

    return-object p1
.end method

.method static synthetic access$3700(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3702(Lcom/android/contacts/detail/ContactDetailFragment;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3800(Lcom/android/contacts/detail/ContactDetailFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFromGroupNameDlg:Z

    return v0
.end method

.method static synthetic access$3802(Lcom/android/contacts/detail/ContactDetailFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFromGroupNameDlg:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/android/contacts/detail/ContactDetailFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 185
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissGroupDialogIfShown()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/mediatek/contacts/detail/GroupListDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/mediatek/contacts/detail/GroupListDialog;)Lcom/mediatek/contacts/detail/GroupListDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListDialog:Lcom/mediatek/contacts/detail/GroupListDialog;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/android/contacts/detail/ContactDetailFragment;)[Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/contacts/detail/ContactDetailFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 185
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->dialIpCallToPhone(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/detail/ContactDetailFragment;)Lcom/android/contacts/model/Contact;
    .locals 1
    .parameter "x0"

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 185
    invoke-direct {p0, p1, p2, p3}, Lcom/android/contacts/detail/ContactDetailFragment;->showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method private addMoreNetworks()V
    .locals 7

    .prologue
    .line 1271
    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-direct {v1, v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/model/Contact;)V

    .line 1275
    .local v1, popupAdapter:Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;
    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$4;

    invoke-direct {v2, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$4;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;)V

    .line 1289
    .local v2, popupItemListener:Landroid/widget/AdapterView$OnItemClickListener;
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$5;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$5;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$InvitableAccountTypesAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1297
    .local v0, onClickListener:Landroid/view/View$OnClickListener;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v0, v6}, Lcom/android/contacts/detail/ContactDetailFragment$AddConnectionViewEntry;-><init>(Landroid/content/Context;Landroid/view/View$OnClickListener;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1298
    return-void
.end method

.method private addNetworks()V
    .locals 15

    .prologue
    const/4 v12, 0x1

    .line 1209
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v11, v13}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getAttribution(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, attribution:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_1

    move v4, v12

    .line 1211
    .local v4, hasAttribution:Z
    :goto_0
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v9

    .line 1215
    .local v9, networksCount:I
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v11}, Lcom/android/contacts/model/Contact;->getInvitableAccountTypes()Lcom/google/common/collect/ImmutableList;

    move-result-object v11

    invoke-virtual {v11}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v7

    .line 1216
    .local v7, invitableCount:I
    if-nez v4, :cond_2

    if-nez v9, :cond_2

    if-nez v7, :cond_2

    .line 1261
    :cond_0
    :goto_1
    return-void

    .line 1210
    .end local v4           #hasAttribution:Z
    .end local v7           #invitableCount:I
    .end local v9           #networksCount:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 1221
    .restart local v4       #hasAttribution:Z
    .restart local v7       #invitableCount:I
    .restart local v9       #networksCount:I
    :cond_2
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v13, 0x7f0c0266

    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 1222
    .local v8, networkKindTitle:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1225
    if-eqz v4, :cond_3

    .line 1226
    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1227
    .local v3, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v8, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1228
    iput-object v1, v3, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1229
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1232
    if-lez v9, :cond_3

    .line 1233
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v13}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1238
    .end local v3           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_3
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/account/AccountType;

    .line 1241
    .local v0, accountType:Lcom/android/contacts/model/account/AccountType;
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v13, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;

    iget-object v14, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v13, v14, v0}, Lcom/android/contacts/detail/ContactDetailFragment$NetworkTitleViewEntry;-><init>(Landroid/content/Context;Lcom/android/contacts/model/account/AccountType;)V

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1243
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1245
    .local v2, detailEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    new-instance v10, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v10}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    .line 1246
    .local v10, separatorEntry:Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    invoke-virtual {v10, v12}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;->setIsInSubSection(Z)V

    .line 1247
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1250
    invoke-virtual {v2, v12}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setIsInSubSection(Z)V

    .line 1251
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1255
    .end local v0           #accountType:Lcom/android/contacts/model/account/AccountType;
    .end local v2           #detailEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v10           #separatorEntry:Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;
    :cond_5
    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    invoke-interface {v11}, Ljava/util/Map;->clear()V

    .line 1258
    if-lez v7, :cond_0

    .line 1259
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addMoreNetworks()V

    goto/16 :goto_1
.end method

.method private addPhoneticName()V
    .locals 6

    .prologue
    .line 1175
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v3, v4}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getPhoneticName(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v1

    .line 1176
    .local v1, phoneticName:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1200
    :goto_0
    return-void

    .line 1181
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v4, 0x7f0c0265

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1182
    .local v2, phoneticNameKindTitle:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1185
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v0}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1186
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iput-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1187
    iput-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1193
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v3

    const-string v4, "ExtensionForOP01"

    invoke-virtual {v3, v1, v4}, Lcom/android/contacts/ext/ContactDetailExtension;->setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1199
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private static buildDataString(Lcom/android/contacts/model/dataitem/DataKind;Landroid/content/ContentValues;Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "kind"
    .parameter "values"
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 1380
    iget-object v2, p0, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    if-nez v2, :cond_1

    .line 1384
    :cond_0
    :goto_0
    return-object v1

    .line 1383
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    invoke-interface {v2, p2, p1}, Lcom/android/contacts/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1384
    .local v0, actionBody:Ljava/lang/CharSequence;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private final buildEntries()V
    .locals 48

    .prologue
    .line 709
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactGroupMemberShip:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 711
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    .line 712
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    .line 713
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSipPhone(Landroid/content/Context;)Z

    move-result v5

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    .line 716
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 718
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactIds:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 720
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 723
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v5, :cond_1

    .line 724
    const-string v5, "ContactDetailFragment"

    const-string v6, "[buildEntries] mContactData is null.."

    invoke-static {v5, v6}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1111
    :cond_0
    :goto_0
    return-void

    .line 729
    :cond_1
    const/16 v36, 0x0

    .line 732
    .local v36, rawContactAccountType:Ljava/lang/String;
    new-instance v19, Ljava/util/ArrayList;

    invoke-direct/range {v19 .. v19}, Ljava/util/ArrayList;-><init>()V

    .line 733
    .local v19, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :cond_2
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_27

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/contacts/model/RawContact;

    .line 734
    .local v35, rawContact:Lcom/android/contacts/model/RawContact;
    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v37

    .line 735
    .local v37, rawContactId:J
    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    .local v23, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/model/dataitem/DataItem;

    .line 736
    .local v12, dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    move-wide/from16 v0, v37

    invoke-virtual {v12, v0, v1}, Lcom/android/contacts/model/dataitem/DataItem;->setRawContactId(J)V

    .line 738
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 740
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "vnd.android.cursor.item/name"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 741
    const/4 v5, 0x1

    move-object/from16 v0, p0

    iput-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasNameData:Z

    .line 743
    :cond_4
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    if-eqz v5, :cond_5

    move-object/from16 v18, v12

    .line 744
    check-cast v18, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;

    .line 746
    .local v18, groupMembership:Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;
    invoke-virtual/range {v18 .. v18}, Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;->getGroupRowId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    .line 748
    .local v17, groupId:Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactGroupMemberShip:Ljava/util/ArrayList;

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->intValue()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 750
    if-eqz v17, :cond_3

    .line 751
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getGroupMetaData()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v5, v6, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V

    goto :goto_1

    .line 756
    .end local v17           #groupId:Ljava/lang/Long;
    .end local v18           #groupMembership:Lcom/android/contacts/model/dataitem/GroupMembershipDataItem;
    :cond_5
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getMimeType()Ljava/lang/String;

    move-result-object v4

    .line 757
    .local v4, mimeType:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v5

    iget-object v11, v5, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    .line 758
    .local v11, accountType:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v9

    .line 762
    .local v9, type1:Lcom/android/contacts/model/account/AccountType;
    move-object/from16 v36, v11

    .line 772
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getDataKind()Lcom/android/contacts/model/dataitem/DataKind;

    move-result-object v3

    .line 774
    .local v3, kind:Lcom/android/contacts/model/dataitem/DataKind;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v10, "ExtenstionForRCS"

    invoke-virtual {v5, v4, v6, v7, v10}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionKind(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Z

    move-result v39

    .line 776
    .local v39, result:Z
    if-eqz v39, :cond_6

    .line 777
    new-instance v3, Lcom/android/contacts/model/dataitem/DataKind;

    .end local v3           #kind:Lcom/android/contacts/model/dataitem/DataKind;
    const/4 v5, 0x0

    const/16 v6, 0xa

    const/4 v7, 0x0

    const v8, 0x7f0400cd

    invoke-direct/range {v3 .. v8}, Lcom/android/contacts/model/dataitem/DataKind;-><init>(Ljava/lang/String;IIZI)V

    .line 778
    .restart local v3       #kind:Lcom/android/contacts/model/dataitem/DataKind;
    new-instance v5, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;

    const-string v6, "data1"

    invoke-direct {v5, v6}, Lcom/android/contacts/model/account/BaseAccountType$SimpleInflater;-><init>(Ljava/lang/String;)V

    iput-object v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    .line 779
    const/4 v5, 0x0

    iput v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->titleRes:I

    .line 782
    :cond_6
    const/16 v30, 0x0

    .line 783
    .local v30, mExtentionMimeType:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    const-string v6, "ExtenstionForRCS"

    invoke-virtual {v5, v6}, Lcom/android/contacts/ext/ContactDetailExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v34

    .line 785
    .local v34, pluginStatus:Z
    if-eqz v34, :cond_7

    .line 786
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    const-string v6, "ExtenstionForRCS"

    invoke-virtual {v5, v6}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    .line 788
    const-string v5, "ContactDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " THE mExtentionMimeType : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v30

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 792
    :cond_7
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    const-string v6, "ExtensionForSNS"

    const-string v7, "ExtensionForSNS"

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/contacts/ext/ContactDetailExtension;->isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 798
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v5}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->resourcePackageName:Ljava/lang/String;

    .line 806
    :cond_8
    if-eqz v3, :cond_3

    .line 810
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v46

    move-wide/from16 v0, v46

    invoke-static {v5, v12, v6, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v8

    .line 812
    .local v8, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 817
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v5

    if-nez v5, :cond_9

    .line 818
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "sim_id"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->simId:I

    .line 823
    :cond_9
    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_b

    const/16 v20, 0x1

    .line 824
    .local v20, hasData:Z
    :goto_2
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->isSuperPrimary()Z

    move-result v28

    .line 826
    .local v28, isSuperPrimary:Z
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/StructuredNameDataItem;

    if-nez v5, :cond_3

    .line 828
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v5, :cond_13

    if-eqz v20, :cond_13

    move-object/from16 v32, v12

    .line 829
    check-cast v32, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    .line 831
    .local v32, phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    invoke-virtual/range {v32 .. v32}, Lcom/android/contacts/model/dataitem/PhoneDataItem;->getFormattedPhoneNumber()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 832
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_c

    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v33

    .line 834
    .local v33, phoneIntent:Landroid/content/Intent;
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v5, :cond_d

    new-instance v42, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "smsto"

    iget-object v7, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v6, v7, v10}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    move-object/from16 v0, v42

    invoke-direct {v0, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 837
    .local v42, smsIntent:Landroid/content/Intent;
    :goto_4
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_e

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v5, :cond_e

    .line 843
    move-object/from16 v0, v33

    iput-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 844
    move-object/from16 v0, v42

    iput-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 845
    iget v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 846
    iget v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 872
    :goto_5
    if-eqz v28, :cond_a

    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    .line 874
    :cond_a
    move/from16 v0, v28

    iput-boolean v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 877
    iput-object v11, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mAccountType:Ljava/lang/String;

    .line 878
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v5

    const-string v6, "ExtensionForAAS"

    invoke-virtual {v5, v11, v6}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_11

    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    invoke-static {v5}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->isAdditionalNumber(Landroid/content/ContentValues;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 881
    const/4 v5, 0x1

    iput-boolean v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsAnr:Z

    .line 882
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAnrEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 823
    .end local v20           #hasData:Z
    .end local v28           #isSuperPrimary:Z
    .end local v32           #phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v33           #phoneIntent:Landroid/content/Intent;
    .end local v42           #smsIntent:Landroid/content/Intent;
    :cond_b
    const/16 v20, 0x0

    goto/16 :goto_2

    .line 832
    .restart local v20       #hasData:Z
    .restart local v28       #isSuperPrimary:Z
    .restart local v32       #phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    :cond_c
    const/16 v33, 0x0

    goto :goto_3

    .line 834
    .restart local v33       #phoneIntent:Landroid/content/Intent;
    :cond_d
    const/16 v42, 0x0

    goto :goto_4

    .line 848
    .restart local v42       #smsIntent:Landroid/content/Intent;
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasPhone:Z

    if-eqz v5, :cond_f

    .line 854
    move-object/from16 v0, v33

    iput-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 856
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSms:Z

    if-eqz v5, :cond_10

    .line 862
    move-object/from16 v0, v42

    iput-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 863
    move-object/from16 v0, v42

    iput-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    .line 864
    iget v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->iconAltRes:I

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 865
    iget v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->iconAltDescriptionRes:I

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    goto :goto_5

    .line 868
    :cond_10
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_5

    .line 884
    :cond_11
    const/4 v5, 0x0

    iput-boolean v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsAnr:Z

    .line 887
    iget-boolean v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v5, :cond_12

    .line 889
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 892
    :cond_12
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 895
    .end local v32           #phone:Lcom/android/contacts/model/dataitem/PhoneDataItem;
    .end local v33           #phoneIntent:Landroid/content/Intent;
    .end local v42           #smsIntent:Landroid/content/Intent;
    :cond_13
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/EmailDataItem;

    if-eqz v5, :cond_15

    if-eqz v20, :cond_15

    .line 897
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SENDTO"

    const-string v7, "mailto"

    iget-object v10, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/16 v46, 0x0

    move-object/from16 v0, v46

    invoke-static {v7, v10, v0}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 899
    move/from16 v0, v28

    iput-boolean v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    .line 901
    iget-boolean v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v5, :cond_14

    .line 902
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 908
    :goto_6
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    iget-wide v6, v8, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/contacts/util/DataStatus;

    .line 909
    .local v43, status:Lcom/android/contacts/util/DataStatus;
    if-eqz v43, :cond_3

    move-object v15, v12

    .line 910
    check-cast v15, Lcom/android/contacts/model/dataitem/EmailDataItem;

    .line 911
    .local v15, email:Lcom/android/contacts/model/dataitem/EmailDataItem;
    invoke-static {v15}, Lcom/android/contacts/model/dataitem/ImDataItem;->createFromEmail(Lcom/android/contacts/model/dataitem/EmailDataItem;)Lcom/android/contacts/model/dataitem/ImDataItem;

    move-result-object v24

    .line 913
    .local v24, im:Lcom/android/contacts/model/dataitem/ImDataItem;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v46

    move-object/from16 v0, v24

    move-wide/from16 v1, v46

    invoke-static {v5, v0, v6, v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v25

    .line 915
    .local v25, imEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, v25

    move-object/from16 v1, v24

    invoke-static {v5, v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    .line 916
    invoke-virtual/range {v43 .. v43}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v5

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 917
    iget v5, v3, Lcom/android/contacts/model/dataitem/DataKind;->maxLinesForDisplay:I

    move-object/from16 v0, v25

    iput v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->maxLines:I

    .line 918
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    move-object/from16 v0, v25

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 904
    .end local v15           #email:Lcom/android/contacts/model/dataitem/EmailDataItem;
    .end local v24           #im:Lcom/android/contacts/model/dataitem/ImDataItem;
    .end local v25           #imEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v43           #status:Lcom/android/contacts/util/DataStatus;
    :cond_14
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 920
    :cond_15
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/StructuredPostalDataItem;

    if-eqz v5, :cond_16

    if-eqz v20, :cond_16

    .line 922
    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v5}, Lcom/android/contacts/util/StructuredPostalUtils;->getViewPostalAddressIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 923
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 924
    :cond_16
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/ImDataItem;

    if-eqz v5, :cond_18

    if-eqz v20, :cond_18

    .line 926
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    check-cast v12, Lcom/android/contacts/model/dataitem/ImDataItem;

    .end local v12           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    invoke-static {v5, v8, v12}, Lcom/android/contacts/detail/ContactDetailFragment;->buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V

    .line 929
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getStatuses()Lcom/google/common/collect/ImmutableMap;

    move-result-object v5

    iget-wide v6, v8, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/common/collect/ImmutableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lcom/android/contacts/util/DataStatus;

    .line 930
    .restart local v43       #status:Lcom/android/contacts/util/DataStatus;
    if-eqz v43, :cond_17

    .line 931
    invoke-virtual/range {v43 .. v43}, Lcom/android/contacts/util/DataStatus;->getPresence()I

    move-result v5

    invoke-virtual {v8, v5}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->setPresence(I)V

    .line 933
    :cond_17
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 934
    .end local v43           #status:Lcom/android/contacts/util/DataStatus;
    .restart local v12       #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    :cond_18
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/OrganizationDataItem;

    if-nez v5, :cond_3

    .line 937
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/NicknameDataItem;

    if-eqz v5, :cond_1b

    if-eqz v20, :cond_1b

    .line 939
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v5

    cmp-long v5, v5, v37

    if-nez v5, :cond_19

    const/16 v27, 0x1

    .line 942
    .local v27, isNameRawContact:Z
    :goto_7
    if-eqz v27, :cond_1a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getDisplayNameSource()I

    move-result v5

    const/16 v6, 0x23

    if-ne v5, v6, :cond_1a

    const/4 v13, 0x1

    .line 946
    .local v13, duplicatesTitle:Z
    :goto_8
    if-nez v13, :cond_3

    .line 947
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 948
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 939
    .end local v13           #duplicatesTitle:Z
    .end local v27           #isNameRawContact:Z
    :cond_19
    const/16 v27, 0x0

    goto :goto_7

    .line 942
    .restart local v27       #isNameRawContact:Z
    :cond_1a
    const/4 v13, 0x0

    goto :goto_8

    .line 950
    .end local v27           #isNameRawContact:Z
    :cond_1b
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/NoteDataItem;

    if-eqz v5, :cond_1c

    if-eqz v20, :cond_1c

    .line 952
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 953
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 954
    :cond_1c
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/WebsiteDataItem;

    if-eqz v5, :cond_1d

    if-eqz v20, :cond_1d

    .line 956
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 958
    :try_start_0
    new-instance v45, Landroid/net/WebAddress;

    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v45

    invoke-direct {v0, v5}, Landroid/net/WebAddress;-><init>(Ljava/lang/String;)V

    .line 959
    .local v45, webAddress:Landroid/net/WebAddress;
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual/range {v45 .. v45}, Landroid/net/WebAddress;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;
    :try_end_0
    .catch Landroid/net/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 964
    .end local v45           #webAddress:Landroid/net/WebAddress;
    :goto_9
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 961
    :catch_0
    move-exception v14

    .line 962
    .local v14, e:Landroid/net/ParseException;
    const-string v5, "ContactDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t parse website: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    .line 965
    .end local v14           #e:Landroid/net/ParseException;
    :cond_1d
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/SipAddressDataItem;

    if-eqz v5, :cond_1f

    if-eqz v20, :cond_1f

    .line 967
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 968
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mHasSip:Z

    if-eqz v5, :cond_1e

    .line 969
    const-string v5, "sip"

    iget-object v6, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 974
    :goto_a
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 972
    :cond_1e
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto :goto_a

    .line 981
    :cond_1f
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/EventDataItem;

    if-eqz v5, :cond_20

    if-eqz v20, :cond_20

    .line 982
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v6, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/contacts/util/DateUtils;->formatDate(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 983
    const/4 v5, 0x0

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    .line 984
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 985
    :cond_20
    instance-of v5, v12, Lcom/android/contacts/model/dataitem/RelationDataItem;

    if-eqz v5, :cond_21

    if-eqz v20, :cond_21

    .line 986
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.SEARCH"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 987
    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v6, "query"

    iget-object v7, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 988
    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    const-string v6, "vnd.android.cursor.dir/contact"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 989
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 996
    :cond_21
    if-eqz v30, :cond_24

    move-object/from16 v0, v30

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_24

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    const-string v6, "ExtenstionForRCS"

    invoke-virtual {v5, v6}, Lcom/android/contacts/ext/ContactDetailExtension;->checkPluginSupport(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 1000
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "data5"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1001
    .local v24, im:I
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v5

    const-string v6, "data6"

    invoke-virtual {v5, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 1002
    .local v16, ft:I
    const-string v5, "ContactDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "im,ft : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v24

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    const-string v6, "ExtenstionForRCS"

    move/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/contacts/ext/ContactDetailExtension;->getExtentionIntent(IILjava/lang/String;)Landroid/content/Intent;

    move-result-object v26

    .line 1005
    .local v26, intent:Landroid/content/Intent;
    if-eqz v26, :cond_23

    .line 1006
    const/16 v31, 0x0

    .line 1007
    .local v31, name:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v5, :cond_22

    .line 1008
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v31

    .line 1010
    :cond_22
    const-string v5, "rcs_display_name"

    move-object/from16 v0, v26

    move-object/from16 v1, v31

    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1011
    const-string v5, "rcs_phone_number"

    iget-object v6, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, v26

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1012
    const-string v5, "ContactDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "entry.data : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | name :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, v31

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " | mContactData : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1014
    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    if-eqz v5, :cond_23

    .line 1015
    move-object/from16 v0, v26

    iput-object v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1018
    .end local v31           #name:Ljava/lang/String;
    :cond_23
    sget-object v5, Lcom/android/contacts/detail/ContactDetailFragment;->mExtentionEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1021
    .end local v16           #ft:I
    .end local v24           #im:I
    .end local v26           #intent:Landroid/content/Intent;
    :cond_24
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    const-string v6, "ExtensionForSNS"

    const-string v7, "ExtensionForSNS"

    invoke-virtual {v5, v4, v6, v7}, Lcom/android/contacts/ext/ContactDetailExtension;->isMimeTypeSupported(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    if-eqz v20, :cond_25

    .line 1028
    invoke-virtual/range {v35 .. v35}, Lcom/android/contacts/model/RawContact;->getValues()Landroid/content/ContentValues;

    move-result-object v6

    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    move-object/from16 v5, p0

    move-object v10, v3

    invoke-direct/range {v5 .. v12}, Lcom/android/contacts/detail/ContactDetailFragment;->buildSNSEntity(Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/dataitem/DataKind;Ljava/lang/String;Lcom/android/contacts/model/dataitem/DataItem;)V

    goto/16 :goto_1

    .line 1038
    :cond_25
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1039
    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    iget-object v6, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    iget-object v7, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1041
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->buildDataString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1043
    iget-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1046
    invoke-virtual {v12}, Lcom/android/contacts/model/dataitem/DataItem;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v44

    .line 1047
    .local v44, type:Lcom/android/contacts/model/account/AccountType;
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v44

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 1048
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v44

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Ljava/util/List;

    .line 1049
    .local v29, listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v29

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1052
    .end local v29           #listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    :cond_26
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1053
    .restart local v29       #listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    move-object/from16 v0, v29

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1054
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mOtherEntriesMap:Ljava/util/Map;

    move-object/from16 v0, v44

    move-object/from16 v1, v29

    invoke-interface {v5, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1061
    .end local v3           #kind:Lcom/android/contacts/model/dataitem/DataKind;
    .end local v4           #mimeType:Ljava/lang/String;
    .end local v8           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v9           #type1:Lcom/android/contacts/model/account/AccountType;
    .end local v11           #accountType:Ljava/lang/String;
    .end local v12           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v20           #hasData:Z
    .end local v23           #i$:Ljava/util/Iterator;
    .end local v28           #isSuperPrimary:Z
    .end local v29           #listEntries:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    .end local v30           #mExtentionMimeType:Ljava/lang/String;
    .end local v34           #pluginStatus:Z
    .end local v35           #rawContact:Lcom/android/contacts/model/RawContact;
    .end local v37           #rawContactId:J
    .end local v39           #result:Z
    .end local v44           #type:Lcom/android/contacts/model/account/AccountType;
    :cond_27
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupMemberShipName:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1064
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2b

    .line 1065
    new-instance v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v8}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1066
    .restart local v8       #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-static/range {v19 .. v19}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1067
    new-instance v40, Ljava/lang/StringBuilder;

    invoke-direct/range {v40 .. v40}, Ljava/lang/StringBuilder;-><init>()V

    .line 1068
    .local v40, sb:Ljava/lang/StringBuilder;
    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v41

    .line 1069
    .local v41, size:I
    const/16 v21, 0x0

    .local v21, i:I
    :goto_b
    move/from16 v0, v21

    move/from16 v1, v41

    if-ge v0, v1, :cond_29

    .line 1070
    if-eqz v21, :cond_28

    .line 1071
    const-string v5, ", "

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1073
    :cond_28
    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v40

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1075
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupMemberShipName:Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1069
    add-int/lit8 v21, v21, 0x1

    goto :goto_b

    .line 1078
    :cond_29
    const-string v5, "mimetype"

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1079
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c020a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1082
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v5

    invoke-virtual {v5}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v5

    invoke-virtual/range {v40 .. v40}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ExtensionForOP01"

    invoke-virtual {v5, v6, v7}, Lcom/android/contacts/ext/ContactDetailExtension;->setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1085
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1099
    .end local v8           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v21           #i:I
    .end local v40           #sb:Ljava/lang/StringBuilder;
    .end local v41           #size:I
    :cond_2a
    :goto_c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mInsertedSimCount:I

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1100
    new-instance v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v8}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1101
    .restart local v8       #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v5, "ipCallStatic"

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1102
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00c6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1103
    const v5, 0x7f020076

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionIcon:I

    .line 1104
    const v5, 0x7f0c020a

    iput v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryActionDescription:I

    .line 1106
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->setIpCallNumbersForSelect(Ljava/util/ArrayList;)V

    .line 1107
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1087
    .end local v8           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_2b
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getIndicate()I

    move-result v5

    if-ltz v5, :cond_2c

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getSlot()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/contacts/simcontact/SimCardUtils;->isSimUsimType(I)Z

    move-result v5

    if-eqz v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->getSlot()I

    move-result v5

    invoke-static {v5}, Lcom/mediatek/contacts/util/ContactsGroupUtils;->getUsimMaxGrpCount(I)I

    move-result v5

    if-lez v5, :cond_2a

    :cond_2c
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->isInternationDialNumber()Z

    move-result v5

    if-nez v5, :cond_2a

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v5}, Lcom/android/contacts/model/Contact;->isUserProfile()Z

    move-result v5

    if-nez v5, :cond_2a

    invoke-static/range {v36 .. v36}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2a

    .line 1092
    new-instance v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v8}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 1093
    .restart local v8       #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v5, "mimetype"

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1094
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c020a

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1095
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v6, 0x7f0c00c2

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 1096
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_c
.end method

.method public static buildImActions(Landroid/content/Context;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/dataitem/ImDataItem;)V
    .locals 11
    .parameter "context"
    .parameter "entry"
    .parameter "im"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v10, 0x0

    const/4 v7, 0x5

    .line 1393
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->isCreatedFromEmail()Z

    move-result v5

    .line 1395
    .local v5, isEmail:Z
    if-nez v5, :cond_1

    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->isProtocolValid()Z

    move-result v8

    if-nez v8, :cond_1

    .line 1456
    :cond_0
    :goto_0
    return-void

    .line 1399
    :cond_1
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getData()Ljava/lang/String;

    move-result-object v2

    .line 1400
    .local v2, data:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 1404
    if-eqz v5, :cond_2

    move v6, v7

    .line 1406
    .local v6, protocol:I
    :goto_1
    if-ne v6, v7, :cond_5

    .line 1407
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getChatCapability()I

    move-result v1

    .line 1408
    .local v1, chatCapability:I
    iput v1, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->chatCapability:I

    .line 1409
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-static {v8, v7, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    iput-object v8, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1416
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v8

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-static {v9, v7, v10}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v9, "ExtensionForOP01"

    invoke-virtual {v8, v7, v9}, Lcom/android/contacts/ext/ContactDetailExtension;->setSPChar(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 1425
    and-int/lit8 v7, v1, 0x4

    if-eqz v7, :cond_3

    .line 1426
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xmpp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1428
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xmpp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?call"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1404
    .end local v1           #chatCapability:I
    .end local v6           #protocol:I
    :cond_2
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getProtocol()Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_1

    .line 1430
    .restart local v1       #chatCapability:I
    .restart local v6       #protocol:I
    :cond_3
    and-int/lit8 v7, v1, 0x1

    if-eqz v7, :cond_4

    .line 1432
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xmpp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 1434
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xmpp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?call"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->secondaryIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1437
    :cond_4
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "xmpp:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "?message"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 1442
    .end local v1           #chatCapability:I
    :cond_5
    invoke-virtual {p2}, Lcom/android/contacts/model/dataitem/ImDataItem;->getCustomProtocol()Ljava/lang/String;

    move-result-object v3

    .line 1444
    .local v3, host:Ljava/lang/String;
    const/4 v7, -0x1

    if-eq v6, v7, :cond_6

    .line 1446
    invoke-static {v6}, Lcom/android/contacts/ContactsUtils;->lookupProviderNameFromId(I)Ljava/lang/String;

    move-result-object v3

    .line 1449
    :cond_6
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1450
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1451
    .local v0, authority:Ljava/lang/String;
    new-instance v7, Landroid/net/Uri$Builder;

    invoke-direct {v7}, Landroid/net/Uri$Builder;-><init>()V

    const-string v8, "imto"

    invoke-virtual {v7, v8}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    .line 1453
    .local v4, imUri:Landroid/net/Uri;
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.SENDTO"

    invoke-direct {v7, v8, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iput-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private buildSNSEntity(Landroid/content/ContentValues;Landroid/content/ContentValues;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Lcom/android/contacts/model/account/AccountType;Lcom/android/contacts/model/dataitem/DataKind;Ljava/lang/String;Lcom/android/contacts/model/dataitem/DataItem;)V
    .locals 16
    .parameter "entValues"
    .parameter "entryValues"
    .parameter "entry"
    .parameter "type"
    .parameter "kind"
    .parameter "accountType"
    .parameter "dataItem"

    .prologue
    .line 4655
    const-string v12, "_id"

    move-object/from16 v0, p2

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 4656
    .local v4, dataId:J
    const-string v12, "sourceid"

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4658
    .local v8, uid:Ljava/lang/String;
    const-string v12, "ContactDetailFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "This is a SNS type "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p6

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4660
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 4661
    .local v3, data:Landroid/os/Bundle;
    const-string v12, "account_type"

    move-object/from16 v0, p6

    invoke-virtual {v3, v12, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4662
    const-string v12, "user_id"

    invoke-virtual {v3, v12, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4663
    if-eqz p4, :cond_0

    .line 4664
    const-string v12, "ContactDetailFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add resPackageName"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    iget-object v14, v0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4665
    const-string v12, "ContactDetailFragment"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "add iconRes"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p4

    iget v14, v0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4666
    const-string v12, "res_package_name"

    move-object/from16 v0, p4

    iget-object v13, v0, Lcom/android/contacts/model/account/AccountType;->resourcePackageName:Ljava/lang/String;

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4667
    const-string v12, "res_package_icon"

    move-object/from16 v0, p4

    iget v13, v0, Lcom/android/contacts/model/account/AccountType;->iconRes:I

    invoke-virtual {v3, v12, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4669
    :cond_0
    move-object/from16 v0, p3

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mData:Landroid/os/Bundle;
    invoke-static {v0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$2102(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 4671
    new-instance v6, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v6, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4672
    .local v6, intent:Landroid/content/Intent;
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v6, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4673
    move-object/from16 v0, p3

    iput-object v6, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 4675
    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    if-eqz v12, :cond_1

    .line 4676
    move-object/from16 v0, p5

    iget-object v12, v0, Lcom/android/contacts/model/dataitem/DataKind;->actionBody:Lcom/android/contacts/model/account/AccountType$StringInflater;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p2

    invoke-interface {v12, v13, v0}, Lcom/android/contacts/model/account/AccountType$StringInflater;->inflateUsing(Landroid/content/Context;Landroid/content/ContentValues;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4678
    .local v2, body:Ljava/lang/CharSequence;
    if-nez v2, :cond_4

    const/4 v12, 0x0

    :goto_0
    move-object/from16 v0, p3

    iput-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4680
    .end local v2           #body:Ljava/lang/CharSequence;
    :cond_1
    sget-object v12, Lcom/android/contacts/detail/ContactDetailFragment;->mSNSEntries:Ljava/util/ArrayList;

    move-object/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4682
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v12}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    .line 4683
    .local v7, status:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/util/StreamItemEntry;>;"
    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v12

    if-lez v12, :cond_5

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/contacts/util/StreamItemEntry;

    move-object v9, v12

    .line 4684
    .local v9, update:Lcom/android/contacts/util/StreamItemEntry;
    :goto_1
    const/4 v10, 0x0

    .line 4685
    .local v10, updateEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz v9, :cond_3

    .line 4686
    const-string v12, "ContactDetailFragment"

    const-string v13, "This is a SNS type add status "

    invoke-static {v12, v13}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4687
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v13}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v14}, Lcom/android/contacts/model/Contact;->getDirectoryId()J

    move-result-wide v14

    move-object/from16 v0, p7

    invoke-static {v12, v0, v13, v14, v15}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->fromValues(Landroid/content/Context;Lcom/android/contacts/model/dataitem/DataItem;ZJ)Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v10

    .line 4689
    invoke-virtual {v9}, Lcom/android/contacts/util/StreamItemEntry;->getText()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4690
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v9, v12}, Lcom/android/contacts/util/ContactBadgeUtil;->getSocialDate(Lcom/android/contacts/util/StreamItemEntry;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4692
    .local v1, attribute:Ljava/lang/CharSequence;
    if-eqz v1, :cond_2

    .line 4693
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    iput-object v12, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    .line 4695
    :cond_2
    const/4 v12, 0x1

    #setter for: Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsSNSStatus:Z
    invoke-static {v10, v12}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->access$4402(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;Z)Z

    .line 4696
    new-instance v11, Landroid/content/Intent;

    const-string v12, "android.intent.action.VIEW"

    invoke-direct {v11, v12}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4697
    .local v11, updateIntent:Landroid/content/Intent;
    move-object/from16 v0, p3

    iget-object v12, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->uri:Landroid/net/Uri;

    move-object/from16 v0, p3

    iget-object v13, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v11, v12, v13}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 4698
    iput-object v11, v10, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    .line 4699
    sget-object v12, Lcom/android/contacts/detail/ContactDetailFragment;->mSNSEntries:Ljava/util/ArrayList;

    invoke-virtual {v12, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4701
    .end local v1           #attribute:Ljava/lang/CharSequence;
    .end local v11           #updateIntent:Landroid/content/Intent;
    :cond_3
    return-void

    .line 4678
    .end local v7           #status:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/util/StreamItemEntry;>;"
    .end local v9           #update:Lcom/android/contacts/util/StreamItemEntry;
    .end local v10           #updateEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .restart local v2       #body:Ljava/lang/CharSequence;
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 4683
    .end local v2           #body:Ljava/lang/CharSequence;
    .restart local v7       #status:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/util/StreamItemEntry;>;"
    :cond_5
    const/4 v9, 0x0

    goto :goto_1
.end method

.method private clearDefaultContactMethod(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 3029
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createClearPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 3030
    .local v0, clearIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3031
    return-void
.end method

.method private configureQuickFix()V
    .locals 6

    .prologue
    .line 673
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 675
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPotentialQuickFixes:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .local v0, arr$:[Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 676
    .local v1, fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->isApplicable()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 677
    iput-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    .line 683
    .end local v1           #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    if-nez v4, :cond_2

    .line 684
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 689
    :goto_1
    return-void

    .line 675
    .restart local v1       #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 686
    .end local v1           #fix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;
    :cond_2
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 687
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFix:Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$QuickFix;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private copyToClipboard(I)V
    .locals 5
    .parameter "viewEntryPosition"

    .prologue
    .line 3035
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3036
    .local v0, detailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3039
    .local v1, textToCopy:Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3042
    :goto_0
    return-void

    .line 3041
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->typeString:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v2, v3, v1, v4}, Lcom/android/contacts/util/ClipboardUtils;->copyText(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    goto :goto_0
.end method

.method private copyToDialer(I)V
    .locals 5
    .parameter "viewEntryPosition"

    .prologue
    .line 4030
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4031
    .local v0, detailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 4032
    .local v1, textToCopy:Ljava/lang/CharSequence;
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[copyToDialer] textToCopy : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4033
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.DIAL"

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/contacts/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v2}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4035
    return-void
.end method

.method private createCopy(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 6
    .parameter "account"

    .prologue
    .line 2796
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-eqz v3, :cond_2

    .line 2804
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v2

    .line 2805
    .local v2, values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ContentValues;

    .line 2806
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "vnd.android.cursor.item/name"

    const-string v4, "mimetype"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2807
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before change values :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2808
    const-string v3, "data1"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data3"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "data2"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 2810
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Before change values :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Landroid/content/ContentValues;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2814
    .end local v0           #cv:Landroid/content/ContentValues;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getContentValues()Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v3, v4, p1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onCreateRawContactRequested(Ljava/util/ArrayList;Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 2816
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #values:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentValues;>;"
    :cond_2
    return-void
.end method

.method private dialIpCallToPhone(Ljava/lang/String;)V
    .locals 4
    .parameter "phoneNumber"

    .prologue
    .line 4238
    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4239
    .local v0, callUri:Landroid/net/Uri;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4240
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4241
    const-string v2, "com.android.phone.extra.ip"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4242
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 4243
    return-void
.end method

.method private dialingWithCountryCode(I)V
    .locals 6
    .parameter "position"

    .prologue
    .line 2986
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2987
    .local v0, detailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CALL_PRIVILEGED"

    const-string v3, "tel"

    iget-object v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2989
    .local v1, intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2990
    const-string v2, "com.android.phone.extra.international"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2991
    const-string v2, "com.android.phone.extra.original"

    iget v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->simId:I

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 2992
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-interface {v2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$Listener;->onItemClicked(Landroid/content/Intent;)V

    .line 2993
    return-void
.end method

.method private dismissGroupDialogIfShown()V
    .locals 4

    .prologue
    .line 4719
    const-string v2, "ContactDetailFragment"

    const-string v3, "[dismissGroupDialogIfShown]"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4721
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "groupList"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    .line 4722
    .local v1, prevGroupListDialog:Landroid/app/Fragment;
    if-eqz v1, :cond_0

    instance-of v2, v1, Lcom/mediatek/contacts/detail/GroupListDialog;

    if-eqz v2, :cond_0

    .line 4723
    const-string v2, "ContactDetailFragment"

    const-string v3, "[dismissGroupDialogIfShown] dismiss grouplist dialog!"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4724
    check-cast v1, Lcom/mediatek/contacts/detail/GroupListDialog;

    .end local v1           #prevGroupListDialog:Landroid/app/Fragment;
    invoke-virtual {v1}, Landroid/app/DialogFragment;->dismiss()V

    .line 4728
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    const-string v3, "createGroupDialog"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 4730
    .local v0, prevCreateGroupDialog:Landroid/app/Fragment;
    if-eqz v0, :cond_1

    instance-of v2, v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    if-eqz v2, :cond_1

    .line 4731
    const-string v2, "ContactDetailFragment"

    const-string v3, "[dismissGroupDialogIfShown] dismiss groupcreation dialog!"

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4732
    check-cast v0, Lcom/android/contacts/interactions/GroupCreationDialogFragment;

    .end local v0           #prevCreateGroupDialog:Landroid/app/Fragment;
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 4735
    :cond_1
    return-void
.end method

.method private dismissPopupIfShown()V
    .locals 1

    .prologue
    .line 1484
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1485
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->dismiss()V

    .line 1487
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1488
    return-void
.end method

.method private flattenList(Ljava/util/ArrayList;)V
    .locals 13
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    const/4 v1, 0x0

    const/4 v5, 0x1

    const/4 v2, 0x0

    .line 1306
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1309
    .local v7, count:I
    if-lez v7, :cond_1

    .line 1310
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-object v10, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->kind:Ljava/lang/String;

    .line 1314
    .local v10, kind:Ljava/lang/String;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1315
    .local v8, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v11, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 1317
    .local v11, mimeType:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    iget-object v3, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mAccountType:Ljava/lang/String;

    const-string v4, "ExtensionForAAS"

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v0

    const-string v3, "ExtensionForAAS"

    invoke-virtual {v0, v11, v3}, Lcom/android/contacts/ext/ContactAccountExtension;->isPhone(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1322
    iget-boolean v0, v8, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mIsAnr:Z

    if-eqz v0, :cond_3

    .line 1323
    iget-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsPhoneEntriesNull:Z

    if-eqz v0, :cond_0

    .line 1324
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1326
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v0

    const-string v6, "ExtensionForAAS"

    move v3, v2

    move v4, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactDetailExtension;->repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1328
    .local v12, separatorTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;

    invoke-direct {v1, v12}, Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    .end local v8           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v10           #kind:Ljava/lang/String;
    .end local v11           #mimeType:Ljava/lang/String;
    .end local v12           #separatorTitle:Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v7, :cond_6

    .line 1345
    if-eqz v9, :cond_2

    .line 1346
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$SeparatorViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 1330
    .end local v9           #i:I
    .restart local v8       #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .restart local v10       #kind:Ljava/lang/String;
    .restart local v11       #mimeType:Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_2
    iput-boolean v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsPhoneEntriesNull:Z

    .line 1331
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v0

    const-string v6, "ExtensionForAAS"

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v6}, Lcom/android/contacts/ext/ContactDetailExtension;->repChar(Ljava/lang/String;CCCCLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1333
    .restart local v12       #separatorTitle:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;

    invoke-direct {v1, v12}, Lcom/android/contacts/detail/ContactDetailFragment$KindSubTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .end local v12           #separatorTitle:Ljava/lang/String;
    :cond_4
    move v5, v2

    .line 1330
    goto :goto_2

    .line 1337
    :cond_5
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/contacts/detail/ContactDetailFragment$KindTitleViewEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1352
    .end local v8           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v10           #kind:Ljava/lang/String;
    .end local v11           #mimeType:Ljava/lang/String;
    .restart local v9       #i:I
    :cond_6
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 1353
    return-void
.end method

.method private getAccountInfoForGroup()V
    .locals 4

    .prologue
    .line 4274
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/RawContactDelta;

    .line 4276
    .local v0, rawContactEntityDelta:Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v0}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v1

    .line 4277
    .local v1, values:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v2, "account_name"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountName:Ljava/lang/String;

    .line 4278
    const-string v2, "account_type"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountType:Ljava/lang/String;

    .line 4279
    const-string v2, "data_set"

    invoke-virtual {v1, v2}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountDataSet:Ljava/lang/String;

    .line 4280
    return-void
.end method

.method private getAccountTypeForGroup()Ljava/lang/String;
    .locals 5

    .prologue
    .line 4283
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->createRawContactDeltaList()Lcom/android/contacts/model/RawContactDeltaList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/RawContactDelta;

    .line 4285
    .local v1, rawContactEntityDelta:Lcom/android/contacts/model/RawContactDelta;
    invoke-virtual {v1}, Lcom/android/contacts/model/RawContactDelta;->getValues()Lcom/android/contacts/model/RawContactDelta$ValuesDelta;

    move-result-object v2

    .line 4286
    .local v2, values:Lcom/android/contacts/model/RawContactDelta$ValuesDelta;
    const-string v3, "account_type"

    invoke-virtual {v2, v3}, Lcom/android/contacts/model/RawContactDelta$ValuesDelta;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4287
    .local v0, accountType:Ljava/lang/String;
    return-object v0
.end method

.method private getDataList()Ljava/util/List;
    .locals 10
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
    .line 4080
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4081
    .local v2, groupList:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    if-eqz v8, :cond_0

    .line 4082
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    array-length v8, v8

    if-ge v3, v8, :cond_0

    .line 4083
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    aget-object v7, v8, v3

    .line 4084
    .local v7, title:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J

    aget-wide v0, v8, v3

    .line 4085
    .local v0, groupId:J
    const/4 v4, 0x0

    .line 4086
    .local v4, isChecked:Z
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;

    invoke-direct {p0, v0, v1, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->hasMemberShip(JLjava/lang/String;)Z

    move-result v8

    invoke-direct {v5, v0, v1, v7, v8}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    .line 4088
    .local v5, item:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 4089
    .local v6, itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v8, "item"

    invoke-interface {v6, v8, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4090
    const-string v8, "groupTitle"

    invoke-virtual {v5}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->getTitle()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v6, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4091
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4082
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4095
    .end local v0           #groupId:J
    .end local v3           #i:I
    .end local v4           #isChecked:Z
    .end local v5           #item:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    .end local v6           #itemMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v7           #title:Ljava/lang/String;
    :cond_0
    return-object v2
.end method

.method private getDefaultGroupId(Ljava/util/List;)J
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;)J"
        }
    .end annotation

    .prologue
    .local p1, groups:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    const-wide/16 v4, -0x1

    .line 693
    const-wide/16 v0, -0x1

    .line 694
    .local v0, defaultGroupId:J
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/GroupMetaData;

    .line 695
    .local v2, group:Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 697
    cmp-long v6, v0, v4

    if-eqz v6, :cond_2

    move-wide v0, v4

    .line 701
    .end local v0           #defaultGroupId:J
    .end local v2           #group:Lcom/android/contacts/GroupMetaData;
    :cond_1
    return-wide v0

    .line 698
    .restart local v0       #defaultGroupId:J
    .restart local v2       #group:Lcom/android/contacts/GroupMetaData;
    :cond_2
    invoke-virtual {v2}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v0

    goto :goto_0
.end method

.method private getShowingPhoneEntries()V
    .locals 3

    .prologue
    .line 4013
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowingPhoneEntries:Ljava/util/ArrayList;

    .line 4014
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 4015
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowingPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4017
    .end local v0           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_0
    return-void
.end method

.method private handleGroupMembership(Ljava/util/ArrayList;Ljava/util/List;J)V
    .locals 5
    .parameter
    .parameter
    .parameter "groupId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/GroupMetaData;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 1361
    .local p1, groups:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p2, groupMetaData:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/GroupMetaData;>;"
    if-nez p2, :cond_1

    .line 1376
    :cond_0
    :goto_0
    return-void

    .line 1365
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/GroupMetaData;

    .line 1366
    .local v0, group:Lcom/android/contacts/GroupMetaData;
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getGroupId()J

    move-result-wide v3

    cmp-long v3, v3, p3

    if-nez v3, :cond_2

    .line 1367
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isDefaultGroup()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->isFavorites()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1368
    invoke-virtual {v0}, Lcom/android/contacts/GroupMetaData;->getTitle()Ljava/lang/String;

    move-result-object v2

    .line 1369
    .local v2, title:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1370
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private hasMemberShip(JLjava/lang/String;)Z
    .locals 2
    .parameter "groupId"
    .parameter "groupName"

    .prologue
    .line 4107
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    long-to-int v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getCreateNewGroupName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4109
    :cond_0
    const/4 v0, 0x1

    .line 4111
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private importOneSimContact(Ljava/lang/String;ILjava/lang/String;)V
    .locals 12
    .parameter "name"
    .parameter "phoneType"
    .parameter "phoneNumber"

    .prologue
    .line 3782
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 3786
    .local v5, sEmptyContentValues:Landroid/content/ContentValues;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 3787
    .local v4, operationListForSim:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v6, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 3790
    .local v1, builderForSim:Landroid/content/ContentProviderOperation$Builder;
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 3791
    .local v2, contactvalues:Landroid/content/ContentValues;
    const-string v6, "ro.build.characteristics"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3793
    .local v0, ProductCharacteristic:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v6, "tablet"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3794
    const-string v6, "account_name"

    const-string v7, "Tablet"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3798
    :goto_0
    const-string v6, "account_type"

    const-string v7, "Local Phone Account"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3799
    const-string v6, "indicate_phone_or_sim_contact"

    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3801
    invoke-virtual {v1, v2}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 3803
    const-string v6, "aggregation_mode"

    const/4 v7, 0x3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3805
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3807
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 3808
    const-string v6, "raw_contact_id"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3809
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3810
    const-string v6, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3811
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 3812
    const-string v6, "data1"

    invoke-virtual {v1, v6, p3}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3813
    const-string v6, "is_primary"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3818
    :goto_1
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3820
    sget-object v6, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v6}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v1

    .line 3821
    const-string v6, "raw_contact_id"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3822
    const-string v6, "mimetype"

    const-string v7, "vnd.android.cursor.item/name"

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3823
    const-string v6, "data1"

    invoke-virtual {v1, v6, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3824
    invoke-virtual {v1}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3827
    :try_start_0
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "com.android.contacts"

    invoke-virtual {v6, v7, v4}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/contacts/detail/ContactDetailFragment;->startAssociationActivity([Landroid/content/ContentProviderResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3832
    :goto_2
    return-void

    .line 3796
    :cond_0
    const-string v6, "account_name"

    const-string v7, "Phone"

    invoke-virtual {v2, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3815
    :cond_1
    const-string v6, "data1"

    const/4 v7, 0x0

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3816
    const-string v6, "is_primary"

    const/4 v7, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_1

    .line 3829
    :catch_0
    move-exception v3

    .line 3830
    .local v3, e:Ljava/lang/Exception;
    const-string v6, "ContactDetailFragment"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[importOneSimContact]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%s: %s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private importOneUSimContact(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/Set;)V
    .locals 13
    .parameter "name"
    .parameter "phoneType"
    .parameter "phoneNumber"
    .parameter "email"
    .parameter "additional_number"
    .parameter "additional_type"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3677
    .local p7, grpAddIds:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/Long;>;"
    new-instance v6, Landroid/content/ContentValues;

    invoke-direct {v6}, Landroid/content/ContentValues;-><init>()V

    .line 3679
    .local v6, sEmptyContentValues:Landroid/content/ContentValues;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 3680
    .local v5, operationList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    sget-object v7, Landroid/provider/ContactsContract$RawContacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3683
    .local v2, builder:Landroid/content/ContentProviderOperation$Builder;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 3684
    .local v3, contactvalues:Landroid/content/ContentValues;
    const-string v7, "ro.build.characteristics"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3686
    .local v1, ProductCharacteristic:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v7, "tablet"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 3687
    const-string v7, "account_name"

    const-string v8, "Tablet"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3691
    :goto_0
    const-string v7, "account_type"

    const-string v8, "Local Phone Account"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3693
    const-string v7, "indicate_phone_or_sim_contact"

    const/4 v8, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3696
    invoke-virtual {v2, v3}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    .line 3698
    const-string v7, "aggregation_mode"

    const/4 v8, 0x3

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3700
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3702
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3703
    const-string v7, "raw_contact_id"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3704
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3705
    const-string v7, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3706
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 3707
    const-string v7, "data1"

    move-object/from16 v0, p3

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3708
    const-string v7, "is_primary"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3713
    :goto_1
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3715
    if-eqz p1, :cond_0

    .line 3716
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3717
    const-string v7, "raw_contact_id"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3718
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/name"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3719
    const-string v7, "data1"

    invoke-virtual {v2, v7, p1}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3720
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3723
    :cond_0
    invoke-static/range {p4 .. p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 3724
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3725
    const-string v7, "raw_contact_id"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3726
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/email_v2"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3727
    const-string v7, "data2"

    const/4 v8, 0x4

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3728
    const-string v7, "data1"

    move-object/from16 v0, p4

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3729
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3732
    :cond_1
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 3733
    const-string v7, "ContactDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "additionalNumber is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3734
    sget-object v7, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newInsert(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v2

    .line 3735
    const-string v7, "raw_contact_id"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValueBackReference(Ljava/lang/String;I)Landroid/content/ContentProviderOperation$Builder;

    .line 3736
    const-string v7, "mimetype"

    const-string v8, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3737
    const/4 v7, -0x1

    move/from16 v0, p6

    if-le v0, v7, :cond_5

    .line 3738
    const-string v7, "data2"

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3742
    :goto_2
    const-string v7, "data1"

    move-object/from16 v0, p5

    invoke-virtual {v2, v7, v0}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3744
    invoke-virtual {v2}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3763
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "com.android.contacts"

    invoke-virtual {v7, v8, v5}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/contacts/detail/ContactDetailFragment;->startAssociationActivity([Landroid/content/ContentProviderResult;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3769
    :goto_3
    return-void

    .line 3689
    :cond_3
    const-string v7, "account_name"

    const-string v8, "Phone"

    invoke-virtual {v3, v7, v8}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3710
    :cond_4
    const-string v7, "data1"

    const/4 v8, 0x0

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    .line 3711
    const-string v7, "is_primary"

    const/4 v8, 0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto/16 :goto_1

    .line 3740
    :cond_5
    const-string v7, "data2"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/content/ContentProviderOperation$Builder;->withValue(Ljava/lang/String;Ljava/lang/Object;)Landroid/content/ContentProviderOperation$Builder;

    goto :goto_2

    .line 3765
    :catch_0
    move-exception v4

    .line 3766
    .local v4, e:Ljava/lang/Exception;
    const-string v7, "ContactDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[importOneUSimContact]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "%s: %s"

    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-virtual {v4}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3
.end method

.method public static isUnSync(Ljava/lang/String;Landroid/content/ContentValues;)Z
    .locals 2
    .parameter "mimeType"
    .parameter "values"

    .prologue
    .line 3977
    const-string v0, "vnd.android.cursor.item/im"

    if-eq p0, v0, :cond_2

    const-string v0, "vnd.android.cursor.item/phone_v2"

    if-ne p0, v0, :cond_0

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    :cond_0
    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xf

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x11

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x12

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_2

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x13

    if-eq v0, v1, :cond_2

    const-string v0, "vnd.android.cursor.item/email_v2"

    if-ne p0, v0, :cond_1

    const-string v0, "data2"

    invoke-static {p1, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->GetType(Landroid/content/ContentValues;Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    :cond_1
    const-string v0, "vnd.android.cursor.item/contact_event"

    if-ne p0, v0, :cond_3

    .line 3994
    :cond_2
    const-string v0, "ContactDetailFragment"

    const-string v1, "isUnSync(), return true "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3995
    const/4 v0, 0x1

    .line 3997
    :goto_0
    return v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isUniquePhoneNumber()Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 4756
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 4757
    const-string v1, "ContactDetailFragment"

    const-string v3, "[isUniquePhoneNumber]mPhoneEntries is null"

    invoke-static {v1, v3}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    :goto_0
    return v2

    .line 4760
    :cond_0
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4761
    .local v0, currentPhoneEntrySize:I
    if-lez v0, :cond_1

    iget v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInsertedSimCount:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/contacts/util/PhoneCapabilityTester;->isPhone(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 4762
    add-int/lit8 v0, v0, -0x1

    .line 4763
    const-string v3, "ContactDetailFragment"

    const-string v4, "[isUniquePhoneNumber] insert sim card"

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4765
    :cond_1
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[isUniquePhoneNumber] currentPhoneEntrySize:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4766
    if-ne v0, v1, :cond_2

    :goto_1
    move v2, v1

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method private setDefaultContactMethod(J)V
    .locals 2
    .parameter "id"

    .prologue
    .line 3024
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1, p1, p2}, Lcom/android/contacts/ContactSaveService;->createSetSuperPrimaryIntent(Landroid/content/Context;J)Landroid/content/Intent;

    move-result-object v0

    .line 3025
    .local v0, setIntent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 3026
    return-void
.end method

.method private setIpCallNumbersForSelect(Ljava/util/ArrayList;)V
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1115
    .local p1, entries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    .line 1116
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 1117
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 1118
    .local v1, item:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    iget-object v3, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    aput-object v3, v2, v0

    .line 1116
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1121
    .end local v1           #item:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_0
    return-void
.end method

.method private setupFlattenedList()V
    .locals 2

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;

    invoke-direct {v1}, Lcom/android/contacts/detail/ContactDetailFragment$HeaderViewEntry;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1131
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addPhoneticName()V

    .line 1134
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsPhoneEntriesNull:Z

    .line 1135
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1136
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAnrEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1138
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1140
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1141
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNicknameEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1142
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mWebsiteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1144
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->addNetworks()V

    .line 1146
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSipEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1147
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1148
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1149
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1150
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRelationEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1151
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mNoteEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1160
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->mExtentionEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1166
    sget-object v0, Lcom/android/contacts/detail/ContactDetailFragment;->mSNSEntries:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->flattenList(Ljava/util/ArrayList;)V

    .line 1168
    return-void
.end method

.method private showListPopup(Landroid/view/View;Landroid/widget/ListAdapter;Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 3
    .parameter "anchorView"
    .parameter "adapter"
    .parameter "onItemClickListener"

    .prologue
    .line 1463
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    .line 1464
    new-instance v0, Landroid/widget/ListPopupWindow;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    .line 1465
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1466
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 1467
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p2}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1468
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 1472
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$6;

    invoke-direct {v1, p0, p3}, Lcom/android/contacts/detail/ContactDetailFragment$6;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 1480
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPopup:Landroid/widget/ListPopupWindow;

    invoke-virtual {v0}, Landroid/widget/ListPopupWindow;->show()V

    .line 1481
    return-void
.end method


# virtual methods
.method protected bindData()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/16 v12, 0x8

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 538
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    if-nez v7, :cond_1

    .line 666
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 543
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 546
    :cond_2
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-nez v7, :cond_4

    .line 547
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 548
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    .line 549
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 551
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 552
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-eqz v7, :cond_0

    .line 553
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 559
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v10}, Lcom/android/contacts/model/Contact;->getIndicate()I

    move-result v10

    int-to-long v10, v10

    invoke-static {v7, v10, v11}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v6

    .line 560
    .local v6, slotId:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v7

    const-string v10, "ExtensionForAAS"

    invoke-virtual {v7, v6, v10}, Lcom/android/contacts/ext/ContactAccountExtension;->setCurrentSlot(ILjava/lang/String;)V

    .line 563
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getStreamItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableCollection;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_9

    move v7, v8

    :goto_1
    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactHasSocialUpdates:Z

    .line 566
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    if-eqz v7, :cond_5

    .line 571
    iget-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    if-eqz v7, :cond_e

    .line 572
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 573
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    const v10, 0x7f0700a7

    invoke-virtual {v7, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 575
    .local v3, photoView:Landroid/widget/ImageView;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    move v0, v8

    .line 576
    .local v0, expandPhotoOnClick:Z
    :goto_2
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoSetter:Lcom/android/contacts/detail/ContactDetailPhotoSetter;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7, v10, v11, v3, v0}, Lcom/android/contacts/detail/ContactDetailPhotoSetter;->setupContactPhotoForClick(Landroid/content/Context;Lcom/android/contacts/model/Contact;Landroid/widget/ImageView;Z)Landroid/view/View$OnClickListener;

    move-result-object v2

    .line 578
    .local v2, listener:Landroid/view/View$OnClickListener;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    if-eqz v7, :cond_5

    .line 579
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 587
    const-string v7, "ContactDetailFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "[bindData] mContactData.getIndicate() : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v11}, Lcom/android/contacts/model/Contact;->getIndicate()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getIndicate()I

    move-result v7

    if-ltz v7, :cond_b

    .line 592
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSimPhotoClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 593
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    const v10, 0x106000d

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 608
    .end local v0           #expandPhotoOnClick:Z
    .end local v2           #listener:Landroid/view/View$OnClickListener;
    .end local v3           #photoView:Landroid/widget/ImageView;
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->buildEntries()V

    .line 611
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v7

    const-string v10, "ExtensionForOP01"

    invoke-virtual {v7, v10}, Lcom/android/contacts/ext/ContactDetailExtension;->collapsePhoneEntries(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 613
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhoneEntries:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 616
    :cond_6
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getShowingPhoneEntries()V

    .line 618
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSmsEntries:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 619
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 620
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPostalEntries:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 621
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mImEntries:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 622
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEventEntries:Ljava/util/ArrayList;

    invoke-static {v7}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 628
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isUniquePhoneNumber()Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 630
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmailEntries:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ne v7, v8, :cond_f

    move v7, v8

    :goto_4
    iput-boolean v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    .line 633
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->setupFlattenedList()V

    .line 635
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    if-nez v7, :cond_7

    .line 636
    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-direct {v7, p0, v13}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    iput-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    .line 637
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v7, v10}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 641
    :cond_7
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    if-eqz v7, :cond_8

    .line 642
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    invoke-virtual {v7, v10}, Landroid/widget/AbsListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 643
    iput-object v13, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 646
    :cond_8
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v7}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 648
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/widget/AdapterView;->setEmptyView(Landroid/view/View;)V

    .line 650
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->configureQuickFix()V

    .line 652
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 655
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactId:J

    .line 656
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    .line 657
    .local v5, rawContacts:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v7

    if-le v7, v8, :cond_0

    .line 658
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v7

    new-array v7, v7, [J

    iput-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->rawContactIds:[J

    .line 659
    const/4 v1, 0x0

    .local v1, i:I
    :goto_5
    invoke-virtual {v5}, Lcom/google/common/collect/ImmutableCollection;->size()I

    move-result v7

    if-ge v1, v7, :cond_0

    .line 660
    invoke-virtual {v5, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/contacts/model/RawContact;

    .line 661
    .local v4, rawContact:Lcom/android/contacts/model/RawContact;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->rawContactIds:[J

    invoke-virtual {v4}, Lcom/android/contacts/model/RawContact;->getId()Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v7, v1

    .line 659
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .end local v1           #i:I
    .end local v4           #rawContact:Lcom/android/contacts/model/RawContact;
    .end local v5           #rawContacts:Lcom/google/common/collect/ImmutableList;,"Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/model/RawContact;>;"
    :cond_9
    move v7, v9

    .line 563
    goto/16 :goto_1

    .restart local v3       #photoView:Landroid/widget/ImageView;
    :cond_a
    move v0, v9

    .line 575
    goto/16 :goto_2

    .line 595
    .restart local v0       #expandPhotoOnClick:Z
    .restart local v2       #listener:Landroid/view/View$OnClickListener;
    :cond_b
    if-nez v0, :cond_c

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    iget-object v10, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v7, v10}, Lcom/android/contacts/model/Contact;->isWritableContact(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    .line 596
    :cond_c
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v7, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_3

    .line 598
    :cond_d
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setClickable(Z)V

    goto/16 :goto_3

    .line 603
    .end local v0           #expandPhotoOnClick:Z
    .end local v2           #listener:Landroid/view/View$OnClickListener;
    .end local v3           #photoView:Landroid/widget/ImageView;
    :cond_e
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    :cond_f
    move v7, v9

    .line 630
    goto/16 :goto_4
.end method

.method public changeDefaultSimList()V
    .locals 8

    .prologue
    .line 4585
    invoke-static {}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 4587
    .local v2, defaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v6

    const-string v7, "ExtensionForOP09"

    invoke-virtual {v6, v2, v7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4590
    .local v0, callDefault:Landroid/graphics/drawable/Drawable;
    invoke-static {}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getInstance()Lcom/mediatek/contacts/util/ContactsDetailCallColor;

    move-result-object v6

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/mediatek/contacts/util/ContactsDetailCallColor;->getNotDefaultSiminfo(Landroid/content/ContentResolver;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    .line 4592
    .local v5, notDefaultSimInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v6

    const-string v7, "ExtensionForOP09"

    invoke-virtual {v6, v5, v7}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->getDrawableCorG(Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4595
    .local v1, callNotDefault:Landroid/graphics/drawable/Drawable;
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->callViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, iterator:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4596
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;

    .line 4597
    .local v3, item:Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;
    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->getFirstCallButton()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4598
    invoke-virtual {v3}, Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;->getSecondCallButton()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 4601
    .end local v3           #item:Lcom/android/contacts/detail/ContactDetailFragment$CallCorGView;
    :cond_0
    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v6}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 4602
    return-void
.end method

.method public configDetailGroupList()Landroid/view/View;
    .locals 11

    .prologue
    .line 4334
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    const v8, 0x7f040026

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDetailGroupList:Landroid/view/View;

    .line 4336
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDetailGroupList:Landroid/view/View;

    const v8, 0x7f0700c5

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    .line 4339
    .local v2, groupListView:Landroid/widget/ListView;
    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f04007b

    invoke-direct {v7, p0, v8, v9}, Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/Context;I)V

    iput-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    .line 4341
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    if-eqz v7, :cond_1

    .line 4342
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    array-length v7, v7

    if-ge v3, v7, :cond_0

    .line 4343
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    aget-object v6, v7, v3

    .line 4344
    .local v6, title:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J

    aget-wide v0, v7, v3

    .line 4345
    .local v0, groupId:J
    new-instance v4, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;

    invoke-direct {p0, v0, v1, v6}, Lcom/android/contacts/detail/ContactDetailFragment;->hasMemberShip(JLjava/lang/String;)Z

    move-result v7

    invoke-direct {v4, v0, v1, v6, v7}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;-><init>(JLjava/lang/String;Z)V

    .line 4347
    .local v4, item:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    invoke-virtual {v7, v4}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 4342
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4349
    .end local v0           #groupId:J
    .end local v4           #item:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    .end local v6           #title:Ljava/lang/String;
    :cond_0
    new-instance v5, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const v8, 0x7f0c02b1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v5, v7, v8}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;-><init>(Ljava/lang/String;Z)V

    .line 4351
    .local v5, itemCreate:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    invoke-virtual {v7, v5}, Landroid/widget/ArrayAdapter;->add(Ljava/lang/Object;)V

    .line 4354
    .end local v3           #i:I
    .end local v5           #itemCreate:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    :cond_1
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    invoke-virtual {v2, v7}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 4355
    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$10;

    invoke-direct {v7, p0}, Lcom/android/contacts/detail/ContactDetailFragment$10;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v2, v7}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 4388
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDetailGroupList:Landroid/view/View;

    return-object v7
.end method

.method public configSelectedGroupItemInit()V
    .locals 1

    .prologue
    .line 4270
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactGroupMemberShip:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    .line 4271
    return-void
.end method

.method public countSelectedGroupItem()V
    .locals 6

    .prologue
    .line 4527
    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isGroupItemChecked:Z

    if-nez v3, :cond_1

    .line 4528
    const-string v3, "ContactDetailFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[countSelectedGroupItem] Group item is checked? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isGroupItemChecked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Not to recount group item."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4543
    :cond_0
    return-void

    .line 4533
    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    .line 4534
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsNameList:Ljava/util/ArrayList;

    .line 4535
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    invoke-virtual {v3}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    .line 4536
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 4537
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupListAdapter:Lcom/android/contacts/detail/ContactDetailFragment$GroupMembershipAdapter;

    invoke-virtual {v3, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;

    .line 4538
    .local v2, item:Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;
    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->isChecked()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4539
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->getGroupId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4540
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsNameList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/android/contacts/detail/ContactDetailFragment$GroupSelectionItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4536
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public createNewGroup()V
    .locals 9

    .prologue
    .line 4396
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissGroupDialogIfShown()V

    .line 4398
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getIndicate()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSlotIdBySimId(I)I

    move-result v8

    .line 4400
    .local v8, slotId:I
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountDataSet:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v4}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v6}, Lcom/android/contacts/model/Contact;->getSimIndex()I

    move-result v6

    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$11;

    invoke-direct {v7, p0}, Lcom/android/contacts/detail/ContactDetailFragment$11;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-static/range {v0 .. v8}, Lcom/android/contacts/interactions/GroupCreationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JILcom/android/contacts/interactions/GroupCreationDialogFragment$OnGroupCreatedListener;I)V

    .line 4414
    return-void
.end method

.method public dialIpCall()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 4213
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 4215
    const-string v2, "ContactDetailFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ip call number === "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    aget-object v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4216
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    aget-object v2, v2, v5

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->dialIpCallToPhone(Ljava/lang/String;)V

    .line 4235
    :goto_0
    return-void

    .line 4219
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4220
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0c001c

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 4222
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIpCallPhoneNumbers:[Ljava/lang/CharSequence;

    new-instance v3, Lcom/android/contacts/detail/ContactDetailFragment$9;

    invoke-direct {v3, p0}, Lcom/android/contacts/detail/ContactDetailFragment$9;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4233
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 4234
    .local v1, ipCallDialog:Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method protected getContactData()Lcom/android/contacts/model/Contact;
    .locals 1

    .prologue
    .line 476
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    return-object v0
.end method

.method protected getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getCreateNewGroupName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4139
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCreateNewGroupName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstDetailViewEntry()Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .locals 5

    .prologue
    .line 3005
    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    .line 3006
    .local v2, viewEntry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    instance-of v3, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 3007
    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3012
    .local v0, detail:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    const-string v4, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3020
    .end local v0           #detail:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v2           #viewEntry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFirstListItemOffset()I
    .locals 1

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getFirstListItemOffset(Landroid/widget/ListView;)I

    move-result v0

    return v0
.end method

.method protected getListener()Lcom/android/contacts/detail/ContactDetailFragment$Listener;
    .locals 1

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    return-object v0
.end method

.method public getNumberContentValuesFromDataTable(Ljava/lang/String;)Ljava/util/List;
    .locals 12
    .parameter "rawContactId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 3907
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->DATA_PROJECTION:[Ljava/lang/String;

    const-string v3, "raw_contact_id=? AND mimetype= ?"

    new-array v4, v11, [Ljava/lang/String;

    aput-object p1, v4, v9

    const-string v5, "vnd.android.cursor.item/phone_v2"

    aput-object v5, v4, v10

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 3912
    .local v6, cursor:Landroid/database/Cursor;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3913
    .local v8, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    if-eqz v6, :cond_2

    .line 3914
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 3915
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3916
    new-instance v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-direct {v7}, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;-><init>()V

    .line 3917
    .local v7, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    .line 3918
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 3919
    invoke-interface {v6, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    .line 3920
    const/4 v0, 0x3

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    long-to-int v0, v0

    iput v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->simId:I

    .line 3921
    const-string v0, "vnd.android.cursor.item/phone_v2"

    iput-object v0, v7, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    .line 3922
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3924
    .end local v7           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_0
    invoke-static {v8}, Lcom/android/contacts/Collapser;->collapseList(Ljava/util/List;)V

    .line 3926
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 3929
    :cond_2
    invoke-virtual {p0, v8}, Lcom/android/contacts/detail/ContactDetailFragment;->getNumberContentValuesFromDataTable(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getNumberContentValuesFromDataTable(Ljava/util/ArrayList;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3934
    .local p1, phoneEntries:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3936
    .local v3, numberInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Entity$NamedContentValues;>;"
    if-eqz p1, :cond_1

    .line 3937
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3938
    .local v1, detailEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    const-string v5, "ipCallStatic"

    iget-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3941
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 3942
    .local v0, cv:Landroid/content/ContentValues;
    const-string v5, "_id"

    invoke-virtual {v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->getId()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 3943
    const-string v5, "data1"

    iget-object v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3944
    const-string v5, "data2"

    iget v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->type:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 3945
    const-string v5, "sim_id"

    iget v6, v1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->simId:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 3946
    new-instance v4, Landroid/content/Entity$NamedContentValues;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v0}, Landroid/content/Entity$NamedContentValues;-><init>(Landroid/net/Uri;Landroid/content/ContentValues;)V

    .line 3947
    .local v4, nv:Landroid/content/Entity$NamedContentValues;
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3951
    .end local v0           #cv:Landroid/content/ContentValues;
    .end local v1           #detailEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #nv:Landroid/content/Entity$NamedContentValues;
    :cond_1
    return-object v3
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    return-object v0
.end method

.method public handleAssociationSimOptionMenu()V
    .locals 1

    .prologue
    .line 2998
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getFirstDetailViewEntry()Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    move-result-object v0

    .line 2999
    .local v0, detail:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz v0, :cond_0

    .line 3000
    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->handleNewAssociationSimMenu(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    .line 3002
    :cond_0
    return-void
.end method

.method public handleDelAssociationSimMenu(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 3
    .parameter "detailViewEntry"

    .prologue
    const v2, 0x7f0c0037

    .line 3564
    if-nez p1, :cond_0

    .line 3565
    const-string v0, "ContactDetailFragment"

    const-string v1, "[handleDelAssociationSimMenu]: detailViewEntry = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3575
    :goto_0
    return-void

    .line 3568
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3570
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080045

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0036

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOnDelSimAssociationListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method public handleKeyDown(I)Z
    .locals 7
    .parameter "keyCode"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3046
    packed-switch p1, :pswitch_data_0

    :cond_0
    move v3, v4

    .line 3076
    :goto_0
    return v3

    .line 3049
    :pswitch_0
    :try_start_0
    const-string v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3051
    .local v2, phone:Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isIdle()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .line 3059
    .end local v2           #phone:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getSelectedItemPosition()I

    move-result v1

    .line 3060
    .local v1, index:I
    const/4 v5, -0x1

    if-eq v1, v5, :cond_2

    .line 3061
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v5, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3062
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    if-ne v5, v6, :cond_3

    .line 3064
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 3067
    .end local v0           #entry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    :cond_2
    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    if-eqz v5, :cond_3

    .line 3069
    iget-object v4, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPrimaryPhoneUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 3072
    goto :goto_0

    .line 3055
    .end local v1           #index:I
    :catch_0
    move-exception v5

    goto :goto_1

    .line 3046
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public handleNewAssociationSimMenu(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 9
    .parameter "detailViewEntry"

    .prologue
    .line 3535
    if-nez p1, :cond_0

    .line 3536
    const-string v0, "ContactDetailFragment"

    const-string v1, "[handleNewAssociationSimMenu]: detailViewEntry = null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3553
    :goto_0
    return-void

    .line 3539
    :cond_0
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 3541
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getIndicate()I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_1

    .line 3542
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0c0038

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mOnNewAssociationSimListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0

    .line 3548
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-static {v0, v2}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->getCompany(Landroid/content/Context;Lcom/android/contacts/model/Contact;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getNameRawContactId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget-wide v5, v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->id:J

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowingPhoneEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->getNumberContentValuesFromDataTable(Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/detail/ContactDetailFragment;->startAssociationActivity(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;Ljava/util/List;)V

    goto :goto_0
.end method

.method public hasPhoneEntry(Lcom/android/contacts/model/Contact;)Z
    .locals 10
    .parameter "contactData"

    .prologue
    const/4 v6, 0x0

    .line 3506
    if-nez p1, :cond_1

    .line 3507
    const-string v7, "ContactDetailFragment"

    const-string v8, "[hasPhoneEntry]: contactData = null"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3523
    :cond_0
    :goto_0
    return v6

    .line 3510
    :cond_1
    const/4 v4, 0x0

    .line 3511
    .local v4, phoneNumber:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v7}, Lcom/android/contacts/model/Contact;->getRawContacts()Lcom/google/common/collect/ImmutableList;

    move-result-object v7

    invoke-virtual {v7}, Lcom/google/common/collect/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/model/RawContact;

    .line 3512
    .local v5, rawContact:Lcom/android/contacts/model/RawContact;
    invoke-virtual {v5}, Lcom/android/contacts/model/RawContact;->getDataItems()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/model/dataitem/DataItem;

    .line 3513
    .local v0, dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    if-eqz v0, :cond_3

    instance-of v7, v0, Lcom/android/contacts/model/dataitem/PhoneDataItem;

    if-eqz v7, :cond_3

    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 3515
    invoke-virtual {v0}, Lcom/android/contacts/model/dataitem/DataItem;->getContentValues()Landroid/content/ContentValues;

    move-result-object v7

    const-string v8, "data1"

    invoke-virtual {v7, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3516
    .local v3, number:Ljava/lang/String;
    const-string v7, "ContactDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "hasPhoneEntry number : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3517
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 3518
    move-object v4, v3

    goto :goto_1

    .line 3523
    .end local v0           #dataItem:Lcom/android/contacts/model/dataitem/DataItem;
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #number:Ljava/lang/String;
    .end local v5           #rawContact:Lcom/android/contacts/model/RawContact;
    :cond_4
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const/4 v6, 0x1

    goto :goto_0
.end method

.method public isMe()Z
    .locals 2

    .prologue
    .line 3368
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v1, :cond_0

    .line 3369
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getLookupKey()Ljava/lang/String;

    move-result-object v0

    .line 3370
    .local v0, lookupKey:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 3371
    const-string v1, "profile"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 3374
    .end local v0           #lookupKey:Ljava/lang/String;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 0
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 2792
    invoke-direct {p0, p1}, Lcom/android/contacts/detail/ContactDetailFragment;->createCopy(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    .line 2793
    return-void
.end method

.method public onAccountSelectorCancelled()V
    .locals 0

    .prologue
    .line 2788
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    .line 416
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 417
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    .line 418
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mDefaultCountryIso:Ljava/lang/String;

    .line 419
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mViewEntryDimensions:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntryDimensions;

    .line 420
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 2933
    :try_start_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getMenuInfo()Landroid/view/ContextMenu$ContextMenuInfo;

    move-result-object v1

    check-cast v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2939
    .local v1, menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 2977
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown menu option "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2934
    .end local v1           #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :catch_0
    move-exception v0

    .line 2935
    .local v0, e:Ljava/lang/ClassCastException;
    const-string v2, "ContactDetailFragment"

    const-string v3, "bad menuInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2936
    const/4 v2, 0x0

    .line 2969
    .end local v0           #e:Ljava/lang/ClassCastException;
    :goto_0
    return v2

    .line 2941
    .restart local v1       #menuInfo:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    :pswitch_0
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->dialingWithCountryCode(I)V

    move v2, v3

    .line 2942
    goto :goto_0

    .line 2944
    :pswitch_1
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToClipboard(I)V

    move v2, v3

    .line 2945
    goto :goto_0

    .line 2947
    :pswitch_2
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->setDefaultContactMethod(J)V

    move v2, v3

    .line 2948
    goto :goto_0

    .line 2950
    :pswitch_3
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v4}, Landroid/widget/AdapterView;->getItemIdAtPosition(I)J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lcom/android/contacts/detail/ContactDetailFragment;->clearDefaultContactMethod(J)V

    move v2, v3

    .line 2951
    goto :goto_0

    .line 2958
    :pswitch_4
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleNewAssociationSimMenu(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    move v2, v3

    .line 2959
    goto :goto_0

    .line 2962
    :pswitch_5
    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v4, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    invoke-virtual {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->handleDelAssociationSimMenu(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V

    move v2, v3

    .line 2963
    goto :goto_0

    .line 2967
    :pswitch_6
    iget v2, v1, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-direct {p0, v2}, Lcom/android/contacts/detail/ContactDetailFragment;->copyToDialer(I)V

    .line 2968
    const-string v2, "TAG"

    const-string v4, "copy to dialer"

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 2969
    goto :goto_0

    .line 2939
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 333
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 335
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 337
    if-eqz p1, :cond_0

    .line 338
    const-string v0, "contactUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 339
    const-string v0, "liststate"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListState:Landroid/os/Parcelable;

    .line 341
    const-string v0, "titleArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    .line 342
    const-string v0, "idArray"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J

    .line 343
    const-string v0, "mAccountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountName:Ljava/lang/String;

    .line 344
    const-string v0, "mAccountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountType:Ljava/lang/String;

    .line 345
    const-string v0, "mAccountDataSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountDataSet:Ljava/lang/String;

    .line 346
    const-string v0, "sSelectedGroupsIdList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    .line 347
    const-string v0, "sSelectedGroupsNameList"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsNameList:Ljava/util/ArrayList;

    .line 351
    :cond_0
    new-instance v0, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;-><init>(Landroid/content/Context;Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncQueryListener;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    .line 352
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mHandler:Lcom/android/contacts/util/NotifyingAsyncQueryHandler;

    invoke-virtual {v0, p0}, Lcom/android/contacts/util/NotifyingAsyncQueryHandler;->setUpdateListener(Lcom/android/contacts/util/NotifyingAsyncQueryHandler$AsyncUpdateListener;)V

    .line 360
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Lcom/android/contacts/detail/ContactDetailFragment$ContactDetailBroadcastReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment$ContactDetailBroadcastReceiver;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Lcom/android/contacts/detail/ContactDetailFragment$1;)V

    const-string v3, "ExtensionForOP09"

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->registeChangeDefaultSim(Landroid/app/Activity;Landroid/content/BroadcastReceiver;Ljava/lang/String;)Landroid/content/BroadcastReceiver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactDetailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 364
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 20
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 2835
    invoke-super/range {p0 .. p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    move-object/from16 v12, p3

    .line 2837
    check-cast v12, Landroid/widget/AdapterView$AdapterContextMenuInfo;

    .line 2838
    .local v12, info:Landroid/widget/AdapterView$AdapterContextMenuInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mAllEntries:Ljava/util/ArrayList;

    iget v2, v12, Landroid/widget/AdapterView$AdapterContextMenuInfo;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    .line 2840
    .local v17, selectedEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;
    move-object/from16 v0, v17

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 2846
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const v4, 0x7f0c012d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2851
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2927
    :cond_0
    :goto_0
    return-void

    .line 2855
    :cond_1
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 2858
    .local v18, selectedMimeType:Ljava/lang/String;
    const/4 v14, 0x1

    .line 2861
    .local v14, isUniqueMimeType:Z
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2862
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueNumber:Z

    .line 2868
    :cond_2
    :goto_1
    move-object/from16 v0, v17

    iget-boolean v1, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->isPrimary:Z

    if-eqz v1, :cond_6

    .line 2869
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const v4, 0x7f0c02b6

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2877
    :cond_3
    :goto_2
    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2878
    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x0

    const v4, 0x7f0c00c0

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2881
    move-object/from16 v0, v17

    iget-object v15, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->data:Ljava/lang/String;

    .line 2882
    .local v15, phoneNumber:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/telephony/SimInfoManager;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v13

    .line 2884
    .local v13, insertedSIMCount:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v1

    const-string v2, "ExtensionForOP09"

    invoke-virtual {v1, v2}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 2886
    const-string v1, "+"

    invoke-virtual {v15, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v15}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    if-lez v13, :cond_4

    .line 2889
    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    const v4, 0x7f0c00e7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2910
    .end local v13           #insertedSIMCount:I
    .end local v15           #phoneNumber:Ljava/lang/String;
    :cond_4
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v3

    const-string v1, "vnd.android.cursor.item/phone_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMe()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    :goto_3
    const-string v5, "ExtensionForOP01"

    invoke-virtual {v2, v3, v4, v1, v5}, Lcom/android/contacts/ext/ContactDetailExtension;->checkMenuItem(ZZZLjava/lang/String;)Z

    move-result v16

    .line 2914
    .local v16, result:Z
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v19

    .line 2915
    .local v19, simInfoSize:I
    if-eqz v16, :cond_0

    const/4 v1, 0x1

    move/from16 v0, v19

    if-le v0, v1, :cond_0

    .line 2916
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v3, 0x1

    :goto_4
    move-object/from16 v0, v17

    iget v4, v0, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->simId:I

    if-lez v19, :cond_9

    const/4 v5, 0x1

    :goto_5
    const/4 v6, 0x4

    const/4 v7, 0x3

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const v9, 0x7f0c0035

    const v10, 0x7f0c0034

    const-string v11, "ExtensionForOP01"

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v11}, Lcom/android/contacts/ext/ContactDetailExtension;->setMenu(Landroid/view/ContextMenu;ZIZIILandroid/app/Activity;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 2863
    .end local v16           #result:Z
    .end local v19           #simInfoSize:I
    :cond_5
    const-string v1, "vnd.android.cursor.item/email_v2"

    move-object/from16 v0, v18

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2864
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/contacts/detail/ContactDetailFragment;->mIsUniqueEmail:Z

    goto/16 :goto_1

    .line 2871
    :cond_6
    if-nez v14, :cond_3

    .line 2872
    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    const v4, 0x7f0c02b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 2910
    :cond_7
    const/4 v1, 0x0

    goto :goto_3

    .line 2916
    .restart local v16       #result:Z
    .restart local v19       #simInfoSize:I
    :cond_8
    const/4 v3, 0x0

    goto :goto_4

    :cond_9
    const/4 v5, 0x0

    goto :goto_5
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 424
    const-string v0, "ContactDetailFragment"

    const-string v1, "[onCreateView][launch]start"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const v0, 0x7f040024

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    .line 428
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardTouchToListView:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 429
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mForwardDragToListView:Landroid/view/View$OnDragListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnDragListener(Landroid/view/View$OnDragListener;)V

    .line 431
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 433
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0700c2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mStaticPhotoContainer:Landroid/view/ViewGroup;

    .line 434
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f070191

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mPhotoTouchOverlay:Landroid/view/View;

    .line 436
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    .line 437
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 438
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 439
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 442
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mEmptyView:Landroid/view/View;

    .line 444
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const v1, 0x7f0700c0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    .line 445
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQuickFixButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/contacts/detail/ContactDetailFragment$3;

    invoke-direct {v1, p0}, Lcom/android/contacts/detail/ContactDetailFragment$3;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v0, :cond_0

    .line 457
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 459
    :cond_0
    const-string v0, "ContactDetailFragment"

    const-string v1, "[onCreateView][launch]end"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mView:Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 4606
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 4608
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactDetailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 4609
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactDetailBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 4611
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
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
    .line 2827
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    if-nez v1, :cond_1

    .line 2831
    :cond_0
    :goto_0
    return-void

    .line 2828
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v1, p3}, Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;->getItem(I)Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;

    move-result-object v0

    .line 2829
    .local v0, entry:Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;
    if-eqz v0, :cond_0

    .line 2830
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    invoke-virtual {v0, p2, v1}, Lcom/android/contacts/detail/ContactDetailFragment$ViewEntry;->click(Landroid/view/View;Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 3401
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3408
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 3403
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->handleAssociationSimOptionMenu()V

    .line 3404
    const/4 v0, 0x1

    goto :goto_0

    .line 3401
    :pswitch_data_0
    .packed-switch 0x7f070211
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 409
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissPopupIfShown()V

    .line 410
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 411
    const-string v0, "ContactDetailFragment"

    const-string v1, "[onPause]"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 10
    .parameter "menu"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3379
    const v3, 0x7f070211

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 3380
    .local v0, associationMenuItem:Landroid/view/MenuItem;
    if-eqz v0, :cond_0

    .line 3382
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/contacts/simcontact/SlotUtils;->isGeminiEnabled()Z

    move-result v7

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {p0, v3}, Lcom/android/contacts/detail/ContactDetailFragment;->hasPhoneEntry(Lcom/android/contacts/model/Contact;)Z

    move-result v8

    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->isMe()Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v4

    :goto_0
    const-string v9, "ExtensionForOP01"

    invoke-virtual {v6, v7, v8, v3, v9}, Lcom/android/contacts/ext/ContactDetailExtension;->checkMenuItem(ZZZLjava/lang/String;)Z

    move-result v1

    .line 3385
    .local v1, result:Z
    const-string v3, "ContactDetailFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPrepareOptionsMenu result, SIMInfoWrapper.getDefault().getInsertedSimCount()  : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " , "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3388
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimCount()I

    move-result v2

    .line 3389
    .local v2, simInfoSize:I
    if-eqz v1, :cond_4

    if-le v2, v4, :cond_4

    .line 3390
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailExtension()Lcom/android/contacts/ext/ContactDetailExtension;

    move-result-object v6

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v3}, Lcom/android/contacts/model/Contact;->isDirectoryEntry()Z

    move-result v3

    if-nez v3, :cond_2

    move v3, v4

    :goto_1
    if-lez v2, :cond_3

    :goto_2
    const-string v5, "ExtensionForOP01"

    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/contacts/ext/ContactDetailExtension;->setMenuVisible(Landroid/view/MenuItem;ZZLjava/lang/String;)V

    .line 3397
    .end local v1           #result:Z
    .end local v2           #simInfoSize:I
    :cond_0
    :goto_3
    return-void

    :cond_1
    move v3, v5

    .line 3382
    goto :goto_0

    .restart local v1       #result:Z
    .restart local v2       #simInfoSize:I
    :cond_2
    move v3, v5

    .line 3390
    goto :goto_1

    :cond_3
    move v4, v5

    goto :goto_2

    .line 3394
    :cond_4
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_3
.end method

.method public onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 0
    .parameter "token"
    .parameter "cookie"
    .parameter "cursor"

    .prologue
    .line 3868
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 403
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 404
    const-string v0, "ContactDetailFragment"

    const-string v1, "[onResume]"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 369
    const-string v0, "contactUri"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 370
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 371
    const-string v0, "liststate"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/AbsListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 374
    :cond_0
    const-string v0, "titleArray"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mTitleArray:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 375
    const-string v0, "idArray"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mIdArray:[J

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 376
    const-string v0, "mAccountName"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "mAccountType"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 378
    const-string v0, "mAccountDataSet"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    const-string v0, "sSelectedGroupsIdList"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 381
    const-string v0, "sSelectedGroupsNameList"

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsNameList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 383
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    .line 387
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 388
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->dismissGroupDialogIfShown()V

    .line 389
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    if-eqz v1, :cond_0

    .line 390
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getSlot()I

    move-result v1

    invoke-static {v1}, Lcom/mediatek/contacts/extension/aassne/SimUtils;->getAccountTypeBySlot(I)Ljava/lang/String;

    move-result-object v0

    .line 391
    .local v0, accountType:Ljava/lang/String;
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/contacts/ExtensionManager;->getContactAccountExtension()Lcom/android/contacts/ext/ContactAccountExtension;

    move-result-object v1

    const-string v2, "ExtensionForAAS"

    invoke-virtual {v1, v0, v2}, Lcom/android/contacts/ext/ContactAccountExtension;->isFeatureAccount(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 393
    const-string v1, "ContactDetailFragment"

    const-string v2, "rebind data for Datakind changed"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 397
    .end local v0           #accountType:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 4711
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 4712
    const-string v0, "ContactDetailFragment"

    const-string v1, "[onStop]"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4713
    return-void
.end method

.method public onUpdateComplete(ILjava/lang/Object;I)V
    .locals 3
    .parameter "token"
    .parameter "cookie"
    .parameter "result"

    .prologue
    .line 4020
    if-nez p1, :cond_0

    .line 4021
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4022
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 4023
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.contacts.associate_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 4026
    .end local v0           #activity:Landroid/app/Activity;
    :cond_0
    return-void
.end method

.method public requestToMoveToOffset(I)V
    .locals 1
    .parameter "offset"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    invoke-static {v0, p1}, Lcom/android/contacts/detail/ContactDetailDisplayUtils;->requestToMoveToOffset(Landroid/widget/ListView;I)V

    .line 535
    return-void
.end method

.method public resetAdapter()V
    .locals 2

    .prologue
    .line 513
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAdapter:Lcom/android/contacts/detail/ContactDetailFragment$ViewAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 516
    :cond_0
    return-void
.end method

.method public setCancelMsgFromGroupNameDlg()V
    .locals 1

    .prologue
    .line 4206
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isFromGroupNameDlg:Z

    .line 4207
    return-void
.end method

.method public setCreateNewGroupName(Ljava/lang/String;)V
    .locals 0
    .parameter "newGroupName"

    .prologue
    .line 4143
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mCreateNewGroupName:Ljava/lang/String;

    .line 4144
    return-void
.end method

.method public setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V
    .locals 0
    .parameter "lookupUri"
    .parameter "result"

    .prologue
    .line 503
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mLookupUri:Landroid/net/Uri;

    .line 504
    iput-object p2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    .line 505
    invoke-virtual {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->bindData()V

    .line 506
    return-void
.end method

.method public setListener(Lcom/android/contacts/detail/ContactDetailFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mListener:Lcom/android/contacts/detail/ContactDetailFragment$Listener;

    .line 465
    return-void
.end method

.method public setShowStaticPhoto(Z)V
    .locals 0
    .parameter "showPhoto"

    .prologue
    .line 492
    iput-boolean p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mShowStaticPhoto:Z

    .line 493
    return-void
.end method

.method public setUpdateClickListener(Lcom/android/contacts/detail/ContactDetailFragment$OnUpdateClickListener;)V
    .locals 0
    .parameter "updateClickListener"

    .prologue
    .line 4645
    sput-object p1, Lcom/android/contacts/detail/ContactDetailFragment;->mUpdateClickListener:Lcom/android/contacts/detail/ContactDetailFragment$OnUpdateClickListener;

    .line 4646
    return-void
.end method

.method public setVerticalScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 480
    iput-object p1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mVerticalScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 481
    return-void
.end method

.method public showEmptyState()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 499
    invoke-virtual {p0, v0, v0}, Lcom/android/contacts/detail/ContactDetailFragment;->setData(Landroid/net/Uri;Lcom/android/contacts/model/Contact;)V

    .line 500
    return-void
.end method

.method public showNewAddWidget(Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;)V
    .locals 12
    .parameter "views"
    .parameter "entry"

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 3413
    iget v4, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->simId:I

    .line 3414
    .local v4, simId:I
    const/16 v0, 0x8

    .line 3415
    .local v0, associVisible:I
    const/16 v3, 0x8

    .line 3416
    .local v3, showVTAction:I
    if-eqz p2, :cond_1

    const-string v7, "vnd.android.cursor.item/phone_v2"

    iget-object v8, p2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->mimetype:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 3417
    const/4 v7, -0x1

    if-le v4, v7, :cond_0

    .line 3418
    const/4 v0, 0x0

    .line 3419
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->imgAssociationSimIcon:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f020055

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3421
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->mAssociationSimLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3423
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    int-to-long v8, v4

    invoke-static {v7, v8, v9}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoById(Landroid/content/Context;J)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v5

    .line 3424
    .local v5, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v5, :cond_3

    .line 3425
    const-string v7, "ContactDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[showNewAddWidget]: simInfo.mDisplayName is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3427
    const-string v7, "ContactDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[showNewAddWidget]: simInfo.mColor is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3428
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->txtAssociationSimName:Landroid/widget/TextView;

    iget-object v8, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3429
    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    int-to-long v8, v4

    invoke-static {v7, v8, v9}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v6

    .line 3430
    .local v6, slotId:I
    const-string v7, "ContactDetailFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slotId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3431
    if-ltz v6, :cond_2

    .line 3432
    const-string v7, "ContactDetailFragment"

    const-string v8, "[showNewAddWidget]: slotId >= 0 "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3434
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->txtAssociationSimName:Landroid/widget/TextView;

    sget-object v8, Lcom/mediatek/telephony/SimInfoManager;->SimBackgroundLightRes:[I

    iget v9, v5, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mColor:I

    aget v8, v8, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 3443
    :goto_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 3445
    .local v1, paddingLeft:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 3447
    .local v2, paddingRight:I
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->txtAssociationSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v10, v2, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 3453
    .end local v1           #paddingLeft:I
    .end local v2           #paddingRight:I
    .end local v5           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .end local v6           #slotId:I
    :cond_0
    :goto_1
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->btnVtCallAction:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0200dc

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 3455
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->vtcallActionViewContainer:Landroid/view/View;

    invoke-virtual {v7, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 3456
    const/4 v3, 0x0

    .line 3459
    :cond_1
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->imgAssociationSimIcon:Landroid/widget/ImageView;

    invoke-virtual {v7, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3460
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->txtAssociationSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3470
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->vewVtCallDivider:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3471
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->btnVtCallAction:Landroid/widget/ImageView;

    invoke-virtual {v7, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3472
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->vtcallActionViewContainer:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 3473
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->vtcallActionViewContainer:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setClickable(Z)V

    .line 3475
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->vewVtCallDivider:Landroid/view/View;

    invoke-virtual {v7, v10}, Landroid/view/View;->setClickable(Z)V

    .line 3476
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->btnVtCallAction:Landroid/widget/ImageView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setClickable(Z)V

    .line 3496
    return-void

    .line 3438
    .restart local v5       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    .restart local v6       #slotId:I
    :cond_2
    const-string v7, "ContactDetailFragment"

    const-string v8, "[showNewAddWidget]: slotId < 0 "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3439
    iget-object v7, p1, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewCache;->txtAssociationSimName:Landroid/widget/TextView;

    const v8, 0x20200ee

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 3450
    .end local v6           #slotId:I
    :cond_3
    const-string v7, "ContactDetailFragment"

    const-string v8, "[showNewAddWidget]: not find siminfo"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public startAssociationActivity(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;Ljava/util/List;)V
    .locals 7
    .parameter "displayTitle"
    .parameter "displaySubtitle"
    .parameter "rawContactId"
    .parameter "selDataId"
    .parameter "lookupUri"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Landroid/net/Uri;",
            "Ljava/util/List",
            "<",
            "Landroid/content/Entity$NamedContentValues;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3881
    .local p8, numberInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/Entity$NamedContentValues;>;"
    new-instance v0, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getPhotoUri()Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p7

    move-object v4, p8

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/util/List;Ljava/lang/String;)V

    .line 3884
    .local v0, contactDetailInfo:Lcom/mediatek/contacts/detail/AssociationSimActivity$ContactDetailInfo;
    new-instance v6, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/mediatek/contacts/detail/AssociationSimActivity;

    invoke-direct {v6, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 3885
    .local v6, intent:Landroid/content/Intent;
    const-string v1, "sel_data_id"

    invoke-virtual {v6, v1, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3886
    const-string v1, "sel_sim_id"

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->tempDetailViewEntry:Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;

    iget v2, v2, Lcom/android/contacts/detail/ContactDetailFragment$DetailViewEntry;->simId:I

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 3888
    const-string v1, "contact_detail_info"

    invoke-virtual {v6, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 3891
    const-string v1, "raw_contact_id"

    invoke-virtual {v6, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 3893
    invoke-virtual {p0, v6}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 3894
    return-void
.end method

.method public startAssociationActivity([Landroid/content/ContentProviderResult;)V
    .locals 13
    .parameter "r"

    .prologue
    .line 3842
    const/4 v0, 0x0

    aget-object v10, p1, v0

    .line 3843
    .local v10, r1:Landroid/content/ContentProviderResult;
    iget-object v0, v10, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 3844
    .local v12, raw_contact_id:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v12, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v12, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    .line 3846
    const/4 v0, 0x1

    aget-object v11, p1, v0

    .line 3847
    .local v11, r2:Landroid/content/ContentProviderResult;
    iget-object v0, v11, Landroid/content/ContentProviderResult;->uri:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v9

    .line 3848
    .local v9, data_id:Ljava/lang/String;
    const-string v0, "/"

    invoke-virtual {v9, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v9, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 3851
    invoke-static {v12}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 3853
    .local v3, realRawContactId:J
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v0}, Lcom/android/contacts/model/Contact;->getLookupUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v12}, Lcom/android/contacts/detail/ContactDetailFragment;->getNumberContentValuesFromDataTable(Ljava/lang/String;)Ljava/util/List;

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/android/contacts/detail/ContactDetailFragment;->startAssociationActivity(Ljava/lang/String;Ljava/lang/String;JJLandroid/net/Uri;Ljava/util/List;)V

    .line 3855
    return-void
.end method

.method public startTargetGroupQuery()V
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 4246
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQueryHandler:Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;

    if-nez v0, :cond_0

    .line 4247
    new-instance v0, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;-><init>(Lcom/android/contacts/detail/ContactDetailFragment;Landroid/content/ContentResolver;)V

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQueryHandler:Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;

    .line 4250
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/detail/ContactDetailFragment;->getAccountInfoForGroup()V

    .line 4251
    sget-object v0, Landroid/provider/ContactsContract;->AUTHORITY_URI:Landroid/net/Uri;

    const-string v1, "groups"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 4256
    .local v3, viewGroupUri:Landroid/net/Uri;
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4257
    const-string v0, "Phone"

    iput-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountName:Ljava/lang/String;

    .line 4262
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mQueryHandler:Lcom/android/contacts/detail/ContactDetailFragment$GroupQueryHandler;

    iget v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupQueryToken:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupQueryToken:I

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "_id"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "title"

    aput-object v6, v4, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "account_name= \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "auto_add"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "favorites"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 AND "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "deleted"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "=0 "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "title"

    move-object v6, v2

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 4267
    return-void
.end method

.method public updateGroupIdToContact()V
    .locals 12

    .prologue
    .line 4550
    iget-boolean v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isGroupItemChecked:Z

    if-nez v1, :cond_0

    .line 4551
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[countSelectedGroupItem] Group item is checked? "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->isGroupItemChecked:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Not to updateGroupIdToContact."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4581
    :goto_0
    return-void

    .line 4556
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 4559
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_1

    .line 4560
    const-string v1, "ContactDetailFragment"

    const-string v2, "[updateGroupIdToContact] Activity is null, return!"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4565
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v2}, Lcom/android/contacts/model/Contact;->getIndicate()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Lcom/mediatek/telephony/SimInfoManager;->getSlotById(Landroid/content/Context;J)I

    move-result v10

    .line 4566
    .local v10, slotId:I
    iget-object v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mContactData:Lcom/android/contacts/model/Contact;

    invoke-virtual {v1}, Lcom/android/contacts/model/Contact;->getSimIndex()I

    move-result v4

    .line 4568
    .local v4, simIndex:I
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateGroupIdToContact]  slotId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " simIndex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mRawContactId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v5, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactId:J

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4571
    const/4 v11, 0x0

    .line 4572
    .local v11, updateGroupIntent:Landroid/content/Intent;
    iget-wide v1, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mRawContactId:J

    iget-object v3, p0, Lcom/android/contacts/detail/ContactDetailFragment;->rawContactIds:[J

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "updateCompleted"

    iget-object v7, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsIdList:Ljava/util/ArrayList;

    iget-object v8, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mSelectedGroupsNameList:Ljava/util/ArrayList;

    iget-object v9, p0, Lcom/android/contacts/detail/ContactDetailFragment;->mGroupMemberShipName:Ljava/util/ArrayList;

    invoke-static/range {v0 .. v10}, Lcom/android/contacts/ContactSaveService;->createContactDetailGroupUpdateIntent(Landroid/content/Context;J[JILjava/lang/Class;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;I)Landroid/content/Intent;

    move-result-object v11

    .line 4579
    const-string v1, "ContactDetailFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateGroupIdToContact] startService, serviceIntent is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4580
    invoke-virtual {v0, v11}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.class public Lcom/android/contacts/group/GroupEditorFragment;
.super Landroid/app/Fragment;
.source "GroupEditorFragment.java"

# interfaces
.implements Lcom/android/contacts/editor/SelectAccountDialogFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/group/GroupEditorFragment$WaitProgressDialog;,
        Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;,
        Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;,
        Lcom/android/contacts/group/GroupEditorFragment$MemberTask;,
        Lcom/android/contacts/group/GroupEditorFragment$SimReceiver;,
        Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;,
        Lcom/android/contacts/group/GroupEditorFragment$Member;,
        Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;,
        Lcom/android/contacts/group/GroupEditorFragment$Status;,
        Lcom/android/contacts/group/GroupEditorFragment$Listener;
    }
.end annotation


# static fields
.field protected static final CONTACT_CHAT_CAPABILITY_COLUMN_INDEX:I = 0x6

.field protected static final CONTACT_DISPLAY_NAME_ALTERNATIVE_COLUMN_INDEX:I = 0x2

.field protected static final CONTACT_DISPLAY_NAME_PRIMARY_COLUMN_INDEX:I = 0x1

.field protected static final CONTACT_HAS_PHONE_COLUMN_INDEX:I = 0xb

.field protected static final CONTACT_ID_COLUMN_INDEX:I = 0x0

.field protected static final CONTACT_INDEX_IN_SIM_COLUMN_INDEX:I = 0xe

.field protected static final CONTACT_INDICATE_PHONE_SIM_COLUMN_INDEX:I = 0xd

.field protected static final CONTACT_IS_SDN_CONTACT_COLUMN_INDEX:I = 0xf

.field protected static final CONTACT_IS_USER_PROFILE:I = 0xc

.field protected static final CONTACT_LOOKUP_KEY_COLUMN_INDEX:I = 0x9

.field protected static final CONTACT_PHONETIC_NAME_COLUMN_INDEX:I = 0xa

.field protected static final CONTACT_PHOTO_ID_COLUMN_INDEX:I = 0x7

.field protected static final CONTACT_PHOTO_URI_COLUMN_INDEX:I = 0x8

.field protected static final CONTACT_PRESENCE_STATUS_COLUMN_INDEX:I = 0x5

.field protected static final CONTACT_SORT_KEY_PRIMARY_COLUMN_INDEX:I = 0x3

.field protected static final CONTACT_STARRED_COLUMN_INDEX:I = 0x4

.field private static final CURRENT_EDITOR_TAG:Ljava/lang/String; = "currentEditorForAccount"

.field private static final DATA_COLUMN_INDEX:I = 0x2

.field private static DIALOG_TAG:Ljava/lang/String; = null

.field private static final KEY_ACCOUNT_NAME:Ljava/lang/String; = "accountName"

.field private static final KEY_ACCOUNT_TYPE:Ljava/lang/String; = "accountType"

.field private static final KEY_ACTION:Ljava/lang/String; = "action"

.field private static final KEY_CATEGORY:Ljava/lang/String; = "mCategory"

.field private static final KEY_DATA_SET:Ljava/lang/String; = "dataSet"

.field private static final KEY_GROUP_ID:Ljava/lang/String; = "groupId"

.field private static final KEY_GROUP_NAME_IS_READ_ONLY:Ljava/lang/String; = "groupNameIsReadOnly"

.field private static final KEY_GROUP_SLOT_ID:Ljava/lang/String; = "groupSlotId"

.field private static final KEY_GROUP_URI:Ljava/lang/String; = "groupUri"

.field private static final KEY_MEMBERS_TO_ADD:Ljava/lang/String; = "membersToAdd"

.field private static final KEY_MEMBERS_TO_DISPLAY:Ljava/lang/String; = "membersToDisplay"

.field private static final KEY_MEMBERS_TO_REMOVE:Ljava/lang/String; = "membersToRemove"

.field private static final KEY_ORIGINAL_GROUP_NAME:Ljava/lang/String; = "originalGroupName"

.field private static final KEY_STATUS:Ljava/lang/String; = "status"

.field private static final LEGACY_CONTACTS_AUTHORITY:Ljava/lang/String; = "contacts"

.field private static final LOADER_EXISTING_MEMBERS:I = 0x2

.field private static final LOADER_GROUP_METADATA:I = 0x1

.field private static final LOADER_NEW_GROUP_MEMBER:I = 0x3

.field private static final MEMBER_LOOKUP_URI_KEY:Ljava/lang/String; = "memberLookupUri"

.field private static final MEMBER_LOOKUP_URI_KEYS:Ljava/lang/String; = "memberLookupUris"

.field private static final MEMBER_RAW_CONTACT_ID_KEY:Ljava/lang/String; = "rawContactId"

.field private static final MEMBER_RAW_CONTACT_ID_KEYS:Ljava/lang/String; = "rawContactIds"

.field private static final MIMETYPE_COLUMN_INDEX:I = 0x1

.field private static final MULTIPLE_ADD_GROUP_MEMBER:I = 0x18

.field private static final PHOTO_COLUMN_INDEX:I = 0x3

.field protected static final PROJECTION_CONTACT:[Ljava/lang/String; = null

.field private static final PROJECTION_MEMBER_DATA:[Ljava/lang/String; = null

.field private static final RAWCONTACT_CONTACT_ID:I = 0x0

.field private static final RAW_CONTACT_ID_COLUMN_INDEX:I = 0x4

.field private static final RESULTINTENTEXTRANAME:Ljava/lang/String; = "com.mediatek.contacts.list.pickcontactsresult"

.field private static final TAG:Ljava/lang/String; = "GroupEditorFragment"

.field private static mListMembersToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private static mListMembersToRemove:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private static mListToDisplay:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;"
        }
    .end annotation
.end field

.field private static sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

.field public static sIsSavingToGroup:Z

.field private static sScrubListener:Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;


# instance fields
.field private mAccountName:Ljava/lang/String;

.field private mAccountType:Ljava/lang/String;

.field private mAction:Ljava/lang/String;

.field private mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

.field private mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

.field private mCategory:Ljava/lang/String;

.field private final mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mContactRefreshListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mDataSet:Ljava/lang/String;

.field private mGroupId:J

.field private final mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private final mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private mGroupNameIsReadOnly:Z

.field private mGroupNameView:Landroid/widget/TextView;

.field private mGroupUri:Landroid/net/Uri;

.field private mIntentExtras:Landroid/os/Bundle;

.field private mIsSaveCompleted:Z

.field private mLastGroupEditorId:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListView:Landroid/widget/ListView;

.field private mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

.field private mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

.field private mMemberPicker:Landroid/widget/ImageButton;

.field private mMemberPosition:I

.field private mOriginalGroupName:Ljava/lang/String;

.field private mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mRootView:Landroid/view/ViewGroup;

.field private mSimId:I

.field private mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

.field private mSimName:Ljava/lang/String;

.field private mSlotId:I

.field private mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

.field private mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

.field private mWaitProgressDialog:Lcom/android/contacts/group/GroupEditorFragment$WaitProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 183
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_id"

    aput-object v1, v0, v3

    const-string v1, "display_name"

    aput-object v1, v0, v4

    const-string v1, "display_name_alt"

    aput-object v1, v0, v5

    const-string v1, "sort_key"

    aput-object v1, v0, v6

    const-string v1, "starred"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "contact_presence"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "contact_chat_capability"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "photo_id"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "photo_thumb_uri"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "lookup"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "phonetic_name"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "has_phone_number"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "is_user_profile"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "indicate_phone_or_sim_contact"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "index_in_sim"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "is_sdn_contact"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->PROJECTION_CONTACT:[Ljava/lang/String;

    .line 224
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "contact_id"

    aput-object v1, v0, v3

    const-string v1, "mimetype"

    aput-object v1, v0, v4

    const-string v1, "data1"

    aput-object v1, v0, v5

    const-string v1, "data15"

    aput-object v1, v0, v6

    const-string v1, "_id"

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->PROJECTION_MEMBER_DATA:[Ljava/lang/String;

    .line 280
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    .line 281
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    .line 288
    sput-boolean v3, Lcom/android/contacts/group/GroupEditorFragment;->sIsSavingToGroup:Z

    .line 2167
    const-string v0, "wait_progress"

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->DIALOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 290
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 271
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 285
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSaveCompleted:Z

    .line 1075
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$3;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1111
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$4;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$4;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1180
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$5;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1443
    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCategory:Ljava/lang/String;

    .line 1444
    iput v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    .line 1447
    iput v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    .line 1453
    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    .line 1964
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$7;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactRefreshListener:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 2162
    new-instance v0, Lcom/mediatek/contacts/util/ProgressHandler;

    invoke-direct {v0}, Lcom/mediatek/contacts/util/ProgressHandler;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    .line 291
    return-void
.end method

.method static synthetic access$100(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/group/SuggestedMemberListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/mediatek/phone/SIMInfoWrapper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/android/contacts/group/GroupEditorFragment;Lcom/mediatek/phone/SIMInfoWrapper;)Lcom/mediatek/phone/SIMInfoWrapper;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSimInfoWrapper:Lcom/mediatek/phone/SIMInfoWrapper;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/group/GroupEditorFragment;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/group/GroupEditorFragment;Ljava/util/List;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addExistingMembers(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/view/LayoutInflater;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/contacts/group/GroupEditorFragment;)Lcom/android/contacts/ContactPhotoManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    return-object v0
.end method

.method static synthetic access$1800()Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/widget/AutoCompleteTextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/contacts/group/GroupEditorFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/ContentResolver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->addMembersToAdd(Lcom/android/contacts/group/GroupEditorFragment$Member;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400()Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$Member;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 124
    invoke-direct {p0, p1, p2}, Lcom/android/contacts/group/GroupEditorFragment;->editMember(Lcom/android/contacts/group/GroupEditorFragment$Member;I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->onAccountChosenInternal(Lcom/android/contacts/model/account/AccountWithDataSet;)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->onAccountSelectorCancelledInternal()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->onAddMembersFinished()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->addMembers()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/contacts/group/GroupEditorFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 124
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/contacts/group/GroupEditorFragment;Landroid/database/Cursor;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 124
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->bindGroupMetaData(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/contacts/group/GroupEditorFragment;)Landroid/app/LoaderManager$LoaderCallbacks;
    .locals 1
    .parameter "x0"

    .prologue
    .line 124
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMemberListLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/group/GroupEditorFragment;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 124
    iget-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    return-wide v0
.end method

.method private addExistingMembers(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p1, members:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1017
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1018
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1019
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->removeAll(Ljava/util/Collection;)Z

    .line 1020
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1024
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 1029
    :cond_0
    return-void
.end method

.method private addMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .parameter "member"

    .prologue
    .line 1033
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1034
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1036
    :cond_0
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1037
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1039
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1042
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->addNewMember(J)V

    .line 1043
    return-void
.end method

.method private addMembers()V
    .locals 10

    .prologue
    .line 1618
    :try_start_0
    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v8

    const-class v9, Lcom/mediatek/contacts/list/ContactListMultiChoiceActivity;

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1619
    .local v4, intent:Landroid/content/Intent;
    const-string v8, "android.intent.action.contacts.list.group.ADDMULTICONTACTS"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1620
    const-string v8, "vnd.android.cursor.dir/contact"

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 1621
    const-string v8, "account_type"

    iget-object v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1622
    const-string v8, "account_name"

    iget-object v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v4, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1623
    sget-object v8, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v7

    .line 1624
    .local v7, size:I
    new-array v5, v7, [J

    .line 1625
    .local v5, mContactIds:[J
    const/4 v1, 0x0

    .line 1626
    .local v1, i:I
    sget-object v8, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    move v2, v1

    .end local v1           #i:I
    .local v2, i:I
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 1627
    .local v6, member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    add-int/lit8 v1, v2, 0x1

    .end local v2           #i:I
    .restart local v1       #i:I
    invoke-virtual {v6}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v8

    aput-wide v8, v5, v2

    move v2, v1

    .end local v1           #i:I
    .restart local v2       #i:I
    goto :goto_0

    .line 1629
    .end local v6           #member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    :cond_0
    const-string v8, "member_ids"

    invoke-virtual {v4, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    .line 1630
    const/16 v8, 0x18

    invoke-virtual {p0, v4, v8}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1634
    .end local v2           #i:I
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #intent:Landroid/content/Intent;
    .end local v5           #mContactIds:[J
    .end local v7           #size:I
    :goto_1
    return-void

    .line 1631
    :catch_0
    move-exception v0

    .line 1632
    .local v0, e:Landroid/content/ActivityNotFoundException;
    const-string v8, "GroupEditorFragment"

    const-string v9, "ActivityNotFoundException for addMembers Intent"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private addMembersToAdd(Lcom/android/contacts/group/GroupEditorFragment$Member;)Z
    .locals 4
    .parameter "member"

    .prologue
    .line 1893
    const/4 v0, 0x1

    .line 1894
    .local v0, isDisplay:Z
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1895
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1896
    const/4 v0, 0x0

    .line 1899
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->addNewMember(J)V

    .line 1900
    return v0
.end method

.method private addMembersToDisplay(Ljava/util/ArrayList;)V
    .locals 1
    .parameter "result"

    .prologue
    .line 1904
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1905
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1906
    return-void
.end method

.method private bindGroupMetaData(Landroid/database/Cursor;)V
    .locals 3
    .parameter "cursor"

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 672
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_1

    .line 673
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group not found with URI: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Closing activity now."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 675
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 688
    :cond_0
    :goto_0
    return-void

    .line 679
    :cond_1
    const/4 v2, 0x4

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 680
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 681
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 682
    const/4 v2, 0x2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 683
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    if-ne v2, v0, :cond_2

    :goto_1
    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 684
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 687
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 683
    goto :goto_1
.end method

.method private checkEmptyGroupName(Z)Z
    .locals 3
    .parameter "showTips"

    .prologue
    const/4 v0, 0x0

    .line 1519
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1522
    :cond_0
    if-eqz p1, :cond_1

    .line 1523
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v2, 0x7f0c0069

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1525
    :cond_1
    const/4 v0, 0x1

    .line 1527
    :cond_2
    return v0
.end method

.method private checkGroupName(Ljava/lang/String;Z)Z
    .locals 1
    .parameter "groupName"
    .parameter "showTips"

    .prologue
    .line 2232
    const/4 v0, 0x1

    return v0
.end method

.method private checkMemberTask()V
    .locals 2

    .prologue
    .line 2140
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    if-nez v0, :cond_1

    .line 2141
    const-string v0, "GroupEditorFragment"

    const-string v1, "checkMemberTask sHandler == null,finish avtivity!"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 2142
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 2159
    :cond_0
    :goto_0
    return-void

    .line 2147
    :cond_1
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->getExistTask()Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    .line 2148
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    if-nez v0, :cond_2

    .line 2149
    const-string v0, "GroupEditorFragment"

    const-string v1, "no MemberTask started before"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2153
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->isTaskRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2154
    const-string v0, "GroupEditorFragment"

    const-string v1, "task is still running"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2155
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->isTaskFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2157
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;->notifyAddMemberFinished()V

    goto :goto_0
.end method

.method private checkSimServiceState(Z)Z
    .locals 5
    .parameter "showTips"

    .prologue
    const/4 v1, 0x0

    .line 1487
    iget v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    if-ltz v2, :cond_2

    iget v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-static {v2}, Lcom/mediatek/contacts/simservice/SIMServiceUtils;->isServiceRunning(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1489
    const v0, 0x7f0c004a

    .line 1490
    .local v0, msg_loading_sim_contacts_toast:I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getContactDetailEnhancementExtension()Lcom/android/contacts/ext/ContactDetailEnhancementExtension;

    move-result-object v2

    const-string v3, "ExtensionForOP09"

    invoke-virtual {v2, v3}, Lcom/android/contacts/ext/ContactDetailEnhancementExtension;->isUseOperation(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1492
    const v0, 0x7f0c00d6

    .line 1495
    :cond_0
    if-eqz p1, :cond_1

    .line 1496
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 1515
    .end local v0           #msg_loading_sim_contacts_toast:I
    :cond_1
    :goto_0
    return v1

    .line 1507
    :cond_2
    invoke-static {}, Lcom/android/contacts/ContactSaveService;->isGroupTransactionProcessing()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1508
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSimServiceState(),mSlotId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",SaveGroup Failed.."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1509
    if-eqz p1, :cond_1

    .line 1510
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f0c0040

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;I)V

    goto :goto_0

    .line 1515
    :cond_3
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private clearMembersList()V
    .locals 3

    .prologue
    .line 1909
    const-string v1, "GroupEditorFragment"

    const-string v2, "somewhere called clear list!"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1917
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->getExistTask()Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    move-result-object v0

    .line 1918
    .local v0, task:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;
    if-eqz v0, :cond_0

    .line 1919
    const-string v1, "GroupEditorFragment"

    const-string v2, "current running member task should be abort"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1920
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->abort()V

    .line 1925
    :cond_0
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 1926
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1928
    :cond_1
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 1929
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1931
    :cond_2
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 1932
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1934
    :cond_3
    return-void
.end method

.method public static convertSimIndexToArray(Ljava/util/List;)[I
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)[I"
        }
    .end annotation

    .prologue
    .line 1468
    .local p0, listMembers:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1469
    .local v2, size:I
    new-array v1, v2, [I

    .line 1470
    .local v1, simIndexArray:[I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1471
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getmSimIndex()I

    move-result v3

    aput v3, v1, v0

    .line 1470
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1473
    :cond_0
    return-object v1
.end method

.method private static convertToArray(Ljava/util/List;)[J
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/contacts/group/GroupEditorFragment$Member;",
            ">;)[J"
        }
    .end annotation

    .prologue
    .line 1005
    .local p0, listMembers:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .line 1006
    .local v2, size:I
    new-array v1, v2, [J

    .line 1007
    .local v1, membersArray:[J
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 1008
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/contacts/group/GroupEditorFragment$Member;

    invoke-virtual {v3}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getRawContactId()J

    move-result-wide v3

    aput-wide v3, v1, v0

    .line 1007
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1010
    :cond_0
    return-object v1
.end method

.method private doRevertAction()V
    .locals 1

    .prologue
    .line 757
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 758
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 759
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onReverted()V

    .line 761
    :cond_0
    return-void
.end method

.method private editMember(Lcom/android/contacts/group/GroupEditorFragment$Member;I)V
    .locals 6
    .parameter "member"
    .parameter "position"

    .prologue
    const/4 v5, -0x1

    .line 2028
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "edit position: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2029
    iput v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    .line 2031
    if-nez p1, :cond_2

    .line 2032
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_0

    .line 2033
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 2034
    .restart local p1
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2035
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2037
    :cond_0
    if-eqz p1, :cond_1

    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2038
    const-string v2, "GroupEditorFragment"

    const-string v3, "editMember mListMembersToAdd.contains(member)"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2040
    .local v0, index:I
    if-eq v0, v5, :cond_1

    .line 2041
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2062
    .end local v0           #index:I
    :cond_1
    :goto_0
    return-void

    .line 2047
    :cond_2
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-le v2, p2, :cond_4

    .line 2048
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 2049
    .local v1, memberAdd:Lcom/android/contacts/group/GroupEditorFragment$Member;
    if-eqz v1, :cond_3

    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2050
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2051
    .restart local v0       #index:I
    if-eq v0, v5, :cond_3

    .line 2053
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v2, v0, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2056
    .end local v0           #index:I
    :cond_3
    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2057
    const-string v2, "GroupEditorFragment"

    const-string v3, "editMember"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2060
    .end local v1           #memberAdd:Lcom/android/contacts/group/GroupEditorFragment$Member;
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v2}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2061
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->addNewMember(J)V

    goto :goto_0
.end method

.method private getAccountType()Lcom/android/contacts/model/account/AccountType;
    .locals 3

    .prologue
    .line 506
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/model/AccountTypeManager;->getAccountType(Ljava/lang/String;Ljava/lang/String;)Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    return-object v0
.end method

.method private getUpdatedName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 996
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 997
    .local v0, groupNameFromTextView:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    const/4 v0, 0x0

    .line 1001
    .end local v0           #groupNameFromTextView:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private hasMembershipChange()Z
    .locals 1

    .prologue
    .line 987
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasNameChange()Z
    .locals 2

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private hasValidGroupName(Z)Z
    .locals 1
    .parameter "showTips"

    .prologue
    .line 970
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 971
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->checkEmptyGroupName(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->checkGroupName(Ljava/lang/String;Z)Z

    move-result v0

    .line 976
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isGroupMembershipEditable()Z
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 515
    const/4 v0, 0x0

    .line 517
    :goto_0
    return v0

    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/model/account/AccountType;->isGroupMembershipEditable()Z

    move-result v0

    goto :goto_0
.end method

.method public static isGroupOperationBusy()Z
    .locals 1

    .prologue
    .line 2215
    sget-boolean v0, Lcom/android/contacts/group/GroupEditorFragment;->sIsSavingToGroup:Z

    return v0
.end method

.method private onAccountChosenInternal(Lcom/android/contacts/model/account/AccountWithDataSet;)V
    .locals 4
    .parameter "account"

    .prologue
    .line 467
    iget-object v1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 468
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 469
    iget-object v1, p1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 471
    instance-of v1, p1, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    if-eqz v1, :cond_1

    move-object v1, p1

    .line 472
    check-cast v1, Lcom/mediatek/contacts/model/AccountWithDataSetEx;

    invoke-virtual {v1}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->getSlotId()I

    move-result v1

    iput v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    .line 474
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-static {v1, v2}, Lcom/mediatek/telephony/SimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v0

    .line 475
    .local v0, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v0, :cond_0

    .line 476
    iget-wide v1, v0, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimInfoId:J

    long-to-int v1, v1

    iput v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSimId:I

    .line 478
    :cond_0
    iget-object v1, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCategory:Ljava/lang/String;

    .line 480
    .end local v0           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_1
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-------------mAccountName[onAccountChosen]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-------------mAccountType[onAccountChosen]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-------------mSlotId[onAccountChosen]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSimId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-------------mSimId[onAccountChosen]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-------------mCategory[onAccountChosen]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    .line 487
    return-void
.end method

.method private onAccountSelectorCancelledInternal()V
    .locals 1

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onGroupNotFound()V

    .line 503
    :cond_0
    return-void
.end method

.method private onAddMembersFinished()V
    .locals 3

    .prologue
    .line 2192
    const-string v1, "GroupEditorFragment"

    const-string v2, "get the MemberTask running result, and setup UI"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2193
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    if-nez v1, :cond_0

    .line 2194
    const-string v1, "GroupEditorFragment"

    const-string v2, "Error: mTask should not be null, do nothing"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2209
    :goto_0
    return-void

    .line 2197
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->getResult()Ljava/util/ArrayList;

    move-result-object v0

    .line 2198
    .local v0, newlyAddedMembers:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/contacts/group/GroupEditorFragment$Member;>;"
    if-nez v0, :cond_1

    .line 2199
    const-string v1, "GroupEditorFragment"

    const-string v2, "Some error happened, the task result is null"

    invoke-static {v1, v2}, Lcom/mediatek/contacts/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2203
    :goto_1
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    invoke-virtual {v1}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->abort()V

    .line 2204
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    .line 2206
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/contacts/util/ProgressHandler;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 2207
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/contacts/group/GroupEditorFragment;->sIsSavingToGroup:Z

    goto :goto_0

    .line 2201
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->addMembersToDisplay(Ljava/util/ArrayList;)V

    goto :goto_1
.end method

.method private onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 396
    const-string v0, "action"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 397
    const-string v0, "groupUri"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 398
    const-string v0, "groupId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 400
    const-string v0, "status"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 401
    const-string v0, "accountName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 402
    const-string v0, "accountType"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 403
    const-string v0, "dataSet"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 405
    const-string v0, "groupNameIsReadOnly"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    .line 406
    const-string v0, "originalGroupName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    .line 409
    const-string v0, "groupSlotId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    .line 410
    const-string v0, "mCategory"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCategory:Ljava/lang/String;

    .line 411
    const-string v0, "MemberPosition"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    .line 413
    return-void
.end method

.method private removeMember(Lcom/android/contacts/group/GroupEditorFragment$Member;)V
    .locals 3
    .parameter "member"

    .prologue
    .line 1048
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1049
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1062
    :cond_0
    :goto_0
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1063
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1066
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1069
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {p1}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->removeMember(J)V

    .line 1070
    return-void

    .line 1054
    :cond_2
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1055
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static removeScrubListener(Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    .line 2079
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sScrubListener:Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;

    .line 2080
    return-void
.end method

.method private revert()Z
    .locals 1

    .prologue
    .line 747
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v0

    if-nez v0, :cond_0

    .line 748
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    .line 752
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 750
    :cond_0
    invoke-static {p0}, Lcom/android/contacts/group/GroupEditorFragment$CancelEditDialogFragment;->show(Lcom/android/contacts/group/GroupEditorFragment;)V

    goto :goto_0
.end method

.method private scrubActivity()V
    .locals 3

    .prologue
    .line 1589
    iget v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    if-ltz v0, :cond_1

    .line 1590
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scrubActivity]sScrubListener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/contacts/group/GroupEditorFragment;->sScrubListener:Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",activity fininsh:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sScrubListener:Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;

    if-eqz v0, :cond_0

    .line 1593
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sScrubListener:Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;

    invoke-interface {v0}, Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;->scrubAffinity()V

    .line 1595
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 1597
    :cond_1
    return-void
.end method

.method private selectAccountAndCreateGroup()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 423
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/contacts/model/AccountTypeManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/model/AccountTypeManager;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/contacts/model/AccountTypeManager;->getAccounts(Z)Ljava/util/List;

    move-result-object v0

    .line 426
    .local v0, accounts:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/model/account/AccountWithDataSet;>;"
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 427
    const-string v1, "GroupEditorFragment"

    const-string v2, "No accounts were found."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v1, :cond_0

    .line 429
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v1}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onAccountsNotFound()V

    .line 448
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v3, :cond_2

    .line 437
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 438
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 439
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/model/account/AccountWithDataSet;

    iget-object v1, v1, Lcom/android/contacts/model/account/AccountWithDataSet;->dataSet:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 440
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 444
    :cond_2
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 445
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const v2, 0x7f0c020c

    sget-object v3, Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;->ACCOUNTS_GROUP_WRITABLE:Lcom/android/contacts/util/AccountsListAdapter$AccountListFilter;

    const/4 v4, 0x0

    invoke-static {v1, p0, v2, v3, v4}, Lcom/android/contacts/editor/SelectAccountDialogFragment;->show(Landroid/app/FragmentManager;Landroid/app/Fragment;ILcom/android/contacts/util/AccountsListAdapter$AccountListFilter;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static setScrubListener(Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    .line 2071
    instance-of v0, p0, Lcom/mediatek/contacts/list/ContactsGroupAddMultiContactsFragment;

    if-nez v0, :cond_0

    .line 2072
    const-string v0, "GroupEditorFragment"

    const-string v1, "error."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2076
    :goto_0
    return-void

    .line 2075
    :cond_0
    sput-object p0, Lcom/android/contacts/group/GroupEditorFragment;->sScrubListener:Lcom/android/contacts/group/GroupEditorFragment$ScrubListener;

    goto :goto_0
.end method

.method private setupEditorForAccount()V
    .locals 15

    .prologue
    .line 524
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->getAccountType()Lcom/android/contacts/model/account/AccountType;

    move-result-object v3

    .line 525
    .local v3, accountType:Lcom/android/contacts/model/account/AccountType;
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v6

    .line 526
    .local v6, editable:Z
    const/4 v8, 0x0

    .line 527
    .local v8, isNewEditor:Z
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v11, v6}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;->setIsGroupMembershipEditable(Z)V

    .line 533
    if-eqz v6, :cond_7

    const v9, 0x7f040078

    .line 535
    .local v9, newGroupEditorId:I
    :goto_0
    iget v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    if-eq v9, v11, :cond_8

    .line 536
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v12, "currentEditorForAccount"

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v10

    .line 537
    .local v10, oldEditorView:Landroid/view/View;
    if-eqz v10, :cond_0

    .line 538
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 540
    :cond_0
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const/4 v13, 0x0

    invoke-virtual {v11, v9, v12, v13}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    .line 541
    .local v7, editorView:Landroid/view/View;
    const-string v11, "currentEditorForAccount"

    invoke-virtual {v7, v11}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 542
    const/4 v11, 0x0

    iput-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 543
    iput v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLastGroupEditorId:I

    .line 544
    const/4 v8, 0x1

    .line 552
    .end local v10           #oldEditorView:Landroid/view/View;
    :cond_1
    const v11, 0x7f070141

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    iput-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    .line 553
    const v11, 0x7f070150

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/AutoCompleteTextView;

    iput-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    .line 556
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v11, :cond_9

    .line 557
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Landroid/widget/AutoCompleteTextView;->setThreshold(I)V

    .line 562
    :goto_1
    const v11, 0x102000a

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ListView;

    iput-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    .line 563
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/AdapterView;->setFocusable(Z)V

    .line 564
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListView:Landroid/widget/ListView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 567
    const v11, 0x7f070140

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    if-eqz v11, :cond_4

    .line 568
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/model/account/AccountType;->getDisplayLabel(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 569
    .local v4, accountTypeDisplayLabel:Ljava/lang/CharSequence;
    const v11, 0x7f07013c

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 570
    .local v0, accountIcon:Landroid/widget/ImageView;
    const v11, 0x7f07013a

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 571
    .local v5, accountTypeTextView:Landroid/widget/TextView;
    const v11, 0x7f07013b

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 572
    .local v2, accountNameTextView:Landroid/widget/TextView;
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 574
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-static {v11}, Lcom/android/contacts/model/account/AccountType;->getDisplayAccountName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 577
    .local v1, accountName:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v12, 0x7f0c0109

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 582
    .end local v1           #accountName:Ljava/lang/String;
    :cond_2
    iget-object v11, v3, Lcom/android/contacts/model/account/AccountType;->accountType:Ljava/lang/String;

    invoke-static {v11}, Lcom/mediatek/contacts/model/AccountWithDataSetEx;->isLocalPhone(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 583
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 585
    :cond_3
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    if-ltz v11, :cond_a

    .line 594
    const-string v11, "GroupEditorFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "GroupEditorFragment mSlotId : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    iget v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-virtual {v3, v11, v12}, Lcom/android/contacts/model/account/AccountType;->getDisplayIconBySlotId(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 611
    .end local v0           #accountIcon:Landroid/widget/ImageView;
    .end local v2           #accountNameTextView:Landroid/widget/TextView;
    .end local v4           #accountTypeDisplayLabel:Ljava/lang/CharSequence;
    .end local v5           #accountTypeTextView:Landroid/widget/TextView;
    :cond_4
    :goto_2
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    if-eqz v11, :cond_5

    .line 612
    new-instance v11, Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    const v13, 0x109000a

    invoke-direct {v11, v12, v13}, Lcom/android/contacts/group/SuggestedMemberListAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    .line 614
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 615
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountType(Ljava/lang/String;)V

    .line 616
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setAccountName(Ljava/lang/String;)V

    .line 617
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setDataSet(Ljava/lang/String;)V

    .line 618
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 619
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteTextView:Landroid/widget/AutoCompleteTextView;

    new-instance v12, Lcom/android/contacts/group/GroupEditorFragment$1;

    invoke-direct {v12, p0}, Lcom/android/contacts/group/GroupEditorFragment$1;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v11, v12}, Landroid/widget/AutoCompleteTextView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 641
    const v11, 0x7f070151

    invoke-virtual {v7, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/ImageButton;

    iput-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPicker:Landroid/widget/ImageButton;

    .line 642
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPicker:Landroid/widget/ImageButton;

    new-instance v12, Lcom/android/contacts/group/GroupEditorFragment$2;

    invoke-direct {v12, p0}, Lcom/android/contacts/group/GroupEditorFragment$2;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v11, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 653
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    sget-object v12, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v11, v12}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->updateExistingMembersList(Ljava/util/List;)V

    .line 657
    :cond_5
    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    iget-boolean v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    if-nez v11, :cond_b

    const/4 v11, 0x1

    :goto_3
    invoke-virtual {v12, v11}, Landroid/view/View;->setFocusable(Z)V

    .line 658
    if-eqz v8, :cond_6

    .line 659
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    invoke-virtual {v11, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 661
    :cond_6
    sget-object v11, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 662
    return-void

    .line 533
    .end local v7           #editorView:Landroid/view/View;
    .end local v9           #newGroupEditorId:I
    :cond_7
    const v9, 0x7f040065

    goto/16 :goto_0

    .line 546
    .restart local v9       #newGroupEditorId:I
    :cond_8
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    const-string v12, "currentEditorForAccount"

    invoke-virtual {v11, v12}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v7

    .line 547
    .restart local v7       #editorView:Landroid/view/View;
    if-nez v7, :cond_1

    .line 548
    new-instance v11, Ljava/lang/IllegalStateException;

    const-string v12, "Group editor view not found"

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 559
    :cond_9
    const-string v11, "GroupEditorFragment"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "setupEditorForAccount():mAutoCompleteTextView is null,editable:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 598
    .restart local v0       #accountIcon:Landroid/widget/ImageView;
    .restart local v2       #accountNameTextView:Landroid/widget/TextView;
    .restart local v4       #accountTypeDisplayLabel:Ljava/lang/CharSequence;
    .restart local v5       #accountTypeTextView:Landroid/widget/TextView;
    :cond_a
    iget-object v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v11}, Lcom/android/contacts/model/account/AccountType;->getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v0, v11}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_2

    .line 657
    .end local v0           #accountIcon:Landroid/widget/ImageView;
    .end local v2           #accountNameTextView:Landroid/widget/TextView;
    .end local v4           #accountTypeDisplayLabel:Ljava/lang/CharSequence;
    .end local v5           #accountTypeTextView:Landroid/widget/TextView;
    :cond_b
    const/4 v11, 0x0

    goto :goto_3
.end method

.method private startGroupMetaDataLoader()V
    .locals 4

    .prologue
    .line 368
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 369
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupMetaDataLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 371
    return-void
.end method


# virtual methods
.method public checkOnBackPressedState()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 1532
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-nez v4, :cond_0

    move-object v0, v1

    .line 1538
    .local v0, groupName:Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    if-eqz v4, :cond_3

    .line 1539
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1540
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1541
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x1010355

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c006c

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0c006d

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    new-instance v5, Lcom/android/contacts/group/GroupEditorFragment$6;

    invoke-direct {v5, p0}, Lcom/android/contacts/group/GroupEditorFragment$6;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v4, 0x104

    invoke-virtual {v3, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 1565
    :goto_1
    return v2

    .line 1532
    .end local v0           #groupName:Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1558
    .restart local v0       #groupName:Ljava/lang/String;
    :cond_1
    invoke-direct {p0, v0, v2}, Lcom/android/contacts/group/GroupEditorFragment;->checkGroupName(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v2, v3

    .line 1565
    goto :goto_1
.end method

.method public doDiscard()V
    .locals 0

    .prologue
    .line 1937
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->revert()Z

    .line 1938
    return-void
.end method

.method public editMemberFromContact(JLjava/lang/String;I)V
    .locals 4
    .parameter "rawContactId"
    .parameter "contactId"
    .parameter "position"

    .prologue
    .line 1957
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1958
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "rawContactId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1959
    const-string v1, "memberLookupUri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1960
    const-string v1, "position"

    invoke-virtual {v0, v1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1961
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactRefreshListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 1962
    return-void
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;)V
    .locals 2
    .parameter "action"
    .parameter "groupUri"
    .parameter "intentExtras"

    .prologue
    .line 665
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 666
    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 667
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 668
    iput-object p3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 669
    return-void

    .line 667
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public load(Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;II)V
    .locals 2
    .parameter "action"
    .parameter "groupUri"
    .parameter "intentExtras"
    .parameter "slotId"
    .parameter "simId"

    .prologue
    .line 1477
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    .line 1478
    iput-object p2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    .line 1479
    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-static {v0}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    .line 1480
    iput-object p3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    .line 1481
    iput p4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    .line 1482
    iput p5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSimId:I

    .line 1483
    return-void

    .line 1479
    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public loadMemberToAddToGroup(JLjava/lang/String;)V
    .locals 4
    .parameter "rawContactId"
    .parameter "contactId"

    .prologue
    .line 691
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 692
    .local v0, args:Landroid/os/Bundle;
    const-string v1, "rawContactId"

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 693
    const-string v1, "memberLookupUri"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v1

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContactLoaderListener:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 695
    return-void
.end method

.method public onAccountChosen(Lcom/android/contacts/model/account/AccountWithDataSet;Landroid/os/Bundle;)V
    .locals 3
    .parameter "account"
    .parameter "extraArgs"

    .prologue
    .line 452
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    if-eqz v1, :cond_1

    .line 453
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 454
    .local v0, msg:Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 455
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 464
    .end local v0           #msg:Landroid/os/Message;
    :cond_0
    :goto_0
    return-void

    .line 457
    :cond_1
    const-string v1, "GroupEditorFragment"

    const-string v2, "[onAccountChosen]the handler is null, the fragment onDestroyView cleared the handler"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v1}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onAccountsNotFound()V

    goto :goto_0
.end method

.method public onAccountSelectorCancelled()V
    .locals 2

    .prologue
    .line 491
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    if-eqz v0, :cond_0

    .line 492
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 496
    :goto_0
    return-void

    .line 494
    :cond_0
    const-string v0, "GroupEditorFragment"

    const-string v1, "[onAccountSelectorCancelled] the handler is null, the fragment onDestroyView cleared the handler"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 6
    .parameter "savedInstanceState"

    .prologue
    const/4 v4, 0x0

    .line 317
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 319
    if-eqz p1, :cond_3

    .line 321
    invoke-direct {p0, p1}, Lcom/android/contacts/group/GroupEditorFragment;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 322
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v4, Lcom/android/contacts/group/GroupEditorFragment$Status;->SELECTING_ACCOUNT:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v3, v4, :cond_1

    .line 324
    const-string v3, "GroupEditorFragment"

    const-string v4, "onActivityCreated Status.SELECTING_ACCOUNT"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :goto_0
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-nez v3, :cond_0

    .line 357
    new-instance v3, Lcom/android/contacts/group/GroupEditorFragment$SimReceiver;

    invoke-direct {v3, p0}, Lcom/android/contacts/group/GroupEditorFragment$SimReceiver;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    iput-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 358
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 359
    .local v2, filter:Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.PHB_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    const-string v3, "GroupEditorFragment"

    const-string v4, "registerReceiver mReceiver"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    .end local v2           #filter:Landroid/content/IntentFilter;
    :cond_0
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->getExistTask()Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    move-result-object v3

    iput-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    .line 365
    return-void

    .line 325
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v4, Lcom/android/contacts/group/GroupEditorFragment$Status;->LOADING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-ne v3, v4, :cond_2

    .line 326
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 328
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 330
    :cond_3
    const-string v3, "android.intent.action.EDIT"

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 331
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->clearMembersList()V

    .line 332
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->startGroupMetaDataLoader()V

    goto :goto_0

    .line 333
    :cond_4
    const-string v3, "android.intent.action.INSERT"

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 334
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->clearMembersList()V

    .line 335
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_5

    move-object v0, v4

    .line 337
    .local v0, account:Landroid/accounts/Account;
    :goto_1
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    if-nez v3, :cond_6

    move-object v1, v4

    .line 340
    .local v1, dataSet:Ljava/lang/String;
    :goto_2
    if-eqz v0, :cond_7

    .line 342
    iget-object v3, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    .line 343
    iget-object v3, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    .line 344
    iput-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    .line 345
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->setupEditorForAccount()V

    goto :goto_0

    .line 335
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_5
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v5, "com.android.contacts.extra.ACCOUNT"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/accounts/Account;

    move-object v0, v3

    goto :goto_1

    .line 337
    .restart local v0       #account:Landroid/accounts/Account;
    :cond_6
    iget-object v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIntentExtras:Landroid/os/Bundle;

    const-string v4, "com.android.contacts.extra.DATA_SET"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 348
    .restart local v1       #dataSet:Ljava/lang/String;
    :cond_7
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->selectAccountAndCreateGroup()V

    goto/16 :goto_0

    .line 351
    .end local v0           #account:Landroid/accounts/Account;
    .end local v1           #dataSet:Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown Action String "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". Only support "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.action.EDIT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " or "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.intent.action.INSERT"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v5, 0x1

    .line 1638
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onActivityResult(),requestCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",resultCode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1639
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 1641
    const/16 v2, 0x18

    if-ne p1, v2, :cond_0

    if-eqz p3, :cond_0

    .line 1643
    const-string v2, "com.mediatek.contacts.list.pickcontactsresult"

    invoke-virtual {p3, v2}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    .line 1645
    .local v0, contactIds:[J
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/util/ProgressHandler;->showDialog(Landroid/app/FragmentManager;)V

    .line 1646
    sput-boolean v5, Lcom/android/contacts/group/GroupEditorFragment;->sIsSavingToGroup:Z

    .line 1648
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1649
    .local v1, params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1650
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1651
    invoke-static {}, Lcom/android/contacts/group/GroupEditorFragment$MemberTask;->createNewTask()Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    .line 1652
    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mTask:Lcom/android/contacts/group/GroupEditorFragment$MemberTask;

    new-array v3, v5, [Ljava/util/ArrayList;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v2, v3}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1654
    .end local v0           #contactIds:[J
    .end local v1           #params:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Object;>;"
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .parameter "activity"

    .prologue
    .line 308
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 309
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    .line 310
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 311
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;-><init>(Lcom/android/contacts/group/GroupEditorFragment;Lcom/android/contacts/group/GroupEditorFragment$1;)V

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    .line 312
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "new mMemberListAdapter: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 723
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    const v0, 0x7f10000b

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 727
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 296
    const-string v0, "GroupEditorFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current fragment: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 298
    const v0, 0x7f040077

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    .line 299
    sget-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    if-eqz v0, :cond_0

    .line 300
    const-string v0, "GroupEditorFragment"

    const-string v1, "[onCreateView] there might be some memory leakage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :cond_0
    new-instance v0, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;-><init>(Lcom/android/contacts/group/GroupEditorFragment;)V

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    .line 303
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mRootView:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 1601
    const-string v0, "GroupEditorFragment"

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Lcom/mediatek/contacts/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1602
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 1603
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1604
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1605
    const-string v0, "GroupEditorFragment"

    const-string v1, "unregisterReceiver mReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1607
    :cond_0
    iget-boolean v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSaveCompleted:Z

    if-eqz v0, :cond_1

    .line 1608
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->clearMembersList()V

    .line 1610
    :cond_1
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 1611
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 2085
    invoke-super {p0}, Landroid/app/Fragment;->onDestroyView()V

    .line 2086
    const/4 v0, 0x0

    sput-object v0, Lcom/android/contacts/group/GroupEditorFragment;->sHandler:Lcom/android/contacts/group/GroupEditorFragment$StaticHandler;

    .line 2087
    return-void
.end method

.method public onDoneClicked()V
    .locals 1

    .prologue
    .line 702
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->isGroupMembershipEditable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/group/GroupEditorFragment;->save(I)Z

    .line 718
    :goto_0
    return-void

    .line 716
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->doRevertAction()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 732
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 733
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 740
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 735
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->revert()Z

    move-result v0

    goto :goto_0

    .line 733
    :pswitch_data_0
    .packed-switch 0x7f0701fc
        :pswitch_0
    .end packed-switch
.end method

.method public onResume()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    .line 1942
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume mMemberPosition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    iget v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    if-eq v1, v5, :cond_0

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    if-le v1, v2, :cond_0

    .line 1946
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume mListToDisplay.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    sget-object v1, Lcom/android/contacts/group/GroupEditorFragment;->mListToDisplay:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/contacts/group/GroupEditorFragment$Member;

    .line 1948
    .local v0, member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getRawContactId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/android/contacts/group/GroupEditorFragment$Member;->getContactId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->editMemberFromContact(JLjava/lang/String;I)V

    .line 1949
    iput v5, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    .line 1951
    .end local v0           #member:Lcom/android/contacts/group/GroupEditorFragment$Member;
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberListAdapter:Lcom/android/contacts/group/GroupEditorFragment$MemberListAdapter;

    invoke-virtual {v1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 1952
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->checkMemberTask()V

    .line 1953
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 1954
    return-void
.end method

.method public onSaveCompleted(ZLandroid/net/Uri;)V
    .locals 13
    .parameter "hadChanges"
    .parameter "groupUri"

    .prologue
    .line 917
    iget-object v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/mediatek/contacts/util/ProgressHandler;->dismissDialog(Landroid/app/FragmentManager;)V

    .line 918
    const/4 v9, 0x0

    sput-boolean v9, Lcom/android/contacts/group/GroupEditorFragment;->sIsSavingToGroup:Z

    .line 920
    if-eqz p2, :cond_2

    const/4 v8, 0x1

    .line 921
    .local v8, success:Z
    :goto_0
    const-string v9, "GroupEditorFragment"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onSaveCompleted("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 922
    if-eqz p1, :cond_0

    .line 925
    const-string v9, "GroupEditorFragment"

    const-string v10, "onSaveCompleted hadChanges"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    :cond_0
    if-eqz v8, :cond_4

    if-eqz p2, :cond_4

    .line 930
    invoke-virtual {p2}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v5

    .line 932
    .local v5, requestAuthority:Ljava/lang/String;
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 933
    .local v7, resultIntent:Landroid/content/Intent;
    const-string v9, "contacts"

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 935
    invoke-static {p2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 936
    .local v0, groupId:J
    const-string v9, "content://contacts/groups"

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 937
    .local v3, legacyContentUri:Landroid/net/Uri;
    invoke-static {v3, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 939
    .local v4, legacyUri:Landroid/net/Uri;
    invoke-virtual {v7, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 945
    .end local v0           #groupId:J
    .end local v3           #legacyContentUri:Landroid/net/Uri;
    .end local v4           #legacyUri:Landroid/net/Uri;
    :goto_1
    const/4 v6, -0x1

    .line 951
    .end local v5           #requestAuthority:Ljava/lang/String;
    .local v6, resultCode:I
    :goto_2
    sget-object v9, Lcom/android/contacts/group/GroupEditorFragment$Status;->CLOSING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    iput-object v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 952
    iget-object v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    if-eqz v9, :cond_1

    .line 954
    if-eqz v7, :cond_5

    .line 955
    new-instance v2, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;

    iget-object v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    iget v10, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    iget v11, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSimId:I

    iget-object v12, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-direct {v2, v9, v10, v11, v12}, Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 956
    .local v2, info:Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;
    const-string v9, "AccountCategory"

    invoke-virtual {v7, v9, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 961
    .end local v2           #info:Lcom/android/contacts/activities/PeopleActivity$AccountCategoryInfo;
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    invoke-interface {v9, v6, v7}, Lcom/android/contacts/group/GroupEditorFragment$Listener;->onSaveFinished(ILandroid/content/Intent;)V

    .line 964
    :cond_1
    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/contacts/group/GroupEditorFragment;->mIsSaveCompleted:Z

    .line 966
    const-string v9, "GroupEditorFragment"

    const-string v10, "onSaveCompleted mListMembers.clear()"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    return-void

    .line 920
    .end local v6           #resultCode:I
    .end local v7           #resultIntent:Landroid/content/Intent;
    .end local v8           #success:Z
    :cond_2
    const/4 v8, 0x0

    goto :goto_0

    .line 942
    .restart local v5       #requestAuthority:Ljava/lang/String;
    .restart local v7       #resultIntent:Landroid/content/Intent;
    .restart local v8       #success:Z
    :cond_3
    invoke-virtual {v7, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_1

    .line 947
    .end local v5           #requestAuthority:Ljava/lang/String;
    .end local v7           #resultIntent:Landroid/content/Intent;
    :cond_4
    const/4 v6, 0x0

    .line 948
    .restart local v6       #resultCode:I
    const/4 v7, 0x0

    .restart local v7       #resultIntent:Landroid/content/Intent;
    goto :goto_2

    .line 958
    :cond_5
    const-string v9, "GroupEditorFragment"

    const-string v10, "onSaveCompleted(),the resultIntent is null!!! may be the Group Operation failed!"

    invoke-static {v9, v10}, Lcom/mediatek/contacts/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .parameter "outState"

    .prologue
    .line 375
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 376
    const-string v0, "action"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    const-string v0, "groupUri"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 378
    const-string v0, "groupId"

    iget-wide v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 380
    const-string v0, "status"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 381
    const-string v0, "accountName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    const-string v0, "accountType"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const-string v0, "dataSet"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    const-string v0, "groupNameIsReadOnly"

    iget-boolean v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameIsReadOnly:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 386
    const-string v0, "originalGroupName"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    const-string v0, "groupSlotId"

    iget v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 390
    const-string v0, "mCategory"

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mCategory:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    const-string v0, "MemberPosition"

    iget v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mMemberPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 393
    return-void
.end method

.method processAirplaneModeChanged(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1569
    const-string v1, "state"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1570
    .local v0, isAirplaneModeOn:Z
    const-string v1, "GroupEditorFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[processAirplaneModeChanged]isAirplaneModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1571
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/model/account/AccountType;->isAccountTypeIccCard(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1572
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->clearMembersList()V

    .line 1574
    :cond_0
    if-eqz v0, :cond_1

    .line 1575
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->scrubActivity()V

    .line 1577
    :cond_1
    return-void
.end method

.method processPhbStateChange(Landroid/content/Intent;)V
    .locals 5
    .parameter "intent"

    .prologue
    .line 1580
    const-string v2, "ready"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1581
    .local v0, phbReady:Z
    const-string v2, "simId"

    const/16 v3, -0xa

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1582
    .local v1, slotId:I
    const-string v2, "GroupEditorFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[processPhbStateChange]phbReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|slotId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1583
    if-nez v0, :cond_0

    .line 1584
    invoke-direct {p0}, Lcom/android/contacts/group/GroupEditorFragment;->scrubActivity()V

    .line 1586
    :cond_0
    return-void
.end method

.method public save(I)Z
    .locals 1
    .parameter "saveMode"

    .prologue
    .line 792
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/contacts/group/GroupEditorFragment;->save(IZ)Z

    move-result v0

    return v0
.end method

.method public save(IZ)Z
    .locals 23
    .parameter "saveMode"
    .parameter "showErrorTips"

    .prologue
    .line 804
    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/contacts/group/GroupEditorFragment;->checkSimServiceState(Z)Z

    move-result v3

    if-nez v3, :cond_1

    .line 805
    if-nez p1, :cond_0

    .line 806
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 808
    :cond_0
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZLandroid/net/Uri;)V

    .line 809
    const/4 v3, 0x1

    .line 912
    :goto_0
    return v3

    .line 812
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/contacts/group/GroupEditorFragment;->hasValidGroupName(Z)Z

    move-result v3

    if-eqz v3, :cond_2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    sget-object v4, Lcom/android/contacts/group/GroupEditorFragment$Status;->EDITING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    if-eq v3, v4, :cond_3

    .line 813
    :cond_2
    const/4 v3, 0x0

    goto :goto_0

    .line 817
    :cond_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 820
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasNameChange()Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->hasMembershipChange()Z

    move-result v3

    if-nez v3, :cond_4

    .line 821
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupUri:Landroid/net/Uri;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v4}, Lcom/android/contacts/group/GroupEditorFragment;->onSaveCompleted(ZLandroid/net/Uri;)V

    .line 822
    const/4 v3, 0x1

    goto :goto_0

    .line 825
    :cond_4
    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment$Status;->SAVING:Lcom/android/contacts/group/GroupEditorFragment$Status;

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment;->mStatus:Lcom/android/contacts/group/GroupEditorFragment$Status;

    .line 827
    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 829
    .local v2, activity:Landroid/app/Activity;
    if-nez v2, :cond_5

    .line 830
    const/4 v3, 0x0

    goto :goto_0

    .line 832
    :cond_5
    const/16 v22, 0x0

    .line 833
    .local v22, saveIntent:Landroid/content/Intent;
    const-string v3, "android.intent.action.INSERT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 844
    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v5

    .line 845
    .local v5, membersToAddArray:[J
    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->convertSimIndexToArray(Ljava/util/List;)[I

    move-result-object v8

    .line 847
    .local v8, simIndexArray:[I
    new-instance v3, Lcom/android/contacts/model/account/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    invoke-direct {v3, v4, v6, v7}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupNameView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "saveCompleted"

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-static/range {v2 .. v9}, Lcom/android/contacts/ContactSaveService;->createNewGroupIntent(Landroid/content/Context;Lcom/android/contacts/model/account/AccountWithDataSet;Ljava/lang/String;[JLjava/lang/Class;Ljava/lang/String;[II)Landroid/content/Intent;

    move-result-object v22

    .line 908
    .end local v8           #simIndexArray:[I
    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment;->mProgressHandler:Lcom/mediatek/contacts/util/ProgressHandler;

    invoke-virtual/range {p0 .. p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/mediatek/contacts/util/ProgressHandler;->showDialog(Landroid/app/FragmentManager;)V

    .line 909
    const/4 v3, 0x1

    sput-boolean v3, Lcom/android/contacts/group/GroupEditorFragment;->sIsSavingToGroup:Z

    .line 911
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 912
    const/4 v3, 0x1

    goto/16 :goto_0

    .line 857
    .end local v5           #membersToAddArray:[J
    :cond_6
    const-string v3, "android.intent.action.EDIT"

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 859
    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v5

    .line 861
    .restart local v5       #membersToAddArray:[J
    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToAdd:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->convertSimIndexToArray(Ljava/util/List;)[I

    move-result-object v19

    .line 864
    .local v19, simIndexToAddArray:[I
    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->convertToArray(Ljava/util/List;)[J

    move-result-object v14

    .line 866
    .local v14, membersToRemoveArray:[J
    sget-object v3, Lcom/android/contacts/group/GroupEditorFragment;->mListMembersToRemove:Ljava/util/ArrayList;

    invoke-static {v3}, Lcom/android/contacts/group/GroupEditorFragment;->convertSimIndexToArray(Ljava/util/List;)[I

    move-result-object v20

    .line 877
    .local v20, simIndexToRemoveArray:[I
    const-string v3, "GroupEditorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[edit] slotId"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 878
    const-string v3, "GroupEditorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[edit] getUpdatedName"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    if-eqz v5, :cond_7

    .line 881
    const-string v3, "GroupEditorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[edit] membersToAddArray.len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v5

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    :cond_7
    if-eqz v19, :cond_8

    .line 884
    const-string v3, "GroupEditorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[edit] simIndexToAddArray.len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v19

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :cond_8
    if-eqz v14, :cond_9

    .line 887
    const-string v3, "GroupEditorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[edit] membersToRemoveArray.len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v6, v14

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 889
    :cond_9
    if-eqz v20, :cond_a

    .line 890
    const-string v3, "GroupEditorFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[edit] simIndexToRemoveArray.len:"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v20

    array-length v6, v0

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    :cond_a
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/contacts/group/GroupEditorFragment;->mGroupId:J

    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/group/GroupEditorFragment;->getUpdatedName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v15

    const-string v16, "saveCompleted"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mOriginalGroupName:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/contacts/group/GroupEditorFragment;->mSlotId:I

    move/from16 v18, v0

    new-instance v21, Lcom/android/contacts/model/account/AccountWithDataSet;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAccountType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/group/GroupEditorFragment;->mDataSet:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-direct {v0, v3, v4, v6}, Lcom/android/contacts/model/account/AccountWithDataSet;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v9, v2

    move-object v13, v5

    invoke-static/range {v9 .. v21}, Lcom/android/contacts/ContactSaveService;->createGroupUpdateIntent(Landroid/content/Context;JLjava/lang/String;[J[JLjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I[I[ILcom/android/contacts/model/account/AccountWithDataSet;)Landroid/content/Intent;

    move-result-object v22

    .line 904
    goto/16 :goto_1

    .line 905
    .end local v5           #membersToAddArray:[J
    .end local v14           #membersToRemoveArray:[J
    .end local v19           #simIndexToAddArray:[I
    .end local v20           #simIndexToRemoveArray:[I
    :cond_b
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid intent action type "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/contacts/group/GroupEditorFragment;->mAction:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public setContentResolver(Landroid/content/ContentResolver;)V
    .locals 2
    .parameter "resolver"

    .prologue
    .line 416
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    .line 417
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    if-eqz v0, :cond_0

    .line 418
    iget-object v0, p0, Lcom/android/contacts/group/GroupEditorFragment;->mAutoCompleteAdapter:Lcom/android/contacts/group/SuggestedMemberListAdapter;

    iget-object v1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v1}, Lcom/android/contacts/group/SuggestedMemberListAdapter;->setContentResolver(Landroid/content/ContentResolver;)V

    .line 420
    :cond_0
    return-void
.end method

.method public setListener(Lcom/android/contacts/group/GroupEditorFragment$Listener;)V
    .locals 0
    .parameter "value"

    .prologue
    .line 698
    iput-object p1, p0, Lcom/android/contacts/group/GroupEditorFragment;->mListener:Lcom/android/contacts/group/GroupEditorFragment$Listener;

    .line 699
    return-void
.end method

.class public Lcom/android/contacts/calllog/CallLogFragment;
.super Landroid/app/ListFragment;
.source "CallLogFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;
.implements Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;,
        Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;,
        Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;
    }
.end annotation


# static fields
.field private static final EMPTY_LOADER_ID:I = 0x0

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field private static final FLAG_FILTER_MODE_AUTO_REJECTED:I = 0x1

.field private static final FLAG_FILTER_MODE_NORMAL:I = 0x0

.field public static ISTABLET_LAND:Z = false

.field private static final PROVIDER_STATUS_CHANGING_LOCALE:I = 0x4e2

.field private static final PROVIDER_STATUS_UPGRATING:I = 0x4e3

.field private static final SETFIRSTTAG:I = 0x65

.field private static final SIM_INFO_UPDATE_MESSAGE:I = 0x64

.field private static final TAB_INDEX_CALL_LOG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "CallLogFragment"

.field private static final WAITING_DESCRIPTION_PADDING:I = 0xa

.field private static final WAIT_CURSOR_DELAY_TIME:J = 0x1f4L

.field private static final WAIT_CURSOR_START:I = 0x4ce

.field private static mPosition:I


# instance fields
.field private convertView:Landroid/view/View;

.field private divider:Landroid/view/View;

.field public handle:Landroid/os/Handler;

.field private historyList:Landroid/widget/ListView;

.field private icon:Landroid/widget/ImageView;

.field private mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallDetail:Landroid/view/View;

.field private mCallLogFetched:Z

.field private final mCallLogObserver:Landroid/database/ContentObserver;

.field private mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

.field private mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private final mContactsObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mControls:Landroid/view/View;

.field private mConvertView1:Landroid/view/View;

.field private mConvertView2:Landroid/view/View;

.field private mEmptyLoaderRunning:Z

.field private mEmptyTitle:Landroid/widget/TextView;

.field private final mFourthActionListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasSms:Z

.field private mHeader:Landroid/view/View;

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mIsFinished:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLayoutSearchbutton:Landroid/widget/LinearLayout;

.field private mLoadingContact:Landroid/widget/TextView;

.field private mLoadingContainer:Landroid/view/View;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mMenuVisible:Z

.field private mModeFlag:I

.field private mNoticeText:Landroid/widget/TextView;

.field private mNoticeTextDivider:Landroid/view/View;

.field private mNumber:Ljava/lang/String;

.field private mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

.field private mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private mPhoto:Landroid/view/View;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mProgress:Landroid/widget/ProgressBar;

.field private mRefreshDataRequired:Z

.field mResources:Landroid/content/res/Resources;

.field private mScrollToTop:Z

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field public mSelectResDialog:Landroid/app/AlertDialog;

.field private mSeparator:Landroid/view/View;

.field private mSeparator01:Landroid/view/View;

.field private mSeparator02:Landroid/view/View;

.field private mSimName:Landroid/widget/TextView;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private final mThirdActionListener:Landroid/view/View$OnClickListener;

.field private mTypeFilterAll:Landroid/widget/Button;

.field private mTypeFilterIncoming:Landroid/widget/Button;

.field private mTypeFilterMissed:Landroid/widget/Button;

.field private mTypeFilterOutgoing:Landroid/widget/Button;

.field private mViewRestored:Landroid/view/View;

.field private mVoicemailSourcesAvailable:Z

.field private mVoicemailStatusFetched:Z

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

.field private mainAction:Landroid/view/View;

.field private text:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 158
    sput v0, Lcom/android/contacts/calllog/CallLogFragment;->mPosition:I

    .line 193
    sput-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 123
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 141
    iput-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    .line 155
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHasSms:Z

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;

    .line 210
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    .line 211
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$CustomContentObserver;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    .line 212
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    .line 324
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$1;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->handle:Landroid/os/Handler;

    .line 1005
    iput v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mModeFlag:I

    .line 1007
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$3;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    .line 1926
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$5;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$5;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 1954
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$6;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$6;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1966
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$7;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$7;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 1977
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$8;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mThirdActionListener:Landroid/view/View$OnClickListener;

    .line 1985
    new-instance v0, Lcom/android/contacts/calllog/CallLogFragment$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/calllog/CallLogFragment$9;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mFourthActionListener:Landroid/view/View$OnClickListener;

    .line 2008
    return-void
.end method

.method static synthetic access$002(Lcom/android/contacts/calllog/CallLogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    return p1
.end method

.method static synthetic access$1000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/contacts/calllog/CallLogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ProgressBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mProgress:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateCallLogNotice()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/contacts/calllog/CallLogFragment;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/calllog/CallLogFragment;Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/PhoneCallDetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListItemView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/contacts/calllog/CallLogFragment;Lcom/mediatek/contacts/calllog/CallLogListItemView;)Lcom/mediatek/contacts/calllog/CallLogListItemView;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/contacts/calllog/CallLogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHasSms:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/calllog/CallLogFragment;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->setSimInfo(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/contacts/calllog/CallLogFragment;Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->configureCallButton(Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/android/contacts/calllog/CallLogFragment;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$2702(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$2802(Lcom/android/contacts/calllog/CallLogFragment;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/android/contacts/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/contacts/calllog/CallLogFragment;)Lcom/mediatek/contacts/calllog/CallLogListAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->historyList:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHeader:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoto:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/contacts/calllog/CallLogFragment;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->loadContactPhotos(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallDetail:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator02:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/contacts/calllog/CallLogFragment;Landroid/content/Intent;)[Landroid/net/Uri;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/contacts/calllog/CallLogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$4100(Lcom/android/contacts/calllog/CallLogFragment;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4202(Lcom/android/contacts/calllog/CallLogFragment;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/contacts/calllog/CallLogFragment;[Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->updateData([Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/contacts/calllog/CallLogFragment;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/contacts/calllog/CallLogFragment;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/contacts/calllog/CallLogFragment;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 123
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/contacts/calllog/CallLogFragment;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 123
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyTitle:Landroid/widget/TextView;

    return-object v0
.end method

.method private adjustSearchButtonAndNoticeText(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustSearchButtonAndNoticeText(), view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 1105
    if-nez p1, :cond_1

    .line 1106
    iget v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mModeFlag:I

    if-eq v3, v1, :cond_0

    .line 1107
    iput v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mModeFlag:I

    .line 1108
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1110
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v1, "calllog_type_filter"

    const/16 v2, 0x4e35

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1111
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1112
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLayoutSearchbutton:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1114
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 1115
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1129
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    :cond_0
    :goto_0
    return-void

    .line 1123
    :cond_1
    iget v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mModeFlag:I

    if-eqz v1, :cond_2

    .line 1124
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLayoutSearchbutton:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1125
    iput v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mModeFlag:I

    .line 1128
    :cond_2
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateCallLogNotice()V

    goto :goto_0
.end method

.method private changeButton(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    const v3, 0x7f020019

    const v2, 0x7f020018

    .line 1058
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "changeButton(), view = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 1075
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->adjustSearchButtonAndNoticeText(Landroid/view/View;)V

    .line 1077
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mViewRestored:Landroid/view/View;

    .line 1078
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterAll:Landroid/widget/Button;

    if-eq p1, v0, :cond_0

    .line 1079
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterAll:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1084
    :goto_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterOutgoing:Landroid/widget/Button;

    if-eq p1, v0, :cond_1

    .line 1085
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterOutgoing:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1090
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterIncoming:Landroid/widget/Button;

    if-eq p1, v0, :cond_2

    .line 1091
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterIncoming:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1096
    :goto_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterMissed:Landroid/widget/Button;

    if-eq p1, v0, :cond_3

    .line 1097
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterMissed:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1101
    :goto_3
    return-void

    .line 1081
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterAll:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    .line 1087
    :cond_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterOutgoing:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_1

    .line 1093
    :cond_2
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterIncoming:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_2

    .line 1099
    :cond_3
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterMissed:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_3
.end method

.method private configureCallButton(Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;)V
    .locals 14
    .parameter "entry"

    .prologue
    const v13, 0x7f09004c

    const/16 v12, 0x8

    const/4 v11, 0x0

    .line 1812
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1813
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mainAction:Landroid/view/View;

    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1814
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mainAction:Landroid/view/View;

    invoke-virtual {v9, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1815
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mainAction:Landroid/view/View;

    iget-object v10, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->primaryDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1816
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mainAction:Landroid/view/View;

    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1817
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    if-eqz v9, :cond_0

    .line 1818
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->icon:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v9, v10}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1819
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->icon:Landroid/widget/ImageView;

    iget v10, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryIcon:I

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1820
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1821
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1822
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->icon:Landroid/widget/ImageView;

    iget-object v10, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->secondaryDescription:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1823
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->divider:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1828
    :goto_0
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->text:Landroid/widget/TextView;

    iget-object v10, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->text:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1830
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->text:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    invoke-virtual {v9, v10, v11, v11, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1832
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    const v10, 0x7f070052

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1833
    .local v4, label:Landroid/widget/TextView;
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1834
    invoke-virtual {v4, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1845
    :goto_1
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    const v10, 0x7f070066

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1846
    .local v0, geocode:Landroid/widget/TextView;
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    const v10, 0x7f070065

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1847
    .local v5, labelAndgeocodeView:Landroid/view/View;
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v5, v9, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 1851
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->geocode:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1852
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1858
    :goto_2
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->geocode:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1859
    invoke-virtual {v5, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1873
    :goto_3
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator01:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1875
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator02:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1877
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView1:Landroid/view/View;

    const v10, 0x7f070063

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1878
    .local v6, videoAction:Landroid/view/View;
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->thirdIntent:Landroid/content/Intent;

    if-eqz v9, :cond_5

    .line 1880
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mThirdActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1881
    invoke-virtual {v6, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1882
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->thirdDescription:Ljava/lang/String;

    invoke-virtual {v6, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1883
    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1884
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView1:Landroid/view/View;

    const v10, 0x7f07006a

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    .line 1886
    .local v8, videoText:Landroid/widget/TextView;
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->videoText:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView1:Landroid/view/View;

    const v10, 0x7f07006b

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 1889
    .local v7, videoLabel:Landroid/widget/TextView;
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1890
    invoke-virtual {v7, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1895
    :goto_4
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator01:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1896
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView1:Landroid/view/View;

    invoke-virtual {v9, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1904
    .end local v7           #videoLabel:Landroid/widget/TextView;
    .end local v8           #videoText:Landroid/widget/TextView;
    :goto_5
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->fourthIntent:Landroid/content/Intent;

    if-eqz v9, :cond_7

    .line 1905
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;

    const v10, 0x7f070069

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 1906
    .local v1, ipAction:Landroid/view/View;
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mFourthActionListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v9}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1907
    invoke-virtual {v1, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1908
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->fourthDescription:Ljava/lang/String;

    invoke-virtual {v1, v9}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1909
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;

    const v10, 0x7f07006e

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 1910
    .local v3, ipText:Landroid/widget/TextView;
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->ipText:Ljava/lang/String;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1911
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;

    const v10, 0x7f07006f

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 1912
    .local v2, ipLabel:Landroid/widget/TextView;
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 1913
    invoke-virtual {v2, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1924
    .end local v1           #ipAction:Landroid/view/View;
    .end local v2           #ipLabel:Landroid/widget/TextView;
    .end local v3           #ipText:Landroid/widget/TextView;
    :goto_6
    return-void

    .line 1825
    .end local v0           #geocode:Landroid/widget/TextView;
    .end local v4           #label:Landroid/widget/TextView;
    .end local v5           #labelAndgeocodeView:Landroid/view/View;
    .end local v6           #videoAction:Landroid/view/View;
    :cond_0
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->icon:Landroid/widget/ImageView;

    invoke-virtual {v9, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1826
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->divider:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1836
    .restart local v4       #label:Landroid/widget/TextView;
    :cond_1
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1837
    invoke-virtual {v4, v11}, Landroid/view/View;->setVisibility(I)V

    .line 1839
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f09004a

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v4, v11, v11, v9, v11}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1854
    .restart local v0       #geocode:Landroid/widget/TextView;
    .restart local v5       #labelAndgeocodeView:Landroid/view/View;
    :cond_2
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->geocode:Ljava/lang/CharSequence;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1855
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1861
    :cond_3
    invoke-virtual {v5, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1892
    .restart local v6       #videoAction:Landroid/view/View;
    .restart local v7       #videoLabel:Landroid/widget/TextView;
    .restart local v8       #videoText:Landroid/widget/TextView;
    :cond_4
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1893
    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1898
    .end local v7           #videoLabel:Landroid/widget/TextView;
    .end local v8           #videoText:Landroid/widget/TextView;
    :cond_5
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator01:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1899
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView1:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1915
    .restart local v1       #ipAction:Landroid/view/View;
    .restart local v2       #ipLabel:Landroid/widget/TextView;
    .restart local v3       #ipText:Landroid/widget/TextView;
    :cond_6
    iget-object v9, p1, Lcom/android/contacts/calllog/CallLogFragment$ViewEntry;->label:Ljava/lang/CharSequence;

    invoke-virtual {v2, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1916
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6

    .line 1919
    .end local v1           #ipAction:Landroid/view/View;
    .end local v2           #ipLabel:Landroid/widget/TextView;
    .end local v3           #ipText:Landroid/widget/TextView;
    :cond_7
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator02:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    .line 1920
    iget-object v9, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;

    invoke-virtual {v9, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_6
.end method

.method private destroyEmptyLoaderIfAllDataFetched()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 391
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailStatusFetched:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    if-eqz v0, :cond_0

    .line 392
    iput-boolean v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 393
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 395
    :cond_0
    return-void
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 1997
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 1998
    const/4 v0, 0x0

    .line 2001
    :goto_0
    return v0

    .line 2000
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 2001
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;
    .locals 9
    .parameter "inten"

    .prologue
    .line 1366
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 1367
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_1

    .line 1370
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1371
    .local v4, queryUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 1372
    .local v0, id:J
    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 1374
    const/4 v7, 0x1

    new-array v6, v7, [Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 1385
    .end local v0           #id:J
    .end local v4           #queryUri:Landroid/net/Uri;
    :cond_0
    return-object v6

    .line 1376
    :cond_1
    const-string v7, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 1377
    .local v2, ids:[J
    array-length v7, v2

    new-array v6, v7, [Landroid/net/Uri;

    .line 1378
    .local v6, uris:[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_0

    .line 1381
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 1382
    .restart local v4       #queryUri:Landroid/net/Uri;
    aget-wide v7, v2, v3

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1378
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 24
    .parameter "callUri"

    .prologue
    .line 2060
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    if-nez v2, :cond_0

    .line 2061
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Cannot find mContext"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2063
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 2067
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/contacts/calllog/CallLogQuery;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 2069
    .local v21, callCursor:Landroid/database/Cursor;
    if-eqz v21, :cond_1

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_3

    .line 2070
    :cond_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find content: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2105
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_2

    .line 2106
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 2074
    :cond_3
    :try_start_1
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/calllog/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v22

    .line 2075
    .local v22, contactInfo:Lcom/android/contacts/calllog/ContactInfo;
    const/16 v2, 0x14

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 2076
    .local v23, photo:Ljava/lang/String;
    const/16 v16, 0x0

    .line 2077
    .local v16, photoUri:Landroid/net/Uri;
    if-eqz v23, :cond_7

    .line 2078
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 2082
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "number = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 2083
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isEmergencyNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 2087
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 2089
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 2090
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/contacts/calllog/ContactInfo;->nNumberTypeId:I

    .line 2091
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 2092
    const/16 v16, 0x0

    .line 2093
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 2096
    :cond_5
    new-instance v2, Lcom/android/contacts/PhoneCallDetails;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v4, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v5, v0, Lcom/android/contacts/calllog/ContactInfo;->countryIso:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v6, v0, Lcom/android/contacts/calllog/ContactInfo;->geocode:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v7, v0, Lcom/android/contacts/calllog/ContactInfo;->type:I

    move-object/from16 v0, v22

    iget-wide v8, v0, Lcom/android/contacts/calllog/ContactInfo;->date:J

    move-object/from16 v0, v22

    iget-wide v10, v0, Lcom/android/contacts/calllog/ContactInfo;->duration:J

    move-object/from16 v0, v22

    iget-object v12, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v13, v0, Lcom/android/contacts/calllog/ContactInfo;->nNumberTypeId:I

    move-object/from16 v0, v22

    iget-object v14, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    move-object/from16 v0, v22

    iget-object v15, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    move/from16 v17, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/contacts/calllog/ContactInfo;->vtCall:I

    move/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/contacts/calllog/ContactInfo;->ipPrefix:Ljava/lang/String;

    move-object/from16 v20, v0

    invoke-direct/range {v2 .. v20}, Lcom/android/contacts/PhoneCallDetails;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Ljava/lang/String;IJJLjava/lang/CharSequence;ILjava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;IIILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2105
    if-eqz v21, :cond_6

    .line 2106
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_6
    return-object v2

    .line 2080
    :cond_7
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;)V
    .locals 4
    .parameter "photoUri"

    .prologue
    .line 1946
    if-nez p1, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1952
    :goto_0
    return-void

    .line 1949
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "log"

    .prologue
    .line 1265
    const-string v0, "CallLogFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1266
    return-void
.end method

.method private refreshData()V
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    if-eqz v0, :cond_0

    .line 888
    const-string v0, "refreshData()"

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 893
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->startCallsQuery()V

    .line 897
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 900
    :cond_0
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnEntry()V

    .line 901
    return-void
.end method

.method private removeMissedCallNotifications()V
    .locals 4

    .prologue
    .line 906
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 908
    .local v1, telephony:Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 909
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->cancelMissedCallsNotification()V

    .line 917
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :goto_0
    return-void

    .line 911
    .restart local v1       #telephony:Lcom/android/internal/telephony/ITelephony;
    :cond_0
    const-string v2, "CallLogFragment"

    const-string v3, "Telephony service is null, can\'t call cancelMissedCallsNotification"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 914
    .end local v1           #telephony:Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 915
    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "CallLogFragment"

    const-string v3, "Failed to clear missed calls notification due to remote exception"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setSimInfo(I)V
    .locals 9
    .parameter "simId"

    .prologue
    const/4 v8, 0x4

    .line 1777
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090065

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1778
    .local v2, rPadding:I
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090066

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1779
    .local v1, lPadding:I
    const/4 v5, 0x1

    .line 1780
    .local v5, tbPadding:I
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1781
    const/4 v6, -0x2

    if-ne p1, v6, :cond_0

    .line 1782
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0200f8

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1783
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0c0019

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1784
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1808
    :goto_0
    return-void

    .line 1785
    :cond_0
    if-nez p1, :cond_1

    .line 1786
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1788
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v4

    .line 1789
    .local v4, simName:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 1790
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1791
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1795
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimColorById(I)I

    move-result v0

    .line 1796
    .local v0, color:I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimBackgroundDarkResByColorId(I)I

    move-result v3

    .line 1797
    .local v3, simColorResId:I
    const/4 v6, -0x1

    if-eq v6, v0, :cond_3

    .line 1798
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1799
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1793
    .end local v0           #color:I
    .end local v3           #simColorResId:I
    :cond_2
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1801
    .restart local v0       #color:I
    .restart local v3       #simColorResId:I
    :cond_3
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    const v7, 0x7f0200f9

    invoke-virtual {v6, v7}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1802
    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v6, v1, v5, v2, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 2
    .parameter "targetView"

    .prologue
    .line 2004
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;

    invoke-direct {v1, p0, p1}, Lcom/android/contacts/calllog/CallLogFragment$PhoneNumberActionModeCallback;-><init>(Lcom/android/contacts/calllog/CallLogFragment;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 2005
    return-void
.end method

.method private updateCallLogNotice()V
    .locals 10

    .prologue
    const v9, 0x7f0c00fb

    const/4 v6, 0x1

    const/16 v5, 0x8

    const/4 v8, 0x0

    .line 2145
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 2146
    .local v0, prefs:Landroid/content/SharedPreferences;
    const-string v3, "calllog_sim_filter"

    const/16 v4, 0x4e21

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 2147
    .local v2, simFilter:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallLogNotice(), simFilter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 2148
    packed-switch v2, :pswitch_data_0

    .line 2167
    :pswitch_0
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v1

    .line 2169
    .local v1, simDisplayName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2170
    if-eqz v1, :cond_1

    .line 2171
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    aput-object v1, v5, v8

    invoke-virtual {v4, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2173
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2174
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2181
    .end local v1           #simDisplayName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 2152
    :pswitch_1
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2153
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2154
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2159
    :pswitch_2
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 2160
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f0c0019

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-virtual {v4, v9, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2162
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2163
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2176
    .restart local v1       #simDisplayName:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2177
    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 2148
    nop

    :pswitch_data_0
    .packed-switch 0x4e21
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 1709
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/calllog/CallLogFragment$1UpdateContactDetailsTask;-><init>(Lcom/android/contacts/calllog/CallLogFragment;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1710
    return-void
.end method

.method private updateOnEntry()V
    .locals 4

    .prologue
    .line 929
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/contacts/calllog/CallLogFragment$2;

    invoke-direct {v1, p0}, Lcom/android/contacts/calllog/CallLogFragment$2;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 936
    return-void
.end method

.method private updateOnExit()V
    .locals 1

    .prologue
    .line 921
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnTransition(Z)V

    .line 922
    return-void
.end method

.method private updateOnTransition(Z)V
    .locals 3
    .parameter "onEntry"

    .prologue
    .line 942
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-nez v1, :cond_2

    .line 948
    if-nez p1, :cond_0

    .line 949
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markMissedCallsAsRead()V

    .line 957
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 958
    .local v0, activity:Landroid/app/Activity;
    instance-of v1, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v1}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFragmentId()I

    move-result v1

    if-ne v2, v1, :cond_2

    .line 962
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 963
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateVoicemailNotifications()V

    .line 965
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v1}, Lcom/android/contacts/calllog/CallLogQueryHandler;->markNewCallsAsOld()V

    .line 966
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->removeMissedCallNotifications()V

    .line 969
    .end local v0           #activity:Landroid/app/Activity;
    :cond_2
    return-void
.end method

.method private updateVoicemailNotifications()V
    .locals 3

    .prologue
    .line 972
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/android/contacts/calllog/CallLogNotificationsService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 973
    .local v0, serviceIntent:Landroid/content/Intent;
    const-string v1, "com.android.contacts.calllog.UPDATE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 974
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 975
    return-void
.end method


# virtual methods
.method public configureScreenFromIntent(Landroid/content/Intent;)V
    .locals 2
    .parameter "newIntent"

    .prologue
    .line 529
    const-string v0, "vnd.android.cursor.dir/calls"

    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    .line 530
    return-void
.end method

.method public fetchCalls()V
    .locals 8

    .prologue
    const/16 v7, 0x4e2b

    const/16 v6, 0x4e21

    .line 620
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 621
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_0

    .line 622
    const-string v4, "CallLogFragment"

    const-string v5, " fetchCalls(), but this.getActivity() is null, use default value"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v4, v6, v7}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCallsJionDataView(II)V

    .line 635
    :goto_0
    return-void

    .line 626
    :cond_0
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 628
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "calllog_sim_filter"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 630
    .local v2, simFilter:I
    const-string v4, "calllog_type_filter"

    invoke-interface {v1, v4, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 632
    .local v3, typeFilter:I
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v4, v2, v3}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCallsJionDataView(II)V

    goto :goto_0
.end method

.method getAdapter()Lcom/mediatek/contacts/calllog/CallLogListAdapter;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    return-object v0
.end method

.method public isAutoRejectedFilterMode()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 1269
    iget v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mModeFlag:I

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackHandled()V
    .locals 3

    .prologue
    .line 1273
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBackHandled() Mode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mModeFlag:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " View:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mViewRestored:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->isAutoRejectedFilterMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1275
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mViewRestored:Landroid/view/View;

    if-nez v0, :cond_0

    .line 1276
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterAll:Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mViewRestored:Landroid/view/View;

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mViewRestored:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->onClick(Landroid/view/View;)V

    .line 1280
    :cond_1
    return-void
.end method

.method public onCallsDeleted()V
    .locals 1

    .prologue
    .line 1054
    const-string v0, "onCallsDeleted(), do nothing"

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 1055
    return-void
.end method

.method public onCallsFetched(Landroid/database/Cursor;)V
    .locals 7
    .parameter "cursor"

    .prologue
    const/4 v4, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCallsFetched(), cursor = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 256
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 322
    :cond_0
    :goto_0
    return-void

    .line 259
    :cond_1
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v2, v5}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 260
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 262
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 263
    .local v0, activity:Landroid/app/Activity;
    instance-of v2, v0, Lcom/android/contacts/activities/DialtactsActivity;

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    check-cast v2, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v2}, Lcom/android/contacts/activities/DialtactsActivity;->getCurrentFragmentId()I

    move-result v2

    if-ne v4, v2, :cond_2

    .line 267
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 269
    :cond_2
    iget-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    if-eqz v2, :cond_3

    .line 270
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 294
    .local v1, listView:Landroid/widget/ListView;
    invoke-virtual {v1, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 295
    iput-boolean v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mScrollToTop:Z

    .line 297
    .end local v1           #listView:Landroid/widget/ListView;
    :cond_3
    iput-boolean v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogFetched:Z

    .line 300
    const-string v2, "CallLogFragment"

    const-string v3, "onCallsFetched is call"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    iput-boolean v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z

    .line 302
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x10a0001

    invoke-static {v3, v4}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 304
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 305
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 306
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 308
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallDetail:Landroid/view/View;

    if-eqz v2, :cond_5

    .line 309
    if-eqz p1, :cond_4

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-nez v2, :cond_6

    .line 310
    :cond_4
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 316
    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyTitle:Landroid/widget/TextView;

    const v3, 0x7f0c017d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 319
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->destroyEmptyLoaderIfAllDataFetched()V

    .line 321
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->handle:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 312
    :cond_6
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallDetail:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 1133
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 1134
    .local v1, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(), view id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1138
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const v2, 0x7f07007a

    if-eq v1, v2, :cond_0

    const v2, 0x7f070080

    if-eq v1, v2, :cond_0

    const v2, 0x7f07007d

    if-eq v1, v2, :cond_0

    const v2, 0x7f070083

    if-ne v1, v2, :cond_1

    .line 1140
    :cond_0
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    if-eqz v2, :cond_1

    .line 1142
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    invoke-virtual {v2}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getSelectImageView()Landroid/widget/ImageView;

    move-result-object v2

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1143
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 1144
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 1148
    :cond_1
    sparse-switch v1, :sswitch_data_0

    .line 1168
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1169
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateCallLogNotice()V

    .line 1170
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mRefreshDataRequired:Z

    .line 1171
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 1172
    return-void

    .line 1150
    :sswitch_0
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2b

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1151
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1154
    :sswitch_1
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2e

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1155
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1158
    :sswitch_2
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2c

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1159
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1162
    :sswitch_3
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2d

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1163
    invoke-direct {p0, p1}, Lcom/android/contacts/calllog/CallLogFragment;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 1148
    :sswitch_data_0
    .sparse-switch
        0x7f07007a -> :sswitch_0
        0x7f07007d -> :sswitch_2
        0x7f070080 -> :sswitch_1
        0x7f070083 -> :sswitch_3
    .end sparse-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 1351
    const-string v0, "onContextItemSelected()"

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 1352
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/CallListExtension;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter "state"

    .prologue
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 220
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 223
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Contacts] loading data start time: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v0, Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/contacts/calllog/CallLogQueryHandler;-><init>(Landroid/content/ContentResolver;Lcom/android/contacts/calllog/CallLogQueryHandler$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    .line 227
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 229
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 231
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v5, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 233
    invoke-virtual {p0, v5}, Landroid/app/Fragment;->setHasOptionsMenu(Z)V

    .line 235
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 239
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 240
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mInflater:Landroid/view/LayoutInflater;

    .line 241
    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mResources:Landroid/content/res/Resources;

    .line 242
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 243
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 244
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 246
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    .line 247
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAudioManager:Landroid/media/AudioManager;

    .line 249
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/contacts/ext/CallListExtension;->onCreate(Landroid/app/ListFragment;)V

    .line 250
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter "menu"
    .parameter "view"
    .parameter "menuInfo"

    .prologue
    .line 1343
    const-string v0, "onCreateContextMenu()"

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 1344
    invoke-super {p0, p1, p2, p3}, Landroid/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1346
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/contacts/ext/CallListExtension;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)Z

    .line 1347
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .parameter "menu"
    .parameter "inflater"

    .prologue
    .line 674
    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 675
    const v0, 0x7f100004

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 676
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10
    .parameter "inflater"
    .parameter "container"
    .parameter "savedState"

    .prologue
    const v9, 0x7f07004a

    const/16 v8, 0xa

    const/4 v7, 0x1

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 415
    const v2, 0x7f040012

    invoke-virtual {p1, v2, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 425
    .local v1, view:Landroid/view/View;
    const v2, 0x7f07007a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterAll:Landroid/widget/Button;

    .line 426
    const v2, 0x7f070080

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterOutgoing:Landroid/widget/Button;

    .line 427
    const v2, 0x7f07007d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterIncoming:Landroid/widget/Button;

    .line 428
    const v2, 0x7f070083

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterMissed:Landroid/widget/Button;

    .line 431
    const v2, 0x7f070085

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeText:Landroid/widget/TextView;

    .line 432
    const v2, 0x7f070086

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mNoticeTextDivider:Landroid/view/View;

    .line 433
    const v2, 0x7f070079

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLayoutSearchbutton:Landroid/widget/LinearLayout;

    .line 435
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterAll:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 436
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterOutgoing:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 437
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterIncoming:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 438
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterMissed:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 441
    const v2, 0x7f0701da

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContainer:Landroid/view/View;

    .line 442
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContainer:Landroid/view/View;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 443
    const v2, 0x1020004

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyTitle:Landroid/widget/TextView;

    .line 444
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyTitle:Landroid/widget/TextView;

    const v3, 0x7f0c017d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 445
    const v2, 0x7f0701dc

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    .line 446
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 447
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const v4, 0x1030042

    invoke-virtual {v2, v3, v4}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    .line 448
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v8, v5, v8, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 449
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setGravity(I)V

    .line 450
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mLoadingContact:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 451
    const v2, 0x7f0701db

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 452
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mProgress:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 454
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 456
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "calllog_type_filter"

    const/16 v3, 0x4e2b

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 457
    const-string v2, "calllog_sim_filter"

    const/16 v3, 0x4e25

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 458
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 459
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mTypeFilterAll:Landroid/widget/Button;

    invoke-direct {p0, v2}, Lcom/android/contacts/calllog/CallLogFragment;->changeButton(Landroid/view/View;)V

    .line 462
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/util/PhoneCapabilityTester;->isUsingTwoPanes(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 464
    sput-boolean v7, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    .line 469
    :goto_0
    sget-boolean v2, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    if-eqz v2, :cond_0

    .line 470
    const v2, 0x7f07004c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHeaderTextView:Landroid/widget/TextView;

    .line 471
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHeaderOverlayView:Landroid/view/View;

    .line 472
    const v2, 0x7f07004b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMainActionView:Landroid/widget/ImageView;

    .line 473
    const v2, 0x7f07004d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 474
    const v2, 0x7f070048

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 475
    const v2, 0x7f070062

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSimName:Landroid/widget/TextView;

    .line 476
    const v2, 0x7f07004f

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    .line 477
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    const v3, 0x7f070054

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->icon:Landroid/widget/ImageView;

    .line 478
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    const v3, 0x7f070053

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->divider:Landroid/view/View;

    .line 479
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    const v3, 0x7f070051

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->text:Landroid/widget/TextView;

    .line 480
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->convertView:Landroid/view/View;

    const v3, 0x7f070050

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mainAction:Landroid/view/View;

    .line 481
    const v2, 0x7f070044

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->historyList:Landroid/widget/ListView;

    .line 482
    const v2, 0x7f070045

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mControls:Landroid/view/View;

    .line 483
    const v2, 0x7f070047

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mPhoto:Landroid/view/View;

    .line 484
    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHeader:Landroid/view/View;

    .line 485
    const v2, 0x7f070049

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator:Landroid/view/View;

    .line 486
    const v2, 0x7f070043

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallDetail:Landroid/view/View;

    .line 487
    const v2, 0x7f07005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator01:Landroid/view/View;

    .line 488
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator01:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 489
    const v2, 0x7f07005e

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator02:Landroid/view/View;

    .line 490
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSeparator02:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 491
    const v2, 0x7f070068

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView1:Landroid/view/View;

    .line 492
    const v2, 0x7f07006d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mConvertView2:Landroid/view/View;

    .line 494
    :cond_0
    return-object v1

    .line 466
    :cond_1
    sput-boolean v5, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    goto/16 :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 601
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 606
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/contacts/calllog/CallLogAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 607
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 608
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mContactsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 610
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->unregisterForSimInfoUpdate(Landroid/os/Handler;)V

    .line 611
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ext/CallListExtension;->onDestroy()V

    .line 612
    return-void
.end method

.method public onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 11
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 1283
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/contacts/ext/CallListExtension;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1334
    :goto_0
    return-void

    .line 1286
    :cond_0
    invoke-super/range {p0 .. p5}, Landroid/app/ListFragment;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 1287
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v7

    .line 1288
    .local v7, count:I
    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    if-nez v0, :cond_2

    .line 1289
    :cond_1
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "CallLogFragment exception"

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_2
    move-object v10, p2

    .line 1292
    check-cast v10, Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 1293
    .local v10, itemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    .line 1294
    .local v6, context:Landroid/content/Context;
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "context is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1296
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/contacts/calllog/IntentProvider;

    if-nez v0, :cond_3

    .line 1297
    const-string v0, "onListItemClick(), v.getTag() is not instance of IntentProvider, just return"

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1301
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/contacts/calllog/IntentProvider;

    .line 1302
    .local v9, intentProvider:Lcom/android/contacts/calllog/IntentProvider;
    if-eqz v9, :cond_8

    .line 1303
    invoke-virtual {v9, v6}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 1304
    .local v8, in:Landroid/content/Intent;
    if-nez v8, :cond_4

    .line 1305
    const-string v0, "CallLogFragment"

    const-string v1, "error, intent is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1309
    :cond_4
    const-string v0, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v8, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1310
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-lez v0, :cond_5

    .line 1311
    const v0, 0x7f0c02bf

    invoke-static {v6, v0}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 1312
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AudioMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->getMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1317
    :cond_5
    const-string v0, "follow_sim_management"

    const/4 v1, 0x1

    invoke-virtual {v8, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1318
    sget-boolean v0, Lcom/android/contacts/calllog/CallLogFragment;->ISTABLET_LAND:Z

    if-eqz v0, :cond_9

    .line 1319
    if-eqz v10, :cond_7

    .line 1321
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v0}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->getSelectedPosition()I

    move-result v0

    invoke-virtual {v10}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    if-eq v0, v1, :cond_6

    .line 1322
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    invoke-virtual {v0, v10, v1}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->itemSetSelect(Lcom/mediatek/contacts/calllog/CallLogListItemView;Lcom/mediatek/contacts/calllog/CallLogListItemView;)V

    .line 1324
    :cond_6
    iput-object v10, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 1326
    :cond_7
    invoke-direct {p0, v8}, Lcom/android/contacts/calllog/CallLogFragment;->getCallLogEntryUris(Landroid/content/Intent;)[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/calllog/CallLogFragment;->updateData([Landroid/net/Uri;)V

    .line 1333
    .end local v8           #in:Landroid/content/Intent;
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v10}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    goto/16 :goto_0

    .line 1328
    .restart local v8       #in:Landroid/content/Intent;
    :cond_9
    invoke-virtual {v9, v6}, Lcom/android/contacts/calllog/IntentProvider;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "follow_sim_management"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onOptionsItemSelected(), item id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 755
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 813
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 761
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-class v5, Lcom/mediatek/contacts/activities/CallLogMultipleDeleteActivity;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 763
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 803
    .end local v0           #intent:Landroid/content/Intent;
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 804
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v4, "calllog_sim_filter"

    const/16 v5, 0x4e21

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 806
    .local v2, simFilter:I
    iget-object v4, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    const/16 v5, 0x4e35

    invoke-virtual {v4, v2, v5}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCallsJionDataView(II)V

    .line 808
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/contacts/calllog/CallLogFragment;->changeButton(Landroid/view/View;)V

    goto :goto_0

    .line 755
    nop

    :pswitch_data_0
    .packed-switch 0x7f0701e7
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 6
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 680
    const v2, 0x7f0701e7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 683
    .local v1, itemDeleteAll:Landroid/view/MenuItem;
    if-eqz v1, :cond_1

    .line 684
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v2}, Lcom/android/contacts/calllog/CallLogAdapter;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    move v2, v3

    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 693
    iget-boolean v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mVoicemailSourcesAvailable:Z

    if-nez v2, :cond_0

    .line 694
    const v2, 0x7f0701e5

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 704
    :cond_0
    const v2, 0x7f0701e6

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 707
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/contacts/calllog/CallLogFragment;->isAutoRejectedFilterMode()Z

    move-result v5

    if-nez v5, :cond_3

    :goto_1
    const-string v4, "ExtensionForOP01"

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/ext/CallDetailExtension;->isNeedAutoRejectedMenu(ZLjava/lang/String;)Z

    move-result v0

    .line 710
    .local v0, bShowAutoRejectedMenu:Z
    const v2, 0x7f0701e8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 714
    .end local v0           #bShowAutoRejectedMenu:Z
    :cond_1
    return-void

    :cond_2
    move v2, v4

    .line 684
    goto :goto_0

    :cond_3
    move v3, v4

    .line 707
    goto :goto_1
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 553
    invoke-static {}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getVoiceMailNumber()V

    .line 554
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    .line 555
    const-string v0, "CallLogFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Contacts] loading data end time: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 536
    invoke-virtual {p0}, Landroid/app/Fragment;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/contacts/util/EmptyLoader$Callback;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/contacts/util/EmptyLoader$Callback;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 538
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mEmptyLoaderRunning:Z

    .line 539
    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    .line 541
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v0}, Lcom/android/common/widget/GroupingListAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 542
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 545
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 595
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 596
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 597
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6
    .parameter "view"
    .parameter "savedInstanceState"

    .prologue
    .line 499
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 500
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, currentCountryIso:Ljava/lang/String;
    new-instance v2, Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    new-instance v4, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {v2, v3, p0, v4, p0}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;-><init>(Landroid/content/Context;Lcom/android/contacts/calllog/CallLogAdapter$CallFetcher;Lcom/android/contacts/calllog/ContactInfoHelper;Lcom/android/contacts/calllog/CallLogFragment;)V

    iput-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    .line 503
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {p0, v2}, Landroid/app/ListFragment;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 508
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 509
    .local v1, listView:Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 510
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 511
    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 512
    invoke-virtual {p0, v1}, Landroid/app/Fragment;->registerForContextMenu(Landroid/view/View;)V

    .line 514
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/contacts/ExtensionManager;->getCallListExtension()Lcom/android/contacts/ext/CallListExtension;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/contacts/ext/CallListExtension;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 516
    return-void
.end method

.method public onVoicemailStatusFetched(Landroid/database/Cursor;)V
    .locals 0
    .parameter "statusCursor"

    .prologue
    .line 388
    return-void
.end method

.method public setMenuVisibility(Z)V
    .locals 1
    .parameter "menuVisible"

    .prologue
    .line 873
    invoke-super {p0, p1}, Landroid/app/Fragment;->setMenuVisibility(Z)V

    .line 874
    iget-boolean v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    if-eq v0, p1, :cond_0

    .line 875
    iput-boolean p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mMenuVisible:Z

    .line 876
    if-nez p1, :cond_1

    .line 877
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->updateOnExit()V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 878
    :cond_1
    invoke-virtual {p0}, Landroid/app/Fragment;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 879
    invoke-direct {p0}, Lcom/android/contacts/calllog/CallLogFragment;->refreshData()V

    goto :goto_0
.end method

.method public setOldItemView(Lcom/mediatek/contacts/calllog/CallLogListItemView;)V
    .locals 2
    .parameter "oldItemView"

    .prologue
    .line 1337
    iput-object p1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mOldItemView:Lcom/mediatek/contacts/calllog/CallLogListItemView;

    .line 1338
    iget-object v0, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    invoke-virtual {p1}, Lcom/mediatek/contacts/calllog/CallLogListItemView;->getTagId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/contacts/calllog/CallLogListAdapter;->setSelectedPosition(I)V

    .line 1339
    return-void
.end method

.method public showChoiceResourceDialog()V
    .locals 7

    .prologue
    .line 1175
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1176
    .local v3, res:Landroid/content/res/Resources;
    const v5, 0x7f0c0015

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1178
    .local v4, title:Ljava/lang/String;
    new-instance v1, Lcom/android/contacts/calllog/CallLogFragment$4;

    invoke-direct {v1, p0}, Lcom/android/contacts/calllog/CallLogFragment$4;-><init>(Lcom/android/contacts/calllog/CallLogFragment;)V

    .line 1254
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1256
    .local v2, preference:Landroid/content/SharedPreferences;
    const-string v5, "calllog_sim_filter"

    const/16 v6, 0x4e25

    invoke-interface {v2, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1258
    .local v0, choiceItem:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "showChoiceResourceDialog() choiceItem "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/contacts/calllog/CallLogFragment;->log(Ljava/lang/String;)V

    .line 1259
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5, v4, v0, v1}, Lcom/mediatek/contacts/widget/SimPickerDialog;->createSingleChoice(Landroid/content/Context;Ljava/lang/String;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog;

    move-result-object v5

    iput-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectResDialog:Landroid/app/AlertDialog;

    .line 1261
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mSelectResDialog:Landroid/app/AlertDialog;

    invoke-virtual {v5}, Landroid/app/Dialog;->show()V

    .line 1262
    return-void
.end method

.method public startCallsQuery()V
    .locals 9

    .prologue
    .line 638
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mAdapter:Lcom/mediatek/contacts/calllog/CallLogListAdapter;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/android/contacts/calllog/CallLogAdapter;->setLoading(Z)V

    .line 643
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-static {v5}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 644
    .local v1, prefs:Landroid/content/SharedPreferences;
    const-string v5, "calllog_sim_filter"

    const/16 v6, 0x4e21

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 645
    .local v2, simFilter:I
    const-string v5, "calllog_type_filter"

    const/16 v6, 0x4e2b

    invoke-interface {v1, v5, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 646
    .local v4, typeFilter:I
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mCallLogQueryHandler:Lcom/android/contacts/calllog/CallLogQueryHandler;

    invoke-virtual {v5, v2, v4}, Lcom/android/contacts/calllog/CallLogQueryHandler;->fetchCallsJionDataView(II)V

    .line 648
    invoke-virtual {p0}, Landroid/app/ListFragment;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/AdapterView;->getCount()I

    move-result v0

    .line 649
    .local v0, count:I
    const-string v5, "CallLogFragment"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "***********************count : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mIsFinished:Z

    .line 652
    invoke-virtual {p0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    check-cast v5, Lcom/android/contacts/activities/DialtactsActivity;

    invoke-virtual {v5}, Lcom/android/contacts/activities/DialtactsActivity;->getProviderStatus()Lcom/android/contacts/list/ProviderStatusWatcher$Status;

    move-result-object v3

    .line 655
    .local v3, status:Lcom/android/contacts/list/ProviderStatusWatcher$Status;
    if-nez v0, :cond_0

    .line 656
    const-string v5, "CallLogFragment"

    const-string v6, "call sendmessage"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object v5, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x4ce

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x1f4

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 659
    invoke-virtual {p0, v3}, Lcom/android/contacts/calllog/CallLogFragment;->updateProviderStauts(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V

    .line 662
    :cond_0
    return-void
.end method

.method public updateProviderStauts(Lcom/android/contacts/list/ProviderStatusWatcher$Status;)V
    .locals 5
    .parameter "providerStatus"

    .prologue
    .line 2117
    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_2

    .line 2118
    :cond_0
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderStauts Error! providerStatus:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    :cond_1
    :goto_0
    return-void

    .line 2121
    :cond_2
    const/4 v0, -0x1

    .line 2122
    .local v0, msgWhat:I
    iget v1, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    packed-switch v1, :pswitch_data_0

    .line 2132
    :pswitch_0
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderStauts needn\'t handle msg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2135
    :goto_1
    const-string v1, "CallLogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateProviderStauts status:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Lcom/android/contacts/list/ProviderStatusWatcher$Status;->status:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msgWhat:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2136
    const/4 v1, -0x1

    if-eq v1, v0, :cond_1

    .line 2137
    iget-object v1, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/contacts/calllog/CallLogFragment;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    .line 2124
    :pswitch_1
    const/16 v0, 0x4e2

    .line 2125
    goto :goto_1

    .line 2128
    :pswitch_2
    const/16 v0, 0x4e3

    .line 2129
    goto :goto_1

    .line 2122
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

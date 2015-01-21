.class public Lcom/android/contacts/CallDetailActivity;
.super Landroid/app/Activity;
.source "CallDetailActivity.java"

# interfaces
.implements Lcom/android/contacts/ProximitySensorAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;,
        Lcom/android/contacts/CallDetailActivity$ViewEntry;,
        Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;,
        Lcom/android/contacts/CallDetailActivity$Tasks;
    }
.end annotation


# static fields
.field static final CALL_LOG_PROJECTION:[Ljava/lang/String; = null

.field static final CALL_SIMID_COLUMN_INDEX:I = 0x6

.field static final CALL_TYPE_COLUMN_INDEX:I = 0x3

.field static final CALL_VT_COLUMN_INDEX:I = 0x7

.field static final COUNTRY_ISO_COLUMN_INDEX:I = 0x4

.field static final DATE_COLUMN_INDEX:I = 0x0

.field static final DURATION_COLUMN_INDEX:I = 0x1

.field public static final EXTRA_CALL_LOG_IDS:Ljava/lang/String; = "EXTRA_CALL_LOG_IDS"

.field public static final EXTRA_FLAG_VVM:Ljava/lang/String; = "EXTRA_FLAG_VVM"

.field public static final EXTRA_FROM_NOTIFICATION:Ljava/lang/String; = "EXTRA_FROM_NOTIFICATION"

.field public static final EXTRA_VOICEMAIL_START_PLAYBACK:Ljava/lang/String; = "EXTRA_VOICEMAIL_START_PLAYBACK"

.field public static final EXTRA_VOICEMAIL_URI:Ljava/lang/String; = "EXTRA_VOICEMAIL_URI"

.field static final GEOCODED_LOCATION_COLUMN_INDEX:I = 0x5

.field static final NUMBER_COLUMN_INDEX:I = 0x2

.field private static final PROXIMITY_BLANK_DELAY_MILLIS:J = 0x64L

.field private static final PROXIMITY_UNBLANK_DELAY_MILLIS:J = 0x1f4L

.field private static final SIM_INFO_UPDATE_MESSAGE:I = 0x64

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

.field private mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

.field private mContactBackgroundView:Landroid/widget/ImageView;

.field private mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

.field private mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

.field private mDefaultCountryIso:Ljava/lang/String;

.field private final mFourthActionListener:Landroid/view/View$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHasEditNumberBeforeCallOption:Z

.field private mHasRemoveFromCallLogOption:Z

.field private mHasSms:Z

.field private mHasTrashOption:Z

.field private mHeaderOverlayView:Landroid/view/View;

.field private mHeaderTextView:Landroid/widget/TextView;

.field mInflater:Landroid/view/LayoutInflater;

.field private mMainActionPushLayerView:Landroid/widget/ImageButton;

.field private mMainActionView:Landroid/widget/ImageView;

.field private mNumber:Ljava/lang/String;

.field private mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

.field private mPhoneNumberActionMode:Landroid/view/ActionMode;

.field private mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

.field private mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

.field private mPhoneNumberToCopy:Ljava/lang/CharSequence;

.field private mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPrimaryActionListener:Landroid/view/View$OnClickListener;

.field private final mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

.field private final mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

.field private mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field mResources:Landroid/content/res/Resources;

.field private final mSecondaryActionListener:Landroid/view/View$OnClickListener;

.field private mShowSimIndicator:Z

.field private mSimName:Landroid/widget/TextView;

.field public mStatusBarMgr:Landroid/app/StatusBarManager;

.field private mStatusMessageAction:Landroid/widget/TextView;

.field private mStatusMessageText:Landroid/widget/TextView;

.field private mStatusMessageView:Landroid/view/View;

.field private final mThirdActionListener:Landroid/view/View$OnClickListener;

.field private mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 98
    const-class v0, Lcom/android/contacts/CallDetailActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    .line 237
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "date"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "duration"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "number"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "type"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "countryiso"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "geocoded_location"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "simid"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "vtcall"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/contacts/CallDetailActivity;->CALL_LOG_PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 97
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    .line 167
    new-instance v0, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$1;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    .line 257
    new-instance v0, Lcom/android/contacts/CallDetailActivity$1;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$1;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    .line 269
    new-instance v0, Lcom/android/contacts/CallDetailActivity$2;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$2;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    .line 279
    new-instance v0, Lcom/android/contacts/CallDetailActivity$3;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$3;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1428
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mHasSms:Z

    .line 1447
    new-instance v0, Lcom/android/contacts/CallDetailActivity$8;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$8;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mThirdActionListener:Landroid/view/View$OnClickListener;

    .line 1454
    new-instance v0, Lcom/android/contacts/CallDetailActivity$9;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$9;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mFourthActionListener:Landroid/view/View$OnClickListener;

    .line 1462
    new-instance v0, Lcom/android/contacts/CallDetailActivity$10;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivity$10;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/contacts/CallDetailActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mHasSms:Z

    return v0
.end method

.method static synthetic access$1400(Lcom/android/contacts/CallDetailActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->setSimInfo(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/CharSequence;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/android/contacts/CallDetailActivity;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberLabelToCopy:Ljava/lang/CharSequence;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/android/contacts/CallDetailActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->disableCallButton()V

    return-void
.end method

.method static synthetic access$1902(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2202(Lcom/android/contacts/CallDetailActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-boolean p1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/CallTypeHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->loadContactPhotos(Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$2502(Lcom/android/contacts/CallDetailActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/contacts/CallDetailActivity;)[Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/contacts/CallDetailActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->finishPhoneNumerSelectedActionModeIfShown()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->startPhoneNumberSelectedActionMode(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/contacts/CallDetailActivity;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/contacts/CallDetailActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 97
    iput-object p1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/contacts/CallDetailActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/PhoneCallDetailsHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/contacts/CallDetailActivity;)Lcom/android/contacts/calllog/PhoneNumberHelper;
    .locals 1
    .parameter "x0"

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    return-object v0
.end method

.method private closeSystemDialogs()V
    .locals 2

    .prologue
    .line 1374
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1375
    return-void
.end method

.method private configureActionBar()V
    .locals 2

    .prologue
    .line 1281
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1282
    .local v0, actionBar:Landroid/app/ActionBar;
    if-eqz v0, :cond_0

    .line 1283
    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 1285
    :cond_0
    return-void
.end method

.method private configureCallButton(Lcom/android/contacts/CallDetailActivity$ViewEntry;)V
    .locals 27
    .parameter "entry"

    .prologue
    .line 1023
    const v23, 0x7f07004f

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 1024
    .local v5, convertView:Landroid/view/View;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1026
    const v23, 0x7f070054

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 1027
    .local v10, icon:Landroid/widget/ImageView;
    const v23, 0x7f070053

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    .line 1028
    .local v8, divider:Landroid/view/View;
    const v23, 0x7f070051

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    check-cast v19, Landroid/widget/TextView;

    .line 1030
    .local v19, text:Landroid/widget/TextView;
    const v23, 0x7f070050

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    .line 1031
    .local v16, mainAction:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mPrimaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1032
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1033
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->primaryDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mPrimaryLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1036
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_0

    .line 1037
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mSecondaryActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1038
    move-object/from16 v0, p1

    iget v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryIcon:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1039
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1040
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1041
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->secondaryDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1042
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1047
    :goto_0
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->text:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1049
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09004c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v23

    move/from16 v2, v24

    move/from16 v3, v25

    move/from16 v4, v26

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1051
    const v23, 0x7f070052

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 1052
    .local v14, label:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_1

    .line 1053
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1064
    :goto_1
    const v23, 0x7f070066

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 1065
    .local v9, geocode:Landroid/widget/TextView;
    const v23, 0x7f070065

    move/from16 v0, v23

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 1066
    .local v15, labelAndgeocodeView:Landroid/view/View;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    const v24, 0x7f09004c

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v23

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v15, v0, v1, v2, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 1070
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_2

    .line 1071
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1077
    :goto_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_3

    .line 1078
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1092
    :goto_3
    const v23, 0x7f07005c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    .line 1093
    .local v17, separator01:Landroid/view/View;
    const/16 v23, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1094
    const v23, 0x7f07005e

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v18

    .line 1095
    .local v18, separator02:Landroid/view/View;
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1097
    const v23, 0x7f070068

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1098
    .local v6, convertView1:Landroid/view/View;
    const v23, 0x7f070063

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    .line 1099
    .local v20, videoAction:Landroid/view/View;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->thirdIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 1100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mThirdActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1101
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1102
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->thirdDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1103
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1104
    const v23, 0x7f07006a

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Landroid/widget/TextView;

    .line 1106
    .local v22, videoText:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->videoText:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1108
    const v23, 0x7f07006b

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    check-cast v21, Landroid/widget/TextView;

    .line 1109
    .local v21, videoLabel:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_4

    .line 1110
    const/16 v23, 0x8

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1121
    .end local v21           #videoLabel:Landroid/widget/TextView;
    .end local v22           #videoText:Landroid/widget/TextView;
    :goto_4
    invoke-direct/range {p0 .. p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v23

    if-eqz v23, :cond_6

    .line 1122
    const v23, 0x7f07006c

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1123
    .local v7, convertView2:Landroid/view/View;
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1150
    :goto_5
    return-void

    .line 1044
    .end local v6           #convertView1:Landroid/view/View;
    .end local v7           #convertView2:Landroid/view/View;
    .end local v9           #geocode:Landroid/widget/TextView;
    .end local v14           #label:Landroid/widget/TextView;
    .end local v15           #labelAndgeocodeView:Landroid/view/View;
    .end local v17           #separator01:Landroid/view/View;
    .end local v18           #separator02:Landroid/view/View;
    .end local v20           #videoAction:Landroid/view/View;
    :cond_0
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1045
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v8, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 1055
    .restart local v14       #label:Landroid/widget/TextView;
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1056
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v14, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1058
    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    const v26, 0x7f09004a

    invoke-virtual/range {v25 .. v26}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v25

    const/16 v26, 0x0

    move/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v14, v0, v1, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/16 :goto_1

    .line 1073
    .restart local v9       #geocode:Landroid/widget/TextView;
    .restart local v15       #labelAndgeocodeView:Landroid/view/View;
    :cond_2
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->geocode:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1074
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v9, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 1080
    :cond_3
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v15, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 1112
    .restart local v6       #convertView1:Landroid/view/View;
    .restart local v17       #separator01:Landroid/view/View;
    .restart local v18       #separator02:Landroid/view/View;
    .restart local v20       #videoAction:Landroid/view/View;
    .restart local v21       #videoLabel:Landroid/widget/TextView;
    .restart local v22       #videoText:Landroid/widget/TextView;
    :cond_4
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1113
    const/16 v23, 0x0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1116
    .end local v21           #videoLabel:Landroid/widget/TextView;
    .end local v22           #videoText:Landroid/widget/TextView;
    :cond_5
    const/16 v23, 0x8

    move-object/from16 v0, v17

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1117
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 1125
    :cond_6
    const v23, 0x7f07006d

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .line 1126
    .restart local v7       #convertView2:Landroid/view/View;
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1127
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->fourthIntent:Landroid/content/Intent;

    move-object/from16 v23, v0

    if-eqz v23, :cond_8

    .line 1128
    const v23, 0x7f070069

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    .line 1129
    .local v11, ipAction:Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity;->mFourthActionListener:Landroid/view/View$OnClickListener;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1130
    move-object/from16 v0, p1

    invoke-virtual {v11, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1131
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->fourthDescription:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v11, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1132
    const v23, 0x7f07006e

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    .line 1133
    .local v13, ipText:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->ipText:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1134
    const v23, 0x7f07006f

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 1135
    .local v12, ipLabel:Landroid/widget/TextView;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    invoke-static/range {v23 .. v23}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_7

    .line 1136
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1138
    :cond_7
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/android/contacts/CallDetailActivity$ViewEntry;->label:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1139
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 1146
    .end local v11           #ipAction:Landroid/view/View;
    .end local v12           #ipLabel:Landroid/widget/TextView;
    .end local v13           #ipText:Landroid/widget/TextView;
    :cond_8
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v7, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5
.end method

.method private createProximityWakeLock()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 1534
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPowerManager:Landroid/os/PowerManager;

    .line 1536
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPowerManager:Landroid/os/PowerManager;

    sget-object v1, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 1541
    :goto_0
    return-void

    .line 1539
    :cond_0
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "mProximityWakeLock create failed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private disableCallButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1009
    const v0, 0x7f07004f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1011
    const v0, 0x7f07005c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1012
    const v0, 0x7f07005e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1013
    const v0, 0x7f070068

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1014
    const v0, 0x7f07006d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1016
    const v0, 0x7f070071

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1017
    const v0, 0x7f070060

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1019
    return-void
.end method

.method private finishPhoneNumerSelectedActionModeIfShown()Z
    .locals 1

    .prologue
    .line 1364
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1366
    :goto_0
    return v0

    .line 1365
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    .line 1366
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getCallLogEntryUris()[Landroid/net/Uri;
    .locals 9

    .prologue
    .line 461
    const-string v7, "CallDetailActivity getCallLogEntryUris()"

    invoke-direct {p0, v7}, Lcom/android/contacts/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 462
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 463
    .local v5, uri:Landroid/net/Uri;
    if-eqz v5, :cond_2

    .line 466
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 467
    .local v4, queryUri:Landroid/net/Uri;
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v0

    .line 468
    .local v0, id:J
    invoke-static {v4, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v5

    .line 469
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 470
    invoke-static {v5}, Lcom/mediatek/contacts/util/VvmUtils;->buildVvmAllowedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v5

    .line 473
    :cond_0
    const/4 v7, 0x1

    new-array v6, v7, [Landroid/net/Uri;

    const/4 v7, 0x0

    aput-object v5, v6, v7

    .line 487
    .end local v0           #id:J
    .end local v4           #queryUri:Landroid/net/Uri;
    :cond_1
    return-object v6

    .line 475
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "EXTRA_CALL_LOG_IDS"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v2

    .line 476
    .local v2, ids:[J
    array-length v7, v2

    new-array v6, v7, [Landroid/net/Uri;

    .line 477
    .local v6, uris:[Landroid/net/Uri;
    const/4 v3, 0x0

    .local v3, index:I
    :goto_0
    array-length v7, v2

    if-ge v3, v7, :cond_1

    .line 480
    const-string v7, "content://call_log/callsjoindataview"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 481
    .restart local v4       #queryUri:Landroid/net/Uri;
    aget-wide v7, v2, v3

    invoke-static {v4, v7, v8}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v3

    .line 482
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 483
    aget-object v7, v6, v3

    invoke-static {v7}, Lcom/mediatek/contacts/util/VvmUtils;->buildVvmAllowedUri(Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v7

    aput-object v7, v6, v3

    .line 477
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private getPhoneCallDetailsForUri(Landroid/net/Uri;)Lcom/android/contacts/PhoneCallDetails;
    .locals 24
    .parameter "callUri"

    .prologue
    .line 835
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 838
    .local v1, resolver:Landroid/content/ContentResolver;
    sget-object v3, Lcom/android/contacts/calllog/CallLogQuery;->PROJECTION_CALLS_JOIN_DATAVIEW:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v21

    .line 840
    .local v21, callCursor:Landroid/database/Cursor;
    if-eqz v21, :cond_0

    :try_start_0
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-nez v2, :cond_2

    .line 841
    :cond_0
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

    .line 924
    :catchall_0
    move-exception v2

    if-eqz v21, :cond_1

    .line 925
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_1
    throw v2

    .line 893
    :cond_2
    :try_start_1
    invoke-static/range {v21 .. v21}, Lcom/android/contacts/calllog/ContactInfo;->fromCursor(Landroid/database/Cursor;)Lcom/android/contacts/calllog/ContactInfo;

    move-result-object v22

    .line 894
    .local v22, contactInfo:Lcom/android/contacts/calllog/ContactInfo;
    const/16 v2, 0x14

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v23

    .line 895
    .local v23, photo:Ljava/lang/String;
    const/16 v16, 0x0

    .line 896
    .local v16, photoUri:Landroid/net/Uri;
    if-eqz v23, :cond_6

    .line 897
    invoke-static/range {v23 .. v23}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v16

    .line 901
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

    invoke-direct {v0, v2}, Lcom/android/contacts/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 902
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->canPlaceCallsTo(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    move-object/from16 v0, v22

    iget v4, v0, Lcom/android/contacts/calllog/ContactInfo;->simId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isVoiceMailNumberForMtk(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-nez v2, :cond_3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/contacts/calllog/PhoneNumberHelper;->isEmergencyNumber(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 906
    :cond_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object/from16 v0, v22

    iget-object v3, v0, Lcom/android/contacts/calllog/ContactInfo;->number:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getDisplayNumber(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->formattedNumber:Ljava/lang/String;

    .line 908
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->name:Ljava/lang/String;

    .line 909
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput v2, v0, Lcom/android/contacts/calllog/ContactInfo;->nNumberTypeId:I

    .line 910
    const-string v2, ""

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->label:Ljava/lang/String;

    .line 911
    const/16 v16, 0x0

    .line 912
    const/4 v2, 0x0

    move-object/from16 v0, v22

    iput-object v2, v0, Lcom/android/contacts/calllog/ContactInfo;->lookupUri:Landroid/net/Uri;

    .line 915
    :cond_4
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

    .line 924
    if-eqz v21, :cond_5

    .line 925
    invoke-interface/range {v21 .. v21}, Landroid/database/Cursor;->close()V

    :cond_5
    return-object v2

    .line 899
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_0
.end method

.method private getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    .locals 6
    .parameter "statusCursor"

    .prologue
    const/4 v3, 0x1

    const/4 v5, 0x0

    .line 1182
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    invoke-interface {v1, p1}, Lcom/android/contacts/voicemail/VoicemailStatusHelper;->getStatusMessages(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v0

    .line 1183
    .local v0, messages:Ljava/util/List;,"Ljava/util/List<Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 1184
    const/4 v1, 0x0

    .line 1192
    :goto_0
    return-object v1

    .line 1188
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 1189
    sget-object v1, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "Expected 1, found (%d) num of status messages. Will use the first one."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    :cond_1
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    goto :goto_0
.end method

.method private getVoicemailUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 422
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_VOICEMAIL_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method private hasVoicemail()Z
    .locals 1

    .prologue
    .line 418
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private loadContactPhotos(Landroid/net/Uri;)V
    .locals 4
    .parameter "photoUri"

    .prologue
    .line 938
    if-nez p1, :cond_0

    .line 939
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    const v1, 0x7f020078

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 944
    :goto_0
    return-void

    .line 941
    :cond_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v0, v1, p1, v2, v3}, Lcom/android/contacts/ContactPhotoManager;->loadPhoto(Landroid/widget/ImageView;Landroid/net/Uri;IZ)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1522
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1524
    return-void
.end method

.method private markVoicemailAsRead(Landroid/net/Uri;)V
    .locals 4
    .parameter "voicemailUri"

    .prologue
    .line 426
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->MARK_VOICEMAIL_READ:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$4;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$4;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 450
    return-void
.end method

.method private onHomeSelected()V
    .locals 3

    .prologue
    .line 1289
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    sget-object v2, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1291
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1292
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1293
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 1294
    return-void
.end method

.method private optionallyHandleVoicemail()V
    .locals 7

    .prologue
    const v6, 0x7f07004e

    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 390
    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 391
    .local v2, voicemailContainer:Landroid/view/View;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->hasVoicemail()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 395
    new-instance v1, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-direct {v1}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;-><init>()V

    .line 397
    .local v1, playbackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    iput-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 399
    .local v0, fragmentArguments:Landroid/os/Bundle;
    const-string v3, "EXTRA_VOICEMAIL_URI"

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 400
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "EXTRA_VOICEMAIL_START_PLAYBACK"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 401
    const-string v3, "EXTRA_VOICEMAIL_START_PLAYBACK"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 403
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 404
    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 405
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3, v6, v1}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 407
    sget-object v3, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[optionallyHandleVoicemail] getVoicemailUri()=="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v5}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/contacts/CallDetailActivityQueryHandler;->startVoicemailStatusQuery(Landroid/net/Uri;)V

    .line 409
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/contacts/CallDetailActivity;->markVoicemailAsRead(Landroid/net/Uri;)V

    .line 415
    .end local v0           #fragmentArguments:Landroid/os/Bundle;
    .end local v1           #playbackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;
    :goto_0
    return-void

    .line 412
    :cond_1
    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 413
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setSimInfo(I)V
    .locals 11
    .parameter "simId"

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x0

    .line 1480
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090065

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 1481
    .local v2, rPadding:I
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f090066

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 1482
    .local v1, lPadding:I
    const/4 v6, 0x1

    .line 1483
    .local v6, tbPadding:I
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1484
    const/4 v7, -0x2

    if-ne p1, v7, :cond_0

    .line 1485
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    const v8, 0x7f0200f8

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1486
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    const v8, 0x7f0c0019

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(I)V

    .line 1487
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1515
    :goto_0
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v7

    iget-object v8, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, p1, v8}, Lcom/android/contacts/ext/CallDetailExtension;->setSimInfo(ILandroid/widget/TextView;)Z

    .line 1519
    return-void

    .line 1488
    :cond_0
    if-nez p1, :cond_1

    .line 1489
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1491
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimDisplayNameById(I)Ljava/lang/String;

    move-result-object v5

    .line 1492
    .local v5, simName:Ljava/lang/String;
    if-eqz v5, :cond_3

    .line 1493
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1494
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 1498
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/mediatek/phone/SIMInfoWrapper;->getInsertedSimColorById(I)I

    move-result v0

    .line 1499
    .local v0, color:I
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/mediatek/phone/SIMInfoWrapper;->getSimBackgroundDarkResByColorId(I)I

    move-result v4

    .line 1500
    .local v4, simColorResId:I
    const/4 v7, 0x1

    new-array v3, v7, [I

    aput v9, v3, v9

    .line 1501
    .local v3, simColorRes:[I
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/mediatek/contacts/ExtensionManager;->getCallLogSimInfoHelperExtension()Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;

    move-result-object v7

    invoke-virtual {v7, v0, v3}, Lcom/android/contacts/ext/CallLogSimInfoHelperExtension;->getSimBackgroundDarkResByColorId(I[I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1503
    aget v4, v3, v9

    .line 1506
    :cond_2
    const/4 v7, -0x1

    if-eq v7, v0, :cond_4

    .line 1507
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1508
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0

    .line 1496
    .end local v0           #color:I
    .end local v3           #simColorRes:[I
    .end local v4           #simColorResId:I
    :cond_3
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1510
    .restart local v0       #color:I
    .restart local v3       #simColorRes:[I
    .restart local v4       #simColorResId:I
    :cond_4
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    const v8, 0x7f0200f9

    invoke-virtual {v7, v8}, Landroid/view/View;->setBackgroundResource(I)V

    .line 1511
    iget-object v7, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    invoke-virtual {v7, v1, v6, v2, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    goto :goto_0
.end method

.method private startPhoneNumberSelectedActionMode(Landroid/view/View;)V
    .locals 1
    .parameter "targetView"

    .prologue
    .line 1370
    new-instance v0, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/contacts/CallDetailActivity$PhoneNumberActionModeCallback;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/view/View;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberActionMode:Landroid/view/ActionMode;

    .line 1371
    return-void
.end method

.method private varargs updateData([Landroid/net/Uri;)V
    .locals 4
    .parameter "callUris"

    .prologue
    .line 830
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v1, Lcom/android/contacts/CallDetailActivity$Tasks;->UPDATE_PHONE_CALL_DETAILS:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;

    invoke-direct {v2, p0, p1}, Lcom/android/contacts/CallDetailActivity$1UpdateContactDetailsTask;-><init>(Lcom/android/contacts/CallDetailActivity;[Landroid/net/Uri;)V

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-interface {v0, v1, v2, v3}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 831
    return-void
.end method


# virtual methods
.method public disableProximitySensor(Z)V
    .locals 3
    .parameter "waitForFarState"

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0, p1}, Lcom/android/contacts/ProximitySensorManager;->disable(Z)V

    .line 1345
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "disableProximitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1347
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "mProximityWakeLock = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1357
    :goto_0
    return-void

    .line 1350
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1351
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1352
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateProximitySensorMode: releasing..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1353
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    .line 1355
    :cond_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public enableProximitySensor()V
    .locals 3

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    invoke-virtual {v0}, Lcom/android/contacts/ProximitySensorManager;->enable()V

    .line 1325
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "enableProximitySensor"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1326
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    .line 1327
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "mProximityWakeLock = null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :goto_0
    return-void

    .line 1330
    :cond_0
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 1331
    :try_start_0
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1332
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateProximitySensorMode: acquiring..."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1337
    :goto_1
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1335
    :cond_1
    :try_start_1
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v2, "updateProximitySensorMode: lock already held."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x0

    .line 293
    const-string v0, "CallDetailActivity  onCreate()"

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 294
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 296
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 297
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FLAG_VVM"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    .line 299
    .local v6, isVVM:Z
    if-eqz v6, :cond_0

    .line 300
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-lez v0, :cond_0

    .line 301
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    const-string v1, "phone call state, mAudioManager.getMode() > 0"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const v0, 0x7f0c02bf

    invoke-static {p0, v0}, Lcom/mediatek/contacts/util/MtkToast;->toast(Landroid/content/Context;I)V

    .line 303
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 309
    .end local v6           #isVVM:Z
    :cond_0
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->registerReceiver(Landroid/app/Activity;)V

    .line 313
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 314
    const v0, 0x7f04000e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 319
    :goto_0
    invoke-static {}, Lcom/android/contacts/util/AsyncTaskExecutors;->createThreadPoolExecutor()Lcom/android/contacts/util/AsyncTaskExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    .line 320
    const-string v0, "layout_inflater"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 321
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    .line 323
    new-instance v0, Lcom/android/contacts/calllog/CallTypeHelper;

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/CallTypeHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    .line 324
    new-instance v0, Lcom/android/contacts/calllog/PhoneNumberHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    invoke-direct {v0, v1}, Lcom/android/contacts/calllog/PhoneNumberHelper;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    .line 328
    new-instance v0, Lcom/android/contacts/PhoneCallDetailsHelper;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mResources:Landroid/content/res/Resources;

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mCallTypeHelper:Lcom/android/contacts/calllog/CallTypeHelper;

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/contacts/PhoneCallDetailsHelper;-><init>(Landroid/content/res/Resources;Lcom/android/contacts/calllog/CallTypeHelper;Lcom/android/contacts/calllog/PhoneNumberHelper;Lcom/mediatek/contacts/calllog/CallLogSimInfoHelper;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneCallDetailsHelper:Lcom/android/contacts/PhoneCallDetailsHelper;

    .line 331
    const v0, 0x7f07004c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderTextView:Landroid/widget/TextView;

    .line 332
    const v0, 0x7f07004a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mHeaderOverlayView:Landroid/view/View;

    .line 333
    const v0, 0x7f07004b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionView:Landroid/widget/ImageView;

    .line 334
    const v0, 0x7f07004d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mMainActionPushLayerView:Landroid/widget/ImageButton;

    .line 335
    const v0, 0x7f070048

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactBackgroundView:Landroid/widget/ImageView;

    .line 336
    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mDefaultCountryIso:Ljava/lang/String;

    .line 337
    invoke-static {p0}, Lcom/android/contacts/ContactPhotoManager;->getInstance(Landroid/content/Context;)Lcom/android/contacts/ContactPhotoManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactPhotoManager:Lcom/android/contacts/ContactPhotoManager;

    .line 339
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->createProximityWakeLock()V

    .line 340
    new-instance v0, Lcom/android/contacts/ProximitySensorManager;

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorListener:Lcom/android/contacts/CallDetailActivity$ProximitySensorListener;

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/ProximitySensorManager;-><init>(Landroid/content/Context;Lcom/android/contacts/ProximitySensorManager$Listener;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mProximitySensorManager:Lcom/android/contacts/ProximitySensorManager;

    .line 342
    new-instance v0, Lcom/android/contacts/calllog/ContactInfoHelper;

    invoke-static {p0}, Lcom/android/contacts/ContactsUtils;->getCurrentCountryIso(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/contacts/calllog/ContactInfoHelper;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mContactInfoHelper:Lcom/android/contacts/calllog/ContactInfoHelper;

    .line 343
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->configureActionBar()V

    .line 346
    invoke-static {}, Lcom/mediatek/contacts/util/VvmUtils;->isVvmEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 347
    new-instance v0, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;

    invoke-direct {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelperImpl;-><init>()V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mVoicemailStatusHelper:Lcom/android/contacts/voicemail/VoicemailStatusHelper;

    .line 348
    new-instance v0, Lcom/android/contacts/CallDetailActivityQueryHandler;

    invoke-direct {v0, p0}, Lcom/android/contacts/CallDetailActivityQueryHandler;-><init>(Lcom/android/contacts/CallDetailActivity;)V

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncQueryHandler:Lcom/android/contacts/CallDetailActivityQueryHandler;

    .line 349
    const v0, 0x7f070046

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    .line 350
    const v0, 0x7f0700a5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    .line 351
    const v0, 0x7f0700a6

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    .line 352
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): getVoicemailUri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->optionallyHandleVoicemail()V

    .line 357
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "EXTRA_FROM_NOTIFICATION"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->closeSystemDialogs()V

    .line 361
    :cond_2
    const v0, 0x7f070062

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mSimName:Landroid/widget/TextView;

    .line 362
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v4}, Lcom/mediatek/phone/SIMInfoWrapper;->registerForSimInfoUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 363
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mPhoneNumberHelper:Lcom/android/contacts/calllog/PhoneNumberHelper;

    invoke-virtual {v0, p0, v1}, Lcom/android/contacts/ext/CallDetailExtension;->onCreate(Landroid/app/Activity;Lcom/android/contacts/ext/IPhoneNumberHelper;)V

    .line 365
    return-void

    .line 316
    :cond_3
    const v0, 0x7f04000f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    goto/16 :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1197
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/CallDetailExtension;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1198
    const/4 v0, 0x1

    .line 1201
    :goto_0
    return v0

    .line 1200
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100001

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1201
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 1436
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 1437
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1438
    invoke-static {}, Lcom/mediatek/phone/SIMInfoWrapper;->getDefault()Lcom/mediatek/phone/SIMInfoWrapper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/SIMInfoWrapper;->unregisterForSimInfoUpdate(Landroid/os/Handler;)V

    .line 1439
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->unregisterReceiver(Landroid/app/Activity;)V

    .line 1441
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/contacts/CallDetailActivity;->disableProximitySensor(Z)V

    .line 1442
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/contacts/ext/CallDetailExtension;->onDestroy()V

    .line 1443
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 492
    packed-switch p1, :pswitch_data_0

    .line 510
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    :goto_0
    return v1

    .line 495
    :pswitch_0
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 498
    .local v0, tm:Landroid/telephony/TelephonyManager;
    sget-object v1, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dialing Number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v1

    if-nez v1, :cond_0

    .line 501
    const-string v1, "tel"

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v1}, Lcom/android/contacts/ContactsUtils;->getCallIntent(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.OutgoingCallBroadcaster"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 505
    const/4 v1, 0x1

    goto :goto_0

    .line 492
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuEditNumberBeforeCall(Landroid/view/MenuItem;)V
    .locals 3
    .parameter "menuItem"

    .prologue
    .line 1261
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    iget-object v2, p0, Lcom/android/contacts/CallDetailActivity;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/contacts/ContactsUtils;->getCallUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 1262
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 2
    .parameter "featureId"
    .parameter "item"

    .prologue
    const/4 v1, 0x1

    .line 1221
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/contacts/ext/CallDetailExtension;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1227
    :goto_0
    return v1

    .line 1224
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 1232
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1226
    :pswitch_0
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->onHomeSelected()V

    goto :goto_0

    .line 1224
    nop

    :pswitch_data_0
    .packed-switch 0x102002c
        :pswitch_0
    .end packed-switch
.end method

.method public onMenuRemoveFromCallLog(Landroid/view/MenuItem;)V
    .locals 9
    .parameter "menuItem"

    .prologue
    .line 1237
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1238
    .local v1, callIds:Ljava/lang/StringBuilder;
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    .local v0, arr$:[Landroid/net/Uri;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 1239
    .local v2, callUri:Landroid/net/Uri;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-eqz v5, :cond_0

    .line 1240
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1242
    :cond_0
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1238
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1244
    .end local v2           #callUri:Landroid/net/Uri;
    :cond_1
    iget-object v5, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v6, Lcom/android/contacts/CallDetailActivity$Tasks;->REMOVE_FROM_CALL_LOG_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v7, Lcom/android/contacts/CallDetailActivity$6;

    invoke-direct {v7, p0, v1}, Lcom/android/contacts/CallDetailActivity$6;-><init>(Lcom/android/contacts/CallDetailActivity;Ljava/lang/StringBuilder;)V

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Void;

    invoke-interface {v5, v6, v7, v8}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1258
    return-void
.end method

.method public onMenuTrashVoicemail(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "menuItem"

    .prologue
    .line 1265
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getVoicemailUri()Landroid/net/Uri;

    move-result-object v0

    .line 1266
    .local v0, voicemailUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mAsyncTaskExecutor:Lcom/android/contacts/util/AsyncTaskExecutor;

    sget-object v2, Lcom/android/contacts/CallDetailActivity$Tasks;->DELETE_VOICEMAIL_AND_FINISH:Lcom/android/contacts/CallDetailActivity$Tasks;

    new-instance v3, Lcom/android/contacts/CallDetailActivity$7;

    invoke-direct {v3, p0, v0}, Lcom/android/contacts/CallDetailActivity$7;-><init>(Lcom/android/contacts/CallDetailActivity;Landroid/net/Uri;)V

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Void;

    invoke-interface {v1, v2, v3, v4}, Lcom/android/contacts/util/AsyncTaskExecutor;->submit(Ljava/lang/Object;Landroid/os/AsyncTask;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1278
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 1306
    const-string v0, "onPause()"

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 1316
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 1318
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1319
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 1209
    invoke-static {}, Lcom/mediatek/contacts/ExtensionManager;->getInstance()Lcom/mediatek/contacts/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/contacts/ExtensionManager;->getCallDetailExtension()Lcom/android/contacts/ext/CallDetailExtension;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/contacts/ext/CallDetailExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1210
    const/4 v0, 0x1

    .line 1216
    :goto_0
    return v0

    .line 1212
    :cond_0
    const v0, 0x7f0701df

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasRemoveFromCallLogOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1213
    const v0, 0x7f0701e0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasEditNumberBeforeCallOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1214
    const v0, 0x7f0701de

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/contacts/CallDetailActivity;->mHasTrashOption:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1216
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 369
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 371
    invoke-static {}, Lcom/android/contacts/calllog/PhoneNumberHelper;->getVoiceMailNumber()V

    .line 372
    invoke-direct {p0}, Lcom/android/contacts/CallDetailActivity;->getCallLogEntryUris()[Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->updateData([Landroid/net/Uri;)V

    .line 374
    const-string v0, "CallDetailActivity  onResume()"

    invoke-direct {p0, v0}, Lcom/android/contacts/CallDetailActivity;->log(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/contacts/util/PhoneCapabilityTester;->isSmsIntentRegistered(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/contacts/CallDetailActivity;->mHasSms:Z

    .line 376
    invoke-static {}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->getInstance()Lcom/mediatek/contacts/util/SetIndicatorUtils;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/mediatek/contacts/util/SetIndicatorUtils;->showIndicator(ZLandroid/app/Activity;)V

    .line 378
    sget-object v0, Lcom/android/contacts/CallDetailActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[Performance test][Contacts] Call log detail launch end ["

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

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    return-void
.end method

.method protected onUserLeaveHint()V
    .locals 1

    .prologue
    .line 1298
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    if-eqz v0, :cond_0

    .line 1299
    iget-object v0, p0, Lcom/android/contacts/CallDetailActivity;->mPlaybackFragment:Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailPlaybackFragment;->clearNearTimes()V

    .line 1301
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onUserLeaveHint()V

    .line 1302
    return-void
.end method

.method protected updateVoicemailStatusMessage(Landroid/database/Cursor;)V
    .locals 4
    .parameter "statusCursor"

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 1153
    if-nez p1, :cond_0

    .line 1154
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    :goto_0
    return-void

    .line 1157
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/contacts/CallDetailActivity;->getStatusMessage(Landroid/database/Cursor;)Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;

    move-result-object v0

    .line 1158
    .local v0, message:Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->showInCallDetails()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1159
    :cond_1
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1163
    :cond_2
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1164
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageText:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->callDetailsMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1165
    iget v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    .line 1166
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    iget v2, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionMessageId:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1168
    :cond_3
    iget-object v1, v0, Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;->actionUri:Landroid/net/Uri;

    if-eqz v1, :cond_4

    .line 1169
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setClickable(Z)V

    .line 1170
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    new-instance v2, Lcom/android/contacts/CallDetailActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/android/contacts/CallDetailActivity$5;-><init>(Lcom/android/contacts/CallDetailActivity;Lcom/android/contacts/voicemail/VoicemailStatusHelper$StatusMessage;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 1177
    :cond_4
    iget-object v1, p0, Lcom/android/contacts/CallDetailActivity;->mStatusMessageAction:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/View;->setClickable(Z)V

    goto :goto_0
.end method

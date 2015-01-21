.class public Lcom/mediatek/FMRadio/FMRadioActivity;
.super Landroid/app/Activity;
.source "FMRadioActivity.java"

# interfaces
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/mediatek/FMRadio/FMRecordDialogFragment$OnRecordingDialogClickListener;
.implements Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog$NoAntennaListener;
.implements Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog$CancelSearchListener;


# static fields
.field private static final EARPHONE:I = 0x0

.field private static final LOUDSPEAKER:I = 0x1

.field private static final MSGID_ANTENNA_UNAVAILABE:I = 0x3

.field private static final MSGID_ANTENNA_UNAVAILABE_AIRPLANE:I = 0xc

.field private static final MSGID_FM_EXIT:I = 0xb

.field private static final MSGID_OPEN_DEVICE:I = 0xa

.field private static final MSGID_POWERUP:I = 0x6

.field private static final MSGID_RECORD_ERROR:I = 0x8

.field private static final MSGID_RECORD_MODE_CHANED:I = 0x9

.field private static final MSGID_RECORD_STATE_CHANGED:I = 0x7

.field private static final MSGID_REFRESH:I = 0x4

.field private static final MSGID_SHOW_TOAST_FINISH:I = 0x5

.field private static final MSGID_UPDATE_CURRENT_STATION:I = 0x2

.field private static final MSGID_UPDATE_RDS:I = 0x1

.field private static final NO_ANTENNA:Ljava/lang/String; = "NoAntenna"

.field private static final RDS_SETTING:Ljava/lang/String; = "RdsSetting"

.field private static final REFS_NAME:Ljava/lang/String; = "FMRecord"

.field private static final REQUEST_CODE_FAVORITE:I = 0x1

.field private static final SAVE_RECORDINGD:Ljava/lang/String; = "SaveRecording"

.field private static final SEARCH:Ljava/lang/String; = "Search"

.field private static final START_PLAY_TIME:Ljava/lang/String; = "startPlayTime"

.field private static final START_RECORD_TIME:Ljava/lang/String; = "startRecordTime"

.field public static final TAG:Ljava/lang/String; = "FmRx/Activity"

.field private static final TOAST_TIMER_DELAY:J = 0x7d0L


# instance fields
.field private mAnimImage:Landroid/widget/ImageView;

.field private mAnimation:Landroid/view/animation/Animation;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mButtonAddToFavorite:Landroid/widget/ImageButton;

.field private final mButtonClickListener:Landroid/view/View$OnClickListener;

.field private mButtonDecrease:Landroid/widget/ImageButton;

.field private mButtonIncrease:Landroid/widget/ImageButton;

.field private mButtonNextStation:Landroid/widget/ImageButton;

.field private mButtonPlayback:Landroid/widget/ImageButton;

.field private mButtonPrevStation:Landroid/widget/ImageButton;

.field private mButtonRecord:Landroid/widget/ImageButton;

.field private mButtonStop:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mCurrentStation:I

.field private mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

.field private mFragmentManager:Landroid/app/FragmentManager;

.field private mHandler:Landroid/os/Handler;

.field private mIsActivityForeground:Z

.field private mIsHasShowNoAntennaDlg:Z

.field private mIsInRecordingMode:Z

.field private mIsNeedDisablePower:Z

.field private mIsNeedShowNoAntennaDlg:Z

.field private mIsNeedShowRecordDlg:Z

.field private mIsNeedShowSearchDlg:Z

.field private mIsPlaying:Z

.field private mIsSDListenerRegistered:Z

.field private mIsServiceBinded:Z

.field private mIsServiceStarted:Z

.field private mLRTextString:Ljava/lang/String;

.field private mMenuItemChannelList:Landroid/view/MenuItem;

.field private mMenuItemOverflow:Landroid/view/MenuItem;

.field private mMenuItemPower:Landroid/view/MenuItem;

.field private mNeedTuneto:Z

.field private mPSString:Ljava/lang/String;

.field private mPlayStartTime:J

.field private mPopupMenu:Landroid/widget/PopupMenu;

.field private mPrevRecorderState:I

.field private mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

.field private mRLRecordInfo:Landroid/widget/RelativeLayout;

.field private mRecordStartTime:J

.field private mRecordState:I

.field private mSDDirectory:Ljava/lang/String;

.field private final mSDListener:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/mediatek/FMRadio/FMRadioService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private mTextFM:Landroid/widget/TextView;

.field private mTextMHz:Landroid/widget/TextView;

.field private mTextRDS:Landroid/widget/TextView;

.field private mTextStationName:Landroid/widget/TextView;

.field private mTextStationValue:Landroid/widget/TextView;

.field private mToast:Landroid/widget/Toast;

.field private mTxtRecInfoLeft:Landroid/widget/TextView;

.field private mTxtRecInfoRight:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 90
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    .line 123
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 135
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 136
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 140
    iput-wide v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    .line 141
    iput-wide v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    .line 143
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 144
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 145
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    .line 146
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    .line 149
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    .line 150
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 151
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 152
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    .line 153
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 155
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 156
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    .line 157
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsHasShowNoAntennaDlg:Z

    .line 159
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    .line 160
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    .line 161
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 162
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 165
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 167
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 169
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 171
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    .line 173
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 175
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 176
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 179
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 181
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 183
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 185
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 187
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 189
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 191
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 193
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 196
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 198
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 200
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    .line 202
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 205
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 207
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 208
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 212
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 213
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    .line 215
    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 217
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$1;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 331
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$2;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    .line 362
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$3;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$3;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    .line 650
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$4;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$4;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 722
    new-instance v0, Lcom/mediatek/FMRadio/FMRadioActivity$5;

    invoke-direct {v0, p0}, Lcom/mediatek/FMRadio/FMRadioActivity$5;-><init>(Lcom/mediatek/FMRadio/FMRadioActivity;)V

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/mediatek/FMRadio/FMRadioActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    return-wide v0
.end method

.method static synthetic access$1102(Lcom/mediatek/FMRadio/FMRadioActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    return-wide p1
.end method

.method static synthetic access$1200(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;J)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/FMRadio/FMRadioActivity;->editSharedPreferences(Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/FMRadio/FMRadioActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 90
    iget-wide v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    return-wide v0
.end method

.method static synthetic access$1302(Lcom/mediatek/FMRadio/FMRadioActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    return-wide p1
.end method

.method static synthetic access$1400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateFavoriteStation()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/FMRadio/FMRadioActivity;IZ)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/mediatek/FMRadio/FMRadioActivity;->seekStation(IZ)V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    return v0
.end method

.method static synthetic access$1802(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    return p1
.end method

.method static synthetic access$1900(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateCurrentStation()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/FMRadio/FMRadioActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return v0
.end method

.method static synthetic access$2000(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateMenuStatus()V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/FMRadio/FMRadioActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    return p1
.end method

.method static synthetic access$2100(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateDialogStatus()V

    return-void
.end method

.method static synthetic access$2200(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2300(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateRds()V

    return-void
.end method

.method static synthetic access$2500(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->restoreRecorderState()V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V

    return-void
.end method

.method static synthetic access$2700(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshTimeText()V

    return-void
.end method

.method static synthetic access$2800(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->stopAnimation()V

    return-void
.end method

.method static synthetic access$2900(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    return-void
.end method

.method static synthetic access$302(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPSString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    return-void
.end method

.method static synthetic access$3200(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    return-void
.end method

.method static synthetic access$3300(Lcom/mediatek/FMRadio/FMRadioActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    return v0
.end method

.method static synthetic access$3400(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissNoAntennaDialog()V

    return-void
.end method

.method static synthetic access$3502(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    return p1
.end method

.method static synthetic access$3602(Lcom/mediatek/FMRadio/FMRadioActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    return p1
.end method

.method static synthetic access$3700(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V

    return-void
.end method

.method static synthetic access$3900(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->enterChannelList()V

    return-void
.end method

.method static synthetic access$4000(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showRDS(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$402(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mLRTextString:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$4100(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecordingState(I)V

    return-void
.end method

.method static synthetic access$4200(Lcom/mediatek/FMRadio/FMRadioActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateRecorderError(I)V

    return-void
.end method

.method static synthetic access$4300(Lcom/mediatek/FMRadio/FMRadioActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitRecordingMode(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/FMRadio/FMRadioActivity;)Landroid/app/FragmentManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSaveRecordingDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/FMRadio/FMRadioActivity;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lcom/mediatek/FMRadio/FMRadioActivity;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 1
    .parameter "x0"

    .prologue
    .line 90
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object v0
.end method

.method static synthetic access$802(Lcom/mediatek/FMRadio/FMRadioActivity;Lcom/mediatek/FMRadio/FMRadioService;)Lcom/mediatek/FMRadio/FMRadioService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 90
    iput-object p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    return-object p1
.end method

.method static synthetic access$900(Lcom/mediatek/FMRadio/FMRadioActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordNotIdle()V

    return-void
.end method

.method private changeRecordingMode(Z)V
    .locals 4
    .parameter "recordingMode"

    .prologue
    .line 1632
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "changeRecordingMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1633
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-ne v1, p1, :cond_1

    .line 1634
    const-string v2, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FM already "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p1, :cond_0

    const-string v1, "in"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "recording mode!"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1653
    :goto_1
    return-void

    .line 1634
    :cond_0
    const-string v1, "NOT in"

    goto :goto_0

    .line 1638
    :cond_1
    iput-boolean p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 1641
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-nez v1, :cond_2

    .line 1642
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1643
    .local v0, iFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1644
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1645
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1646
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1647
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1648
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 1651
    .end local v0           #iFilter:Landroid/content/IntentFilter;
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1, p1}, Lcom/mediatek/FMRadio/FMRadioService;->setRecordingModeAsync(Z)V

    .line 1652
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->switchRecordLayout(Z)V

    goto :goto_1
.end method

.method private dismissNoAntennaDialog()V
    .locals 3

    .prologue
    .line 1947
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;

    .line 1949
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;
    if-eqz v0, :cond_0

    .line 1950
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 1951
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsHasShowNoAntennaDlg:Z

    .line 1953
    :cond_0
    return-void
.end method

.method private dismissSaveRecordingDialog()V
    .locals 4

    .prologue
    .line 1923
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    .line 1924
    .local v1, ft:Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v3, "SaveRecording"

    invoke-virtual {v2, v3}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    .line 1925
    .local v0, fragment:Landroid/app/Fragment;
    invoke-virtual {v1, v0}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 1926
    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 1927
    return-void
.end method

.method private dismissSearchDialog()V
    .locals 3

    .prologue
    .line 1912
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;

    .line 1914
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;
    if-eqz v0, :cond_0

    .line 1915
    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 1917
    :cond_0
    return-void
.end method

.method private editSharedPreferences(Ljava/lang/String;J)V
    .locals 4
    .parameter "key"
    .parameter "time"

    .prologue
    .line 640
    const-string v2, "FMRecord"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 641
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 642
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    invoke-interface {v0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 643
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 644
    return-void
.end method

.method private enterChannelList()V
    .locals 2

    .prologue
    .line 995
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 996
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/FMRadio/FMRadioFavorite;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 997
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 998
    return-void
.end method

.method private exitRecordingMode(Z)V
    .locals 2
    .parameter "isInRecordingMode"

    .prologue
    const/4 v1, 0x0

    .line 534
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 535
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 536
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 537
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 538
    if-nez p1, :cond_1

    .line 541
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 542
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 543
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 544
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 546
    :cond_0
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->switchRecordLayout(Z)V

    .line 548
    :cond_1
    return-void
.end method

.method private exitService()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1860
    const-string v1, "FmRx/Activity"

    const-string v2, "exitService"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-eqz v1, :cond_0

    .line 1862
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1863
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 1866
    :cond_0
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    if-eqz v1, :cond_2

    .line 1867
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v1}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    move-result v0

    .line 1869
    .local v0, isSuccess:Z
    if-nez v0, :cond_1

    .line 1870
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Cannot stop the FM service."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1872
    :cond_1
    iput-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 1874
    .end local v0           #isSuccess:Z
    :cond_2
    return-void
.end method

.method private getTimeString(I)Ljava/lang/String;
    .locals 14
    .parameter "time"

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x1

    const/4 v11, 0x0

    .line 558
    const/16 v3, 0xe10

    .line 559
    .local v3, oneHour:I
    div-int/lit16 v0, p1, 0xe10

    .line 560
    .local v0, hour:I
    const/16 v2, 0x3c

    .line 561
    .local v2, minuteSecond:I
    div-int/lit8 v8, p1, 0x3c

    rem-int/lit8 v1, v8, 0x3c

    .line 562
    .local v1, minute:I
    rem-int/lit8 v4, p1, 0x3c

    .line 563
    .local v4, second:I
    const/4 v7, 0x0

    .line 565
    .local v7, timeString:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 566
    const-string v5, "%02d:%02d:%02d"

    .line 567
    .local v5, timeFormatLong:Ljava/lang/String;
    const-string v8, "%02d:%02d:%02d"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v13

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 573
    .end local v5           #timeFormatLong:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 569
    :cond_0
    const-string v6, "%02d:%02d"

    .line 570
    .local v6, timeFormatShort:Ljava/lang/String;
    const-string v8, "%02d:%02d"

    new-array v9, v13, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v12

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_0
.end method

.method private initUIComponent()V
    .locals 4

    .prologue
    .line 2090
    const-string v1, "FmRx/Activity"

    const-string v2, "initUIComponent"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2091
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    .line 2094
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioStation;->initFMDatabase(Landroid/content/Context;)V

    .line 2095
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/mediatek/FMRadio/ExtensionUtils;->getExtension(Landroid/content/Context;)Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    .line 2096
    const v1, 0x7f060059

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    .line 2097
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2099
    const v1, 0x7f060057

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    .line 2100
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextFM:Landroid/widget/TextView;

    const-string v2, "FM"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2102
    const v1, 0x7f060058

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    .line 2103
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextMHz:Landroid/widget/TextView;

    const-string v2, "MHz"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2104
    const v1, 0x7f060056

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    .line 2105
    const v1, 0x7f060065

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    .line 2106
    const v1, 0x7f060066

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    .line 2107
    const v1, 0x7f060064

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    .line 2108
    const v1, 0x7f060061

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    .line 2109
    const v1, 0x7f060062

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    .line 2110
    const v1, 0x7f060063

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    .line 2111
    const v1, 0x7f06005a

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    .line 2112
    const v1, 0x7f060055

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    .line 2113
    const v1, 0x7f06005d

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    .line 2114
    const v1, 0x7f06005e

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    .line 2115
    const v1, 0x7f06005c

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    .line 2116
    const v1, 0x7f06005f

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageButton;

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    .line 2122
    new-instance v1, Landroid/widget/PopupMenu;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v3, 0x7f06006e

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 2123
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    .line 2124
    .local v0, menu:Landroid/view/Menu;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v1

    const v2, 0x7f050001

    invoke-virtual {v1, v2, v0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2126
    return-void
.end method

.method private isAntennaAvailable()Z
    .locals 1

    .prologue
    .line 1330
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    return v0
.end method

.method private isHaveAvailableStorage()Z
    .locals 10

    .prologue
    .line 1771
    new-instance v4, Landroid/os/StatFs;

    iget-object v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    invoke-direct {v4, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1772
    .local v4, fs:Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v2, v7

    .line 1773
    .local v2, blocks:J
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v0, v7

    .line 1774
    .local v0, blockSize:J
    mul-long v5, v2, v0

    .line 1775
    .local v5, spaceLeft:J
    const-string v7, "FmRx/Activity"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "checkRemainingStorage: available space="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    const-wide/32 v7, 0x80000

    cmp-long v7, v5, v7

    if-lez v7, :cond_0

    const/4 v7, 0x1

    :goto_0
    return v7

    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method private isRecordFileExist()Z
    .locals 5

    .prologue
    .line 1756
    const/4 v0, 0x0

    .line 1757
    .local v0, fileName:Ljava/lang/String;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v0

    .line 1759
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    const-string v4, "FM Recording"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1760
    .local v2, recordingFolderPath:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1762
    .local v1, recordingFileToSave:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    return v3
.end method

.method private powerUpFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1434
    const-string v0, "FmRx/Activity"

    const-string v1, "start powerUpFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1436
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1437
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1438
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1439
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1440
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->powerUpAsync(F)V

    .line 1441
    const-string v0, "FmRx/Activity"

    const-string v1, "end powerUpFM"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1442
    return-void
.end method

.method private refreshActionMenuItem(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1511
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1513
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1514
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1517
    :cond_0
    return-void
.end method

.method private refreshActionMenuPower(Z)V
    .locals 2
    .parameter "enabled"

    .prologue
    .line 1522
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    if-eqz v0, :cond_0

    .line 1524
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1525
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v0, :cond_1

    const v0, 0x7f020017

    :goto_0
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 1528
    :cond_0
    return-void

    .line 1525
    :cond_1
    const v0, 0x7f020016

    goto :goto_0
.end method

.method private refreshImageButton(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 1502
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1503
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1504
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1505
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1506
    return-void
.end method

.method private refreshPlaybackIdle(Z)V
    .locals 2
    .parameter "btnPlayBack"

    .prologue
    .line 1557
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1558
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1559
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1560
    return-void
.end method

.method private refreshPlaybacking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1569
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1570
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1571
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1572
    return-void
.end method

.method private refreshPopupMenuItem(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1531
    const/4 v0, 0x0

    .line 1532
    .local v0, isOverBT:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v2, :cond_0

    .line 1533
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isFmViaBt()Z

    move-result v0

    .line 1535
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_1

    .line 1536
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v1

    .line 1537
    .local v1, menu:Landroid/view/Menu;
    const v2, 0x7f060071

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1538
    const v2, 0x7f06006f

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1539
    const v2, 0x7f060070

    invoke-interface {v1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1541
    .end local v1           #menu:Landroid/view/Menu;
    :cond_1
    return-void

    .line 1537
    .restart local v1       #menu:Landroid/view/Menu;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private refreshRecordIdle()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1551
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1552
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1553
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 1554
    return-void
.end method

.method private refreshRecordNotIdle()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1545
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1546
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1547
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1548
    return-void
.end method

.method private refreshRecording()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1563
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1564
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1565
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1566
    return-void
.end method

.method private refreshRecordingStatus(I)V
    .locals 12
    .parameter "stateOverride"

    .prologue
    const-wide/16 v10, 0x0

    const/16 v9, 0x8

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1685
    const/4 v2, -0x1

    .line 1687
    .local v2, recorderState:I
    const/4 v6, -0x1

    if-ne p1, v6, :cond_0

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecorderState()I

    move-result v2

    .line 1690
    :goto_0
    const-string v6, "FmRx/Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "refreshRecordingStatus: state="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    packed-switch v2, :pswitch_data_0

    .line 1742
    :pswitch_0
    const-string v4, "FmRx/Activity"

    const-string v5, "invalid record status"

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1745
    :goto_1
    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 1746
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshRecordingStatus.mPrevRecorderState:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1747
    return-void

    :cond_0
    move v2, p1

    .line 1687
    goto :goto_0

    .line 1693
    :pswitch_1
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordTime()J

    move-result-wide v0

    .line 1694
    .local v0, recordTime:J
    cmp-long v6, v0, v10

    if-lez v6, :cond_4

    .line 1695
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1696
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 1699
    :cond_1
    const/4 v6, 0x6

    iget v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    if-ne v6, v7, :cond_2

    .line 1700
    const-string v6, "FmRx/Activity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need show recorder dialog.mPrevRecorderState:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1701
    iget-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    if-eqz v6, :cond_3

    .line 1702
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSaveRecordingDialog(Ljava/lang/String;)V

    .line 1712
    :cond_2
    :goto_2
    cmp-long v6, v0, v10

    if-lez v6, :cond_5

    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v6

    if-eqz v6, :cond_5

    :goto_3
    invoke-direct {p0, v4}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPlaybackIdle(Z)V

    .line 1713
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1704
    :cond_3
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    goto :goto_2

    .line 1709
    :cond_4
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    invoke-virtual {v6, v5}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_2

    :cond_5
    move v4, v5

    .line 1712
    goto :goto_3

    .line 1717
    .end local v0           #recordTime:J
    :pswitch_2
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1718
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v6, ""

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1719
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1720
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecording()V

    .line 1721
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1725
    :pswitch_3
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v3

    .line 1726
    .local v3, recordingName:Ljava/lang/String;
    if-nez v3, :cond_6

    .line 1727
    const-string v3, ""

    .line 1729
    :cond_6
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1730
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    const-string v7, ""

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1731
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1732
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPlaybacking()V

    .line 1733
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1737
    .end local v3           #recordingName:Ljava/lang/String;
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordIdle()V

    .line 1738
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRLRecordInfo:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 1691
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private refreshStationUI(I)V
    .locals 3
    .parameter "station"

    .prologue
    .line 1009
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1012
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v1, 0x7f020009

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1014
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const/4 v2, 0x2

    invoke-static {v1, p1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1021
    :goto_0
    return-void

    .line 1017
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v1, 0x7f020007

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1019
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private refreshTimeText()V
    .locals 9

    .prologue
    const-wide/16 v7, 0x3e8

    .line 2140
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshTimeText:mRecordState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v3, :cond_2

    .line 2142
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "refreshTimeText:mIsInRecordingMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    .line 2144
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecordingAsync()V

    .line 2173
    :cond_0
    :goto_0
    return-void

    .line 2145
    :cond_1
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    const/4 v4, 0x7

    if-ne v3, v4, :cond_0

    .line 2146
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->stopPlaybackAsync()V

    goto :goto_0

    .line 2151
    :cond_2
    const/16 v0, 0x3e8

    .line 2152
    .local v0, oneSecond:I
    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    packed-switch v3, :pswitch_data_0

    .line 2172
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x65

    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 2154
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v2, v3

    .line 2155
    .local v2, recordTime:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2156
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recording time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoLeft:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isHaveAvailableStorage()Z

    move-result v3

    if-nez v3, :cond_3

    .line 2159
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->stopRecordingAsync()V

    goto :goto_1

    .line 2164
    .end local v2           #recordTime:I
    :pswitch_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    sub-long/2addr v3, v5

    div-long/2addr v3, v7

    long-to-int v1, v3

    .line 2165
    .local v1, playTime:I
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->getTimeString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2166
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Playing time = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTxtRecInfoRight:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 2152
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private registerButtonClickListener()V
    .locals 2

    .prologue
    .line 2129
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonRecord:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2130
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonStop:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2131
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2132
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2133
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonDecrease:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2134
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonIncrease:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2135
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPrevStation:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2136
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonNextStation:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2137
    return-void
.end method

.method private restoreConfiguration()V
    .locals 5

    .prologue
    .line 1025
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1026
    const-string v2, "FmRx/Activity"

    const-string v3, "Configration changes,activity restart,need to reset UI!"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    invoke-virtual {p0}, Landroid/app/Activity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 1029
    .local v0, bundle:Landroid/os/Bundle;
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 1031
    if-nez v0, :cond_1

    .line 1047
    .end local v0           #bundle:Landroid/os/Bundle;
    :cond_0
    :goto_0
    return-void

    .line 1034
    .restart local v0       #bundle:Landroid/os/Bundle;
    :cond_1
    const-string v2, "mPrevRecorderState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    .line 1035
    const-string v2, "mRecordState"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 1036
    const-string v2, "mIsFreshRecordingStatus"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    .line 1037
    const-string v2, "mIsNeedShowNoAntennaDlg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 1038
    const-string v2, "mIsNeedShowSearchDlg"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1041
    const-string v2, "isInRecordingMode"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 1042
    .local v1, isInRecordingMode:Z
    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 1043
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInRecordingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ";mPrevRecorderState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    const-string v2, "mIsPlaying"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    goto :goto_0
.end method

.method private restoreRecorderState()V
    .locals 7

    .prologue
    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    .line 1406
    invoke-static {}, Lcom/mediatek/FMRadio/FMRadioUtils;->getInternalStoragePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    .line 1407
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingMode()Z

    move-result v2

    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    .line 1408
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->getRecorderState()I

    move-result v2

    iput v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 1409
    const v2, 0x7f060064

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 1411
    .local v0, recInfoBar:Landroid/widget/RelativeLayout;
    const/4 v2, 0x6

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    if-eq v2, v3, :cond_0

    const/4 v2, 0x7

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    if-ne v2, v3, :cond_2

    .line 1413
    :cond_0
    const-string v2, "FMRecord"

    invoke-virtual {p0, v2, v4}, Landroid/content/ContextWrapper;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1414
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    const-string v2, "startRecordTime"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    .line 1415
    const-string v2, "startPlayTime"

    invoke-interface {v1, v2, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPlayStartTime:J

    .line 1416
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1417
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "&&&sendemptyMessage:mRecoderStart:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordStartTime:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1418
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1423
    .end local v1           #sharedPreferences:Landroid/content/SharedPreferences;
    :goto_0
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->switchRecordLayout(Z)V

    .line 1424
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 1425
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-eqz v2, :cond_1

    .line 1426
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    .line 1428
    :cond_1
    return-void

    .line 1420
    :cond_2
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private seekStation(IZ)V
    .locals 2
    .parameter "station"
    .parameter "direction"

    .prologue
    const/4 v0, 0x0

    .line 1491
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1492
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1493
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1494
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1495
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1496
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1, p2}, Lcom/mediatek/FMRadio/FMRadioService;->seekStationAsync(FZ)V

    .line 1498
    return-void
.end method

.method private setSpeakerPhoneOn(Z)V
    .locals 6
    .parameter "isSpeaker"

    .prologue
    .line 1445
    if-eqz p1, :cond_1

    .line 1446
    const-string v3, "FmRx/Activity"

    const-string v4, "UseSpeaker"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 1448
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1449
    .local v0, endTime:J
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][FMRadio] switch speaker end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1456
    :goto_0
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_0

    .line 1457
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1458
    .local v2, menu:Landroid/view/Menu;
    const v3, 0x7f060070

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v3

    if-eqz v3, :cond_2

    const v3, 0x7f04003f

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1461
    .end local v2           #menu:Landroid/view/Menu;
    :cond_0
    return-void

    .line 1451
    .end local v0           #endTime:J
    :cond_1
    const-string v3, "FmRx/Activity"

    const-string v4, "UseEarphone"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/FMRadio/FMRadioService;->setSpeakerPhoneOn(Z)V

    .line 1453
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1454
    .restart local v0       #endTime:J
    const-string v3, "FmRx/Activity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[Performance test][FMRadio] switch earphone end ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1458
    .restart local v2       #menu:Landroid/view/Menu;
    :cond_2
    const v3, 0x7f04003e

    goto :goto_1
.end method

.method private showRDS(Ljava/lang/String;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1621
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextRDS:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1622
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioActivity.showRDS: RDS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return-void
.end method

.method private showToast(Ljava/lang/CharSequence;)V
    .locals 3
    .parameter "text"

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    if-nez v0, :cond_0

    .line 1612
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    .line 1614
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 1615
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1616
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FMRadioActivity.showToast: toast = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    return-void
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1389
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1390
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.startAnimation end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 1397
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1398
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 1399
    return-void
.end method

.method private switchRecordLayout(Z)V
    .locals 6
    .parameter "recordingMode"

    .prologue
    const/16 v4, 0x8

    const/4 v5, 0x0

    .line 1660
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 1661
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1664
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1665
    invoke-virtual {v0, p1}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 1666
    if-eqz p1, :cond_0

    const v3, 0x7f04002f

    :goto_0
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setTitle(I)V

    .line 1669
    const v3, 0x7f060060

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 1670
    .local v2, recBar:Landroid/widget/LinearLayout;
    const v3, 0x7f06005b

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 1672
    .local v1, bottomBar:Landroid/widget/LinearLayout;
    if-eqz p1, :cond_1

    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1673
    if-eqz p1, :cond_2

    move v3, v5

    :goto_2
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1674
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    :goto_3
    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1676
    return-void

    .line 1666
    .end local v1           #bottomBar:Landroid/widget/LinearLayout;
    .end local v2           #recBar:Landroid/widget/LinearLayout;
    :cond_0
    const/high16 v3, 0x7f04

    goto :goto_0

    .restart local v1       #bottomBar:Landroid/widget/LinearLayout;
    .restart local v2       #recBar:Landroid/widget/LinearLayout;
    :cond_1
    move v3, v5

    .line 1672
    goto :goto_1

    :cond_2
    move v3, v4

    .line 1673
    goto :goto_2

    :cond_3
    move v4, v5

    .line 1674
    goto :goto_3
.end method

.method private tuneToStation(I)V
    .locals 2
    .parameter "station"

    .prologue
    const/4 v0, 0x0

    .line 1470
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1471
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1472
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1473
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1474
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-static {p1}, Lcom/mediatek/FMRadio/FMRadioUtils;->computeFrequency(I)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->tuneStationAsync(F)V

    .line 1475
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v0, :cond_0

    .line 1476
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1478
    :cond_0
    return-void
.end method

.method private updateCurrentStation()V
    .locals 3

    .prologue
    .line 2017
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->getFrequency()I

    move-result v0

    .line 2018
    .local v0, freq:I
    invoke-static {v0}, Lcom/mediatek/FMRadio/FMRadioUtils;->isValidStation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2019
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    if-eq v1, v0, :cond_0

    .line 2020
    const-string v1, "FmRx/Activity"

    const-string v2, "frequency in service isn\'t same as in database"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 2023
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->setCurrentStation(Landroid/content/Context;I)V

    .line 2024
    iget v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshStationUI(I)V

    .line 2027
    :cond_0
    return-void
.end method

.method private updateDialogStatus()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2033
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDialogStatus.mIsNeedShowSearchDlg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2034
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v1

    .line 2035
    .local v1, isScan:Z
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->isNeedShowAntennaDialog()Z

    move-result v0

    .line 2037
    .local v0, isNeedShowAntennaDialog:Z
    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    if-eqz v2, :cond_0

    .line 2038
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDialogStatus: show search dialog. isScan is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2039
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 2040
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSearchDialog()V

    .line 2044
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    if-eqz v2, :cond_1

    .line 2045
    const-string v2, "FmRx/Activity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateDialogStatus.reume recordDlg.mPrevRecorderState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2046
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->getRecordingName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSaveRecordingDialog(Ljava/lang/String;)V

    .line 2047
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    .line 2051
    :cond_1
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsHasShowNoAntennaDlg:Z

    if-nez v2, :cond_3

    if-eqz v0, :cond_3

    .line 2053
    :cond_2
    const-string v2, "FmRx/Activity"

    const-string v3, "updateDialogStatus.reume noAntennaDlg:"

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissNoAntennaDialog()V

    .line 2055
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showNoAntennaDialog()V

    .line 2056
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 2057
    iput-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    .line 2059
    :cond_3
    return-void
.end method

.method private updateFavoriteStation()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    .line 582
    const/4 v0, 0x0

    .line 584
    .local v0, showString:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 588
    .local v1, stationName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v1, v5, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    .line 590
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020007

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 592
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 593
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f04001e

    const v5, 0x7f04001f

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    .line 624
    .end local v1           #stationName:Ljava/lang/String;
    :goto_0
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 629
    return-void

    .line 598
    :cond_0
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationCount(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, 0x5

    if-lt v2, v3, :cond_1

    .line 600
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f04001a

    const v5, 0x7f04001b

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v1

    .line 606
    .restart local v1       #stationName:Ljava/lang/String;
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v3, v5}, Lcom/mediatek/FMRadio/FMRadioStation;->isStationExist(Landroid/content/Context;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 608
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v1, v4, v3}, Lcom/mediatek/FMRadio/FMRadioStation;->updateStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    .line 616
    :goto_1
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v3, 0x7f020009

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 618
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 619
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mProjectStringExt:Lcom/mediatek/FMRadio/ext/IProjectStringExt;

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v4, 0x7f040020

    const v5, 0x7f040021

    invoke-interface {v2, v3, v4, v5}, Lcom/mediatek/FMRadio/ext/IProjectStringExt;->getProjectString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 612
    :cond_2
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v2, v1, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->insertStationToDB(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_1
.end method

.method private updateMenuStatus()V
    .locals 11

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 2065
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v2

    .line 2066
    .local v2, isPlaying:Z
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUping()Z

    move-result v3

    .line 2067
    .local v3, isPoweruping:Z
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->isSeeking()Z

    move-result v5

    .line 2068
    .local v5, isSeeking:Z
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v4

    .line 2069
    .local v4, isScan:Z
    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v6}, Lcom/mediatek/FMRadio/FMRadioService;->isMakePowerDown()Z

    move-result v1

    .line 2070
    .local v1, isMakePowerdown:Z
    const-string v6, "FmRx/Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMenuStatus.isSeeking:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    if-nez v4, :cond_0

    if-nez v5, :cond_0

    if-eqz v3, :cond_4

    :cond_0
    move v0, v8

    .line 2074
    .local v0, fmStatus:Z
    :goto_0
    if-eqz v0, :cond_5

    move v6, v7

    :goto_1
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 2075
    if-eqz v0, :cond_6

    move v6, v7

    :goto_2
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 2076
    if-eqz v0, :cond_7

    move v6, v7

    :goto_3
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 2079
    const-string v6, "FmRx/Activity"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "updateMenuStatus.mIsNeedDisablePower: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-boolean v10, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2080
    if-eqz v0, :cond_8

    :cond_1
    :goto_4
    invoke-direct {p0, v7}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 2083
    if-nez v5, :cond_2

    if-eqz v3, :cond_3

    .line 2084
    :cond_2
    const-string v6, "FmRx/Activity"

    const-string v7, "updateMenuStatus. it is seeking or poweruping"

    invoke-static {v6, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2085
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 2087
    :cond_3
    return-void

    .end local v0           #fmStatus:Z
    :cond_4
    move v0, v7

    .line 2071
    goto :goto_0

    .restart local v0       #fmStatus:Z
    :cond_5
    move v6, v2

    .line 2074
    goto :goto_1

    :cond_6
    move v6, v2

    .line 2075
    goto :goto_2

    :cond_7
    move v6, v2

    .line 2076
    goto :goto_3

    .line 2080
    :cond_8
    if-nez v2, :cond_9

    if-eqz v1, :cond_1

    iget-boolean v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    if-nez v6, :cond_1

    :cond_9
    move v7, v8

    goto :goto_4
.end method

.method private updateRds()V
    .locals 4

    .prologue
    .line 2000
    iget-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v2, :cond_0

    .line 2001
    new-instance v0, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 2002
    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "key_ps_info"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->getPS()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    const-string v2, "key_rt_info"

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->getLRText()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 2004
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    const v3, 0x100011

    invoke-virtual {v2, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 2006
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 2007
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2009
    .end local v0           #bundle:Landroid/os/Bundle;
    .end local v1           #msg:Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private updateRecorderError(I)V
    .locals 4
    .parameter "errorType"

    .prologue
    .line 492
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRecorderError.errorType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    const/4 v0, 0x0

    .line 496
    .local v0, showString:Ljava/lang/String;
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordIdle()V

    .line 497
    sparse-switch p1, :sswitch_data_0

    .line 520
    :cond_0
    :goto_0
    const-string v1, "FmRx/Activity"

    const-string v2, "invalid recorder error"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :goto_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 525
    return-void

    .line 499
    :sswitch_0
    const v1, 0x7f040032

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 500
    goto :goto_1

    .line 503
    :sswitch_1
    const v1, 0x7f040033

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 504
    goto :goto_1

    .line 507
    :sswitch_2
    const v1, 0x7f040034

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 508
    goto :goto_1

    .line 511
    :sswitch_3
    const v1, 0x7f040035

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 512
    goto :goto_1

    .line 515
    :sswitch_4
    const v1, 0x7f040040

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 516
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 517
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPlaybackIdle(Z)V

    goto :goto_0

    .line 497
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x3 -> :sswitch_2
        0x4 -> :sswitch_3
        0x21 -> :sswitch_4
    .end sparse-switch
.end method

.method private updateRecordingState(I)V
    .locals 3
    .parameter "recorderState"

    .prologue
    const/16 v2, 0x65

    .line 458
    iput p1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    .line 459
    invoke-direct {p0, p1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    .line 461
    packed-switch p1, :pswitch_data_0

    .line 479
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 482
    :goto_0
    return-void

    .line 463
    :pswitch_0
    const v0, 0x7f040031

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showToast(Ljava/lang/CharSequence;)V

    .line 464
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:startRecording"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 469
    :pswitch_1
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 473
    :pswitch_2
    const-string v0, "FmRx/Activity"

    const-string v1, "updateRecordingState:remove message"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    .line 461
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public cancelSearch()V
    .locals 2

    .prologue
    .line 1959
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.cancelSearch"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1960
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->stopScan()Z

    .line 1961
    return-void
.end method

.method public isRecordingCardUnmount(Landroid/content/Intent;)Z
    .locals 4
    .parameter "intent"

    .prologue
    .line 1937
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1938
    .local v0, unmountSDCard:Ljava/lang/String;
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unmount sd card file path: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1939
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "file://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDDirectory:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public noAntennaCancel()V
    .locals 2

    .prologue
    .line 1982
    const-string v0, "FmRx/Activity"

    const-string v1, " onClick Negative"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1983
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V

    .line 1984
    return-void
.end method

.method public noAntennaContinue()V
    .locals 2

    .prologue
    .line 1969
    const-string v0, "FmRx/Activity"

    const-string v1, " noAntennaContinue.onClick ok to continue"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1970
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isAntennaAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1971
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V

    .line 1976
    :goto_0
    return-void

    .line 1973
    :cond_0
    const-string v0, "FmRx/Activity"

    const-string v1, "noAntennaContinue.earphone is not ready"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1974
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->switchAntennaAsync(I)V

    goto :goto_0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    const/4 v4, 0x1

    .line 1345
    const/4 v1, -0x1

    if-ne v1, p2, :cond_2

    .line 1346
    if-eq v4, p1, :cond_0

    .line 1347
    const-string v1, "FmRx/Activity"

    const-string v2, "Error: Invalid requestcode."

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    :goto_0
    return-void

    .line 1350
    :cond_0
    const-string v1, "ACTIVITY_RESULT"

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 1353
    .local v0, iStation:I
    iput v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 1356
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    .line 1357
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActivityForReult:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_1

    .line 1359
    const-string v1, "FmRx/Activity"

    const-string v2, "activity.onActivityResult mService is null"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1360
    iput-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mNeedTuneto:Z

    goto :goto_0

    .line 1363
    :cond_1
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->tuneToStation(I)V

    goto :goto_0

    .line 1367
    .end local v0           #iStation:I
    :cond_2
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1368
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f020009

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1370
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1380
    :goto_1
    const-string v1, "FmRx/Activity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The activity for requestcode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " does not return any data."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1374
    :cond_3
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v2, 0x7f020007

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1376
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1578
    const-string v1, "FmRx/Activity"

    const-string v2, "begin FMRadioActivity.onBackPressed"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1580
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-eqz v1, :cond_1

    .line 1581
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 1582
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v1, :cond_0

    .line 1583
    const-string v1, "FmRx/Activity"

    const-string v2, "mService is null"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    :goto_0
    return-void

    .line 1587
    :cond_0
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v0

    .line 1588
    .local v0, isPlaying:Z
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1589
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1590
    invoke-direct {p0, v0}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1591
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    goto :goto_0

    .line 1596
    .end local v0           #isPlaying:Z
    :cond_1
    iget-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v1}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUping()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1597
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1598
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1599
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1600
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1601
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V

    goto :goto_0

    .line 1605
    :cond_2
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1607
    const-string v1, "FmRx/Activity"

    const-string v2, "end FMRadioActivity.onBackPressed"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    .line 945
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 946
    .local v3, startTime:J
    const-string v5, "FmRx/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] onCreate start ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 948
    const-string v5, "FmRx/Activity"

    const-string v6, "FMRadioActivity.onCreate start"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 952
    const/16 v5, 0xa

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setVolumeControlStream(I)V

    .line 953
    const v5, 0x7f030006

    invoke-virtual {p0, v5}, Landroid/app/Activity;->setContentView(I)V

    .line 956
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->initUIComponent()V

    .line 958
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->registerButtonClickListener()V

    .line 962
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/mediatek/FMRadio/FMRadioStation;->getCurrentStation(Landroid/content/Context;)I

    move-result v5

    iput v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    .line 963
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/FMRadioStation;->isFavoriteStation(Landroid/content/Context;I)Z

    move-result v2

    .line 967
    .local v2, isFavoriteStation:Z
    if-eqz v2, :cond_0

    .line 968
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v6, 0x7f020009

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 970
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationName:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    iget v7, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    const/4 v8, 0x2

    invoke-static {v6, v7, v8}, Lcom/mediatek/FMRadio/FMRadioStation;->getStationName(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 977
    :goto_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mTextStationValue:Landroid/widget/TextView;

    iget v6, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mCurrentStation:I

    invoke-static {v6}, Lcom/mediatek/FMRadio/FMRadioUtils;->formatStation(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 978
    const/high16 v5, 0x7f02

    invoke-static {p0, v5}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v5

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimation:Landroid/view/animation/Animation;

    .line 980
    const v5, 0x7f060068

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    .line 981
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAnimImage:Landroid/widget/ImageView;

    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 983
    const-string v5, "audio"

    invoke-virtual {p0, v5}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/media/AudioManager;

    iput-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mAudioManager:Landroid/media/AudioManager;

    .line 986
    const-string v5, "FmRx/Activity"

    const-string v6, "FMRadioActivity.onCreate end"

    invoke-static {v5, v6}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 988
    .local v0, endTime:J
    const-string v5, "FmRx/Activity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[Performance test][FMRadio] onCreate end ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return-void

    .line 973
    .end local v0           #endTime:J
    :cond_0
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonAddToFavorite:Landroid/widget/ImageButton;

    const v6, 0x7f020007

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 1188
    const-string v1, "FmRx/Activity"

    const-string v2, "start FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1189
    invoke-virtual {p0}, Landroid/app/Activity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 1190
    .local v0, inflater:Landroid/view/MenuInflater;
    const/high16 v1, 0x7f05

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1191
    const v1, 0x7f06006c

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    .line 1192
    const v1, 0x7f06006e

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    .line 1193
    const v1, 0x7f06006d

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    .line 1195
    const-string v1, "FmRx/Activity"

    const-string v2, "end FMRadioActivity.onCreateOptionsMenu"

    invoke-static {v1, v2}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    const/4 v1, 0x1

    return v1
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1152
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1153
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    if-eqz v0, :cond_0

    .line 1154
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mSDListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsSDListenerRegistered:Z

    .line 1162
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 1164
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    invoke-virtual {v0, v1}, Lcom/mediatek/FMRadio/FMRadioService;->unregisterFMRadioListener(Lcom/mediatek/FMRadio/FMRadioListener;)V

    .line 1171
    :goto_0
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFMRadioListener:Lcom/mediatek/FMRadio/FMRadioListener;

    .line 1172
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_1

    .line 1173
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1174
    iput-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1176
    :cond_1
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioActivity.onDestroy"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1178
    return-void

    .line 1167
    :cond_2
    const-string v0, "FmRx/Activity"

    const-string v1, "onDestroy. mService is not connected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 3
    .parameter "menu"

    .prologue
    .line 1852
    const-string v0, "FmRx/Activity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "popmenu dismiss listener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-virtual {p0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 1854
    return-void
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 7
    .parameter "item"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1812
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMenuItemClick:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1839
    const-string v2, "FmRx/Activity"

    const-string v4, "invalid menu item"

    invoke-static {v2, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1842
    :goto_0
    return v3

    .line 1816
    :pswitch_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1817
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1818
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1819
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1820
    invoke-direct {p0, v3}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1821
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->showSearchDialog()V

    .line 1822
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/mediatek/FMRadio/FMRadioStation;->cleanSearchedStations(Landroid/content/Context;)V

    .line 1823
    iget-object v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v2}, Lcom/mediatek/FMRadio/FMRadioService;->startScanAsync()V

    goto :goto_0

    .line 1827
    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1828
    .local v0, startTime:J
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][FMRadio] switch speaker start ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1829
    const-string v4, "FmRx/Activity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[Performance test][FMRadio] switch earphone start ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1830
    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v4}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v4

    if-nez v4, :cond_0

    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->setSpeakerPhoneOn(Z)V

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    .line 1834
    .end local v0           #startTime:J
    :pswitch_2
    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->changeRecordingMode(Z)V

    .line 1835
    const/4 v2, -0x1

    invoke-direct {p0, v2}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshRecordingStatus(I)V

    goto :goto_0

    .line 1813
    nop

    :pswitch_data_0
    .packed-switch 0x7f06006f
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .parameter "item"

    .prologue
    const v7, 0x7f060070

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1255
    const-string v3, "FmRx/Activity"

    const-string v4, "start FMRadioActivity.onOptionsItemSelected"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1256
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    .line 1317
    const-string v3, "FmRx/Activity"

    const-string v4, "Error: Invalid options menu item."

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    :goto_0
    const-string v3, "FmRx/Activity"

    const-string v4, "end FMRadioActivity.onOptionsItemSelected"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1321
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 1258
    :sswitch_0
    invoke-virtual {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->onBackPressed()V

    goto :goto_0

    .line 1263
    :sswitch_1
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1264
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1265
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1266
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1268
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->enterChannelList()V

    goto :goto_0

    .line 1272
    :sswitch_2
    const-string v3, "FmRx/Activity"

    const-string v4, "click fm_power menu"

    invoke-static {v3, v4}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1273
    iget-boolean v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    if-eqz v3, :cond_0

    .line 1274
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshImageButton(Z)V

    .line 1275
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1276
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshPopupMenuItem(Z)V

    .line 1277
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1278
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V

    goto :goto_0

    .line 1281
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->powerUpFM()V

    goto :goto_0

    .line 1285
    :sswitch_3
    invoke-interface {p1, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1287
    new-instance v3, Landroid/widget/PopupMenu;

    iget-object v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mContext:Landroid/content/Context;

    const v5, 0x7f06006e

    invoke-virtual {p0, v5}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    .line 1288
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v2

    .line 1289
    .local v2, menu:Landroid/view/Menu;
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v3

    const v4, 0x7f050001

    invoke-virtual {v3, v4, v2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 1290
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 1291
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 1293
    const/4 v0, 0x0

    .line 1295
    .local v0, isFmViaBt:Z
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isFmViaBt()Z

    move-result v0

    .line 1301
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 1302
    .local v1, isPlaying:Z
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 1303
    const v3, 0x7f060071

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1304
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1305
    invoke-interface {v2, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v3}, Lcom/mediatek/FMRadio/FMRadioService;->isSpeakerUsed()Z

    move-result v3

    if-eqz v3, :cond_3

    const v3, 0x7f04003f

    :goto_1
    invoke-interface {v4, v3}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 1309
    :cond_1
    if-eqz v1, :cond_2

    .line 1310
    const v3, 0x7f06006f

    invoke-interface {v2, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 1313
    :cond_2
    iget-object v3, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1305
    :cond_3
    const v3, 0x7f04003e

    goto :goto_1

    .line 1256
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f06006c -> :sswitch_1
        0x7f06006d -> :sswitch_2
        0x7f06006e -> :sswitch_3
    .end sparse-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 1106
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1107
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    .line 1112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    .line 1113
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->dismissSearchDialog()V

    .line 1114
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioActivity.onPause"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1116
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 9
    .parameter "menu"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1207
    const-string v5, "FmRx/Activity"

    const-string v8, "start FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemChannelList:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_1

    move v5, v6

    :goto_0
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1213
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemOverflow:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_2

    move v5, v6

    :goto_1
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1214
    iget-object v8, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mMenuItemPower:Landroid/view/MenuItem;

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_3

    move v5, v6

    :goto_2
    invoke-interface {v8, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 1215
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v5, :cond_5

    .line 1216
    const-string v5, "FmRx/Activity"

    const-string v8, "mService is null"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-nez v5, :cond_4

    .line 1244
    :cond_0
    :goto_3
    return v6

    :cond_1
    move v5, v7

    .line 1212
    goto :goto_0

    :cond_2
    move v5, v7

    .line 1213
    goto :goto_1

    :cond_3
    move v5, v7

    .line 1214
    goto :goto_2

    :cond_4
    move v6, v7

    .line 1217
    goto :goto_3

    .line 1219
    :cond_5
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isShortAntennaSupport()Z

    move-result v4

    .line 1221
    .local v4, isShortAntennaSupport:Z
    if-nez v4, :cond_6

    .line 1222
    const-string v5, "FmRx/Activity"

    const-string v7, "onPrepareOptionsMenu: no antenna support"

    invoke-static {v5, v7}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-direct {p0, v6}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    goto :goto_3

    .line 1227
    :cond_6
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isPowerUp()Z

    move-result v1

    .line 1228
    .local v1, isPlaying:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isMakePowerDown()Z

    move-result v0

    .line 1229
    .local v0, isMakePowerdown:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isSeeking()Z

    move-result v3

    .line 1230
    .local v3, isSeeking:Z
    iget-object v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v5}, Lcom/mediatek/FMRadio/FMRadioService;->isScanning()Z

    move-result v2

    .line 1232
    .local v2, isScan:Z
    if-nez v3, :cond_7

    if-eqz v2, :cond_a

    :cond_7
    move v5, v7

    :goto_4
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuItem(Z)V

    .line 1233
    if-nez v2, :cond_8

    if-eqz v3, :cond_b

    :cond_8
    move v5, v7

    :goto_5
    invoke-direct {p0, v5}, Lcom/mediatek/FMRadio/FMRadioActivity;->refreshActionMenuPower(Z)V

    .line 1238
    if-eqz v3, :cond_9

    .line 1239
    const-string v5, "FmRx/Activity"

    const-string v8, "onPrepareOptionsMenu: it is seeking"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->startAnimation()V

    .line 1243
    :cond_9
    const-string v5, "FmRx/Activity"

    const-string v8, "end FMRadioActivity.onPrepareOptionsMenu"

    invoke-static {v5, v8}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    if-eqz v5, :cond_0

    move v6, v7

    goto :goto_3

    :cond_a
    move v5, v1

    .line 1232
    goto :goto_4

    .line 1233
    :cond_b
    if-nez v1, :cond_c

    if-eqz v0, :cond_d

    iget-boolean v5, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedDisablePower:Z

    if-nez v5, :cond_d

    :cond_c
    move v5, v6

    goto :goto_5

    :cond_d
    move v5, v7

    goto :goto_5
.end method

.method public onRecordingDialogClick(Ljava/lang/String;)V
    .locals 1
    .parameter "recordingName"

    .prologue
    .line 1993
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0, p1}, Lcom/mediatek/FMRadio/FMRadioService;->saveRecordingAsync(Ljava/lang/String;)V

    .line 1994
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 1085
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1086
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onResume start"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsActivityForeground:Z

    .line 1088
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-nez v0, :cond_0

    .line 1089
    const-string v0, "FmRx/Activity"

    const-string v1, "service has not bind finished"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1099
    :goto_0
    return-void

    .line 1092
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateMenuStatus()V

    .line 1093
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->updateDialogStatus()V

    .line 1094
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->isRecordFileExist()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1095
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mButtonPlayback:Landroid/widget/ImageButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1098
    :cond_1
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onResume end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 1785
    const/4 v2, 0x5

    .line 1786
    .local v2, size:I
    new-instance v0, Landroid/os/Bundle;

    const/4 v3, 0x5

    invoke-direct {v0, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 1787
    .local v0, bundle:Landroid/os/Bundle;
    const/4 v1, 0x0

    .line 1788
    .local v1, isInRecordingMode:Z
    const-string v3, "isInRecordingMode"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsInRecordingMode:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1789
    const-string v3, "mPrevRecorderState"

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mPrevRecorderState:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1790
    const-string v3, "mIsFreshRecordingStatus"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowRecordDlg:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1791
    const-string v3, "mIsNeedShowNoAntennaDlg"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowNoAntennaDlg:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1792
    const-string v3, "mIsNeedShowSearchDlg"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsNeedShowSearchDlg:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1793
    const-string v3, "mRecordState"

    iget v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mRecordState:I

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1794
    const-string v3, "mIsPlaying"

    iget-boolean v4, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsPlaying:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1795
    return-object v0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1800
    const-string v0, "FmRx/Activity"

    const-string v1, "onSaveInstanceState"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1802
    return-void
.end method

.method public onStart()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 1054
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1055
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onStart start"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1058
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1060
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot start FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    :goto_0
    return-void

    .line 1064
    :cond_0
    iput-boolean v2, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceStarted:Z

    .line 1065
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/FMRadio/FMRadioService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/ContextWrapper;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 1069
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-nez v0, :cond_1

    .line 1070
    const-string v0, "FmRx/Activity"

    const-string v1, "Error: Cannot bind FM service"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1071
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 1075
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->restoreConfiguration()V

    .line 1077
    const-string v0, "FmRx/Activity"

    const-string v1, "FMRadioActivity.onStart end"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 1123
    const-string v0, "FmRx/Activity"

    const-string v1, "start FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    iget-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    if-eqz v0, :cond_0

    .line 1125
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsServiceBinded:Z

    .line 1129
    :cond_0
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    if-eqz v0, :cond_2

    .line 1135
    iget-object v0, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mService:Lcom/mediatek/FMRadio/FMRadioService;

    invoke-virtual {v0}, Lcom/mediatek/FMRadio/FMRadioService;->isAntennaAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1136
    const-string v0, "FmRx/Activity"

    const-string v1, "onStop. short antenna not support,and earphone is not ok, exit FM."

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-direct {p0}, Lcom/mediatek/FMRadio/FMRadioActivity;->exitService()V

    .line 1143
    :cond_1
    :goto_0
    const-string v0, "FmRx/Activity"

    const-string v1, "end FMRadioActivity.onStop"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1145
    return-void

    .line 1140
    :cond_2
    const-string v0, "FmRx/Activity"

    const-string v1, "onStop. mService is not connected"

    invoke-static {v0, v1}, Lcom/mediatek/FMRadio/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public showNoAntennaDialog()V
    .locals 3

    .prologue
    .line 1880
    invoke-static {}, Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;->newInstance()Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;

    move-result-object v0

    .line 1881
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/NoAntennaDialog;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "NoAntenna"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1882
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1883
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mIsHasShowNoAntennaDlg:Z

    .line 1884
    return-void
.end method

.method public showSaveRecordingDialog(Ljava/lang/String;)V
    .locals 3
    .parameter "name"

    .prologue
    .line 1894
    new-instance v0, Lcom/mediatek/FMRadio/FMRecordDialogFragment;

    invoke-direct {v0, p1}, Lcom/mediatek/FMRadio/FMRecordDialogFragment;-><init>(Ljava/lang/String;)V

    .line 1895
    .local v0, newFragment:Lcom/mediatek/FMRadio/FMRecordDialogFragment;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "SaveRecording"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1896
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1897
    return-void
.end method

.method public showSearchDialog()V
    .locals 3

    .prologue
    .line 1903
    invoke-static {}, Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;->newInstance()Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;

    move-result-object v0

    .line 1904
    .local v0, newFragment:Lcom/mediatek/FMRadio/dialogs/SearchChannelsDialog;
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v2, "Search"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1905
    iget-object v1, p0, Lcom/mediatek/FMRadio/FMRadioActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {v1}, Landroid/app/FragmentManager;->executePendingTransactions()Z

    .line 1906
    return-void
.end method

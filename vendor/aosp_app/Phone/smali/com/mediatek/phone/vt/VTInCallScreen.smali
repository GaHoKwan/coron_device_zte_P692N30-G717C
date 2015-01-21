.class public Lcom/mediatek/phone/vt/VTInCallScreen;
.super Landroid/widget/RelativeLayout;
.source "VTInCallScreen.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/mediatek/phone/vt/IVTInCallScreen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;,
        Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final HIDDEN:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "VTInCallScreen"

.field private static final SECOND_TO_MILLISECOND:I = 0x3e8

.field private static final VDBG:Z = true

.field private static final VISIBLE:I = 0xff

.field private static final VT_MEDIA_ERROR_VIDEO_FAIL:I = 0x1

.field private static final VT_MEDIA_OCCUPIED:I = 0x1

.field private static final VT_MEDIA_RECORDER_ERROR_UNKNOWN:I = 0x1

.field private static final VT_MEDIA_RECORDER_INFO_MAX_FILESIZE_REACHED:I = 0x321

.field private static final VT_MEDIA_RECORDER_NO_I_FRAME:I = 0x7fff

.field private static final VT_PEER_SNAPSHOT_FAIL:I = 0x7f

.field private static final VT_PEER_SNAPSHOT_OK:I = 0x7e

.field private static final VT_TAKE_PEER_PHOTO_DISK_MIN_SIZE:I = 0xf4240

.field private static final WAITING_TIME_FOR_ASK_VT_SHOW_ME:I = 0x5


# instance fields
.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

.field private mHandler:Landroid/os/Handler;

.field private mHasMediaRecordError:Z

.field private mHighVideoHolder:Landroid/view/SurfaceHolder;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mInCallVideoSettingDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

.field private mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

.field private mLocaleChanged:Z

.field private mLowVideoHolder:Landroid/view/SurfaceHolder;

.field private mVTAudio:Landroid/widget/CompoundButton;

.field private mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

.field private mVTDialpad:Landroid/widget/CompoundButton;

.field private mVTHangUp:Landroid/widget/ImageButton;

.field private mVTHangUpWrapper:Landroid/widget/LinearLayout;

.field private mVTHighDown:Landroid/widget/ImageButton;

.field private mVTHighUp:Landroid/widget/ImageButton;

.field private mVTHighVideo:Landroid/view/SurfaceView;

.field private mVTInCallCanvas:Landroid/view/ViewGroup;

.field private mVTLowDown:Landroid/widget/ImageButton;

.field private mVTLowUp:Landroid/widget/ImageButton;

.field private mVTLowVideo:Landroid/view/SurfaceView;

.field private mVTMTAsker:Landroid/app/AlertDialog;

.field private mVTMute:Landroid/widget/CompoundButton;

.field private mVTOverflowMenu:Landroid/widget/ImageButton;

.field private mVTPopupMenu:Landroid/widget/PopupMenu;

.field private mVTPowerManager:Landroid/os/PowerManager;

.field mVTRecorderEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVTRecorderSelector:Landroid/app/AlertDialog;

.field private mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

.field private mVTSwapVideo:Landroid/widget/CompoundButton;

.field private mVTVoiceReCallDialog:Landroid/app/AlertDialog;

.field private mVTVoiceRecordingIcon:Landroid/widget/ImageView;

.field private mVTWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 191
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 146
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 235
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 194
    const-string v0, "VTInCallScreen constructor..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 199
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 207
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 235
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 209
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 210
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 219
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 146
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 235
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$1;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$1;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    .line 221
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 222
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTSettingToVTManager()V

    return-void
.end method

.method static synthetic access$1100(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalZoom()V

    return-void
.end method

.method static synthetic access$1300(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalBrightness()V

    return-void
.end method

.method static synthetic access$1400(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalContrast()V

    return-void
.end method

.method static synthetic access$1500(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalEffect()V

    return-void
.end method

.method static synthetic access$1600(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingLocalNightMode()V

    return-void
.end method

.method static synthetic access$1700(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSettingPeerQuality()V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1802(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$1900(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateLocalZoomOrBrightness()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onReceiveVTManagerReady()V

    return-void
.end method

.method static synthetic access$2000(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$2400(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/mediatek/phone/vt/VTInCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->startRecord(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/mediatek/phone/vt/VTInCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2700(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick()V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/phone/vt/VTInCallScreen;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/phone/vt/VTInCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 105
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTReceiveFirstFrame()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/phone/vt/VTInCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHasMediaRecordError:Z

    return v0
.end method

.method static synthetic access$702(Lcom/mediatek/phone/vt/VTInCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    iput-boolean p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHasMediaRecordError:Z

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/phone/vt/VTInCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 105
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private closeVTInCallCanvas()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 824
    const-string v0, "closeVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 826
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 829
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 830
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 832
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 835
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 836
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 838
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 839
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 841
    :cond_3
    return-void
.end method

.method private closeVTManager()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1848
    const-string v0, "closeVTManager()!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1850
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVTDialogs()V

    .line 1851
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1853
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1856
    :cond_0
    const-string v0, "bluetooth audio is not connected, turn off speaker"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1857
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x1

    invoke-static {v0, v3, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1860
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHandler:Landroid/os/Handler;

    const v1, 0x8001

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1862
    const-string v0, "VT_VOICE_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VT_VIDEO_RECORDING"

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1864
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->isVTRecording()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1865
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    .line 1870
    :cond_3
    const-string v0, "- call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1872
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->onDisconnected()V

    .line 1874
    const-string v0, "- finish call VTManager onDisconnected ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1878
    const-string v0, "- set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1880
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTClose()V

    .line 1882
    const-string v0, "- finish set VTManager close ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1885
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTInControlRes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1886
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.phone.extra.VT_CALL_END"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1887
    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTInControlRes(Z)V

    .line 1889
    :cond_4
    return-void
.end method

.method private constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;
    .locals 2
    .parameter "anchorView"

    .prologue
    .line 2522
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-nez v0, :cond_0

    .line 2523
    new-instance v0, Landroid/widget/PopupMenu;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1, p1}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    .line 2524
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    const v1, 0x7f100003

    invoke-virtual {v0, v1}, Landroid/widget/PopupMenu;->inflate(I)V

    .line 2525
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2527
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->setupMenuItems(Landroid/view/Menu;)V

    .line 2528
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    return-object v0
.end method

.method private dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 2734
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 2735
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2737
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2739
    :cond_0
    return-void
.end method

.method private dismissVideoSettingDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3239
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3240
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3241
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 3243
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3244
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3245
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 3247
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 3248
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3249
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 3251
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 3252
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3253
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 3255
    :cond_3
    return-void
.end method

.method private getVTInControlRes()Z
    .locals 1

    .prologue
    .line 1817
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    return v0
.end method

.method private handleAudioButtonClick()V
    .locals 3

    .prologue
    .line 2780
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 2782
    .local v0, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 2784
    const-string v1, "- handleAudioButtonClick: \'popup menu\' mode..."

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2786
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showAudioModePopup()V

    .line 2789
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2796
    :goto_0
    return-void

    .line 2792
    :cond_0
    const-string v1, "- handleAudioButtonClick: \'speaker toggle\' mode..."

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2794
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideLocalZoomOrBrightness()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 977
    const-string v0, "hideLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 980
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 984
    return-void
.end method

.method private isDialerOpened()Z
    .locals 1

    .prologue
    .line 2431
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 3284
    const-string v0, "VTInCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    return-void
.end method

.method private makeVoiceReCall(Ljava/lang/String;I)V
    .locals 4
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "makeVoiceReCall(), number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " slot is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2272
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 2273
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.phone.extra.slot"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2274
    const-string v1, "com.android.phone.extra.international"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2275
    const-string v1, "com.android.phone.extra.vt_make_voice_recall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2276
    const/high16 v1, 0x1400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2277
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContextWrapper;->startActivity(Landroid/content/Intent;)V

    .line 2280
    sget-object v1, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_WAITING:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 2281
    return-void
.end method

.method private okToRecordVoice()Z
    .locals 1

    .prologue
    .line 2518
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    return v0
.end method

.method private onReceiveVTManagerReady()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 3108
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    .line 3109
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 3112
    const-string v0, "Incallscreen, before call setting"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3115
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3117
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() start;"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3120
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->unlockPeerVideo()V

    .line 3122
    const-string v0, "Now DM not locked, VTManager.getInstance().unlockPeerVideo() end;"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3126
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    if-eqz v0, :cond_0

    .line 3129
    const-string v0, "- VTSettingUtils.getInstance().mShowLocalMT : 1 !"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3130
    const-string v0, "Incallscreen, before enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3132
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableAlwaysAskSettings(I)V

    .line 3134
    const-string v0, "Incallscreen, after enableAlwaysAskSettings"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3137
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getInCallScreenInstance()Lcom/android/phone/InCallScreen;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080038

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080039

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$20;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$20;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f08003a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$19;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$19;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$18;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$18;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 3202
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 3204
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-direct {v0, p0, v1, v2}, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;ILandroid/app/AlertDialog;)V

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreen$DialogCancelTimer;->start()V

    .line 3208
    :cond_0
    return-void
.end method

.method private onVTHideMeClick()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1184
    const-string v2, "onVTHideMeClick()..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1187
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v2

    sget-object v3, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v2, v3, :cond_0

    .line 1209
    :goto_0
    return-void

    .line 1192
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 1194
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v2, :cond_1

    .line 1195
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v1, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1207
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v3, :cond_4

    :goto_2
    iput-boolean v0, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1208
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    goto :goto_0

    .line 1197
    :cond_1
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1198
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1199
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v2

    iget-object v2, v2, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1200
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    const/4 v3, 0x2

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    .line 1202
    :cond_3
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v3}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_1

    :cond_4
    move v0, v1

    .line 1207
    goto :goto_2
.end method

.method private onVTHideMeClick2()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1215
    const-string v0, "onVTHideMeClick2()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1218
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v0}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 1220
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1221
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    invoke-static {v1}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathUserselect(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    .line 1229
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v3, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    .line 1230
    return-void

    .line 1223
    :cond_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPicToReplaceLocal:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1224
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0

    .line 1226
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTAdvancedSetting;->getPicPathDefault()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/mediatek/vt/VTManager;->setLocalVideoType(ILjava/lang/String;)V

    goto :goto_0
.end method

.method private onVTInCallVideoSetting()V
    .locals 7

    .prologue
    const/4 v6, -0x1

    const v5, 0x7f090016

    const v4, 0x7f080020

    .line 1468
    const-string v2, "onVTInCallVideoSetting() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1471
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$4;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$4;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1531
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1532
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080174

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$5;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$5;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1541
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v2, :cond_3

    .line 1542
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_0

    .line 1543
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1567
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1568
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1569
    return-void

    .line 1545
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_1

    .line 1546
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1548
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_2

    .line 1549
    const/4 v2, 0x2

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1552
    :cond_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1556
    :cond_3
    const v2, 0x7f090017

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$6;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$6;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v6, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingLocalEffect()V
    .locals 12

    .prologue
    .line 1573
    const-string v10, "onVTInCallVideoSettingLocalEffect() ! "

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1575
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v7, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1576
    .local v7, myBuilder:Landroid/app/AlertDialog$Builder;
    const v10, 0x7f080174

    new-instance v11, Lcom/mediatek/phone/vt/VTInCallScreen$7;

    invoke-direct {v11, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$7;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v7, v10, v11}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1585
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v9

    .line 1588
    .local v9, supportEntryValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_0

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    if-gtz v10, :cond_1

    .line 1621
    :cond_0
    :goto_0
    return-void

    .line 1592
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090015

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 1594
    .local v3, entryValues:[Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090014

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 1596
    .local v1, entries:[Ljava/lang/CharSequence;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1597
    .local v4, entryValues2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1599
    .local v2, entries2:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    const/4 v5, 0x0

    .local v5, i:I
    array-length v6, v3

    .local v6, len:I
    :goto_1
    if-ge v5, v6, :cond_3

    .line 1600
    aget-object v10, v3, v5

    invoke-virtual {v10}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    if-ltz v10, :cond_2

    .line 1601
    aget-object v10, v3, v5

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1602
    aget-object v10, v1, v5

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1599
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1607
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "onVTInCallVideoSettingLocalEffect() : entryValues2.size() - "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1610
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/mediatek/vt/VTManager;->getColorEffect()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 1612
    .local v0, currentValue:I
    new-instance v8, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;

    invoke-direct {v8, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1614
    .local v8, myClickListener:Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;
    invoke-virtual {v8, v4}, Lcom/mediatek/phone/vt/VTInCallScreen$InCallVideoSettingLocalEffectListener;->setValues(Ljava/util/ArrayList;)V

    .line 1615
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/CharSequence;

    invoke-virtual {v7, v10, v0, v8}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1618
    const v10, 0x7f080023

    invoke-virtual {v7, v10}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1619
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v10

    iput-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1620
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v10}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0
.end method

.method private onVTInCallVideoSettingLocalNightMode()V
    .locals 6

    .prologue
    const v5, 0x7f090018

    const/4 v4, 0x0

    .line 1650
    const-string v2, "onVTInCallVideoSettingLocalNightMode() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1653
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1654
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080174

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$8;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$8;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1662
    const v2, 0x7f080024

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1664
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$9;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$9;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1689
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->isSupportNightMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1691
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getNightMode()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1692
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1713
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1714
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1715
    return-void

    .line 1696
    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1701
    :cond_1
    const v2, 0x7f090019

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$10;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$10;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0
.end method

.method private onVTInCallVideoSettingPeerQuality()V
    .locals 6

    .prologue
    const v5, 0x7f09001a

    const/4 v4, 0x1

    .line 1719
    const-string v2, "onVTInCallVideoSettingPeerQuality() ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1721
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1722
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080174

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$11;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$11;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1730
    const v2, 0x7f080025

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 1732
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$12;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$12;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 1757
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-ne v4, v2, :cond_0

    .line 1758
    const/4 v2, 0x0

    invoke-virtual {v0, v5, v2, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1773
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1774
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 1775
    return-void

    .line 1761
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->getVideoQuality()I

    move-result v2

    if-nez v2, :cond_1

    .line 1762
    invoke-virtual {v0, v5, v4, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 1767
    :cond_1
    const-string v2, "VTManager.getInstance().getVideoQuality() is not VTManager.VT_VQ_SHARP or VTManager.VT_VQ_NORMAL , error ! "

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private onVTReceiveFirstFrame()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1826
    const-string v0, "onVTReceiveFirstFrame() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_2

    .line 1829
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1830
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1831
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1841
    :cond_0
    :goto_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 1842
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    .line 1844
    :cond_1
    return-void

    .line 1835
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1836
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1837
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private onVTShowDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1426
    const-string v0, "onVTShowDialpad() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1429
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1431
    const-string v0, "onShowHideDialpad(): Set mInCallTitle VISIBLE"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1433
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 1435
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1436
    return-void
.end method

.method private onVTSwapVideos()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1440
    const-string v0, "onVTSwapVideos() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1443
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_1

    .line 1446
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1449
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v0, :cond_5

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1451
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1452
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1453
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1455
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_2

    .line 1456
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalZoom()V

    .line 1458
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_3

    .line 1459
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalBrightness()V

    .line 1461
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_4

    .line 1462
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showVTLocalContrast()V

    .line 1464
    :cond_4
    return-void

    :cond_5
    move v0, v2

    .line 1449
    goto :goto_0
.end method

.method private onVTSwitchCameraClick()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1234
    const-string v0, "onVTSwitchCameraClick()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1237
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->READY:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v2, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v2, :cond_0

    .line 1267
    :goto_0
    return-void

    .line 1242
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSwitchCamera:Z

    if-eqz v0, :cond_1

    .line 1244
    const-string v0, "VTManager is handling switchcamera now, so returns this time."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1251
    :cond_1
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$3;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$3;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 1260
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTFrontCameraNow:Z

    .line 1261
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1263
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1264
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1265
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 1266
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1260
    goto :goto_1
.end method

.method private onVTTakePeerPhotoClick()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1136
    const-string v0, "onVTTakePeerPhotoClick()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1139
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->getState()Lcom/mediatek/vt/VTManager$State;

    move-result-object v0

    sget-object v1, Lcom/mediatek/vt/VTManager$State;->CONNECTED:Lcom/mediatek/vt/VTManager$State;

    if-eq v0, v1, :cond_0

    .line 1180
    :goto_0
    return-void

    .line 1144
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInSnapshot:Z

    if-eqz v0, :cond_1

    .line 1146
    const-string v0, "VTManager is handling snapshot now, so returns this time."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1152
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1153
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080034

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1157
    :cond_2
    const-wide/32 v0, 0xf4240

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1158
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f080035

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 1163
    :cond_3
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$2;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$2;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_0
.end method

.method private onVoiceVideoRecordClick(Landroid/view/MenuItem;)V
    .locals 5
    .parameter "menuItem"

    .prologue
    const/4 v4, 0x1

    .line 3050
    const-string v1, "onVoiceVideoRecordClick"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3052
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3053
    .local v0, title:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 3078
    :cond_0
    :goto_0
    return-void

    .line 3056
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isExternalStorageMounted()Z

    move-result v1

    if-nez v1, :cond_2

    .line 3057
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f08000c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3060
    :cond_2
    const-wide/32 v1, 0x200000

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtils;->diskSpaceAvailable(J)Z

    move-result v1

    if-nez v1, :cond_3

    .line 3061
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v4}, Lcom/android/phone/InCallScreen;->handleStorageFull(Z)V

    goto :goto_0

    .line 3065
    :cond_3
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080070

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 3067
    const-string v1, "want to startRecord"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3069
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-nez v1, :cond_0

    .line 3071
    const-string v1, "startRecord"

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3073
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showStartVTRecorderDialog()V

    goto :goto_0

    .line 3075
    :cond_4
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080071

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3076
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopRecord()V

    goto :goto_0
.end method

.method private openVTInCallCanvas()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 806
    const-string v0, "openVTInCallCanvas!"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 808
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 809
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 810
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 814
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 817
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 818
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 820
    :cond_2
    return-void
.end method

.method private setVTInControlRes(Z)V
    .locals 1
    .parameter "value"

    .prologue
    .line 1821
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean p1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInControlRes:Z

    .line 1822
    return-void
.end method

.method private setVTSettingToVTManager()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3259
    const-string v0, "VTIncallscreen, set VTSetting To VTManager(enableHideYou | enableHideMe ...)"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3262
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v0, :cond_0

    .line 3263
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->enableHideYou(I)V

    .line 3268
    :goto_0
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    if-eqz v0, :cond_1

    .line 3269
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableHideMe(I)V

    .line 3274
    :goto_1
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3275
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    .line 3281
    :goto_2
    return-void

    .line 3265
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->enableHideYou(I)V

    goto :goto_0

    .line 3271
    :cond_1
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->enableHideMe(I)V

    goto :goto_1

    .line 3276
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-object v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3277
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    goto :goto_2

    .line 3279
    :cond_3
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->incomingVideoDispaly(I)V

    goto :goto_2
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 2669
    const-string v7, "showAudioModePopup()..."

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2672
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2674
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-nez v7, :cond_0

    .line 2675
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 2677
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v10, 0x7f10

    iget-object v11, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 2679
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 2680
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 2685
    :cond_0
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 2688
    .local v2, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 2695
    .local v3, menu:Landroid/view/Menu;
    const v7, 0x7f0a0130

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2696
    .local v4, speakerItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2702
    const v7, 0x7f0a0131

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 2703
    .local v1, earpieceItem:Landroid/view/MenuItem;
    const v7, 0x7f0a0132

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2704
    .local v6, wiredHeadsetItem:Landroid/view/MenuItem;
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v5

    .line 2710
    .local v5, usingHeadset:Z
    if-nez v5, :cond_2

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2711
    if-nez v5, :cond_1

    move v9, v8

    :cond_1
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2713
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2714
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2716
    const v7, 0x7f0a0133

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 2717
    .local v0, bluetoothItem:Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2719
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 2724
    iput-boolean v8, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2725
    return-void

    .end local v0           #bluetoothItem:Landroid/view/MenuItem;
    :cond_2
    move v7, v9

    .line 2710
    goto :goto_0
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 1
    .parameter "resid"
    .parameter "isStartupError"

    .prologue
    .line 2098
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 2099
    return-void
.end method

.method private showReCallDialogEx(ILjava/lang/String;I)V
    .locals 6
    .parameter "resid"
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2301
    const-string v4, "showReCallDialogEx... "

    invoke-direct {p0, v4}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2304
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 2305
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2363
    :goto_0
    return-void

    .line 2309
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2313
    .local v3, msg:Ljava/lang/CharSequence;
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$13;

    invoke-direct {v1, p0, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen$13;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;Ljava/lang/String;I)V

    .line 2330
    .local v1, clickListener1:Landroid/content/DialogInterface$OnClickListener;
    new-instance v2, Lcom/mediatek/phone/vt/VTInCallScreen$14;

    invoke-direct {v2, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$14;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 2348
    .local v2, clickListener2:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/mediatek/phone/vt/VTInCallScreen$15;

    invoke-direct {v0, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$15;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 2356
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080174

    invoke-virtual {v4, v5, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f080170

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 2359
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 2360
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v5}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 2362
    iget-object v4, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private showStartVTRecorderDialog()V
    .locals 5

    .prologue
    .line 2968
    const-string v2, "showStartVTRecorderDialog() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2970
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2971
    .local v0, myBuilder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f080174

    new-instance v3, Lcom/mediatek/phone/vt/VTInCallScreen$16;

    invoke-direct {v3, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$16;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2980
    const v2, 0x7f080068

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 2982
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    if-nez v2, :cond_3

    .line 2983
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    .line 2988
    :goto_0
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2990
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f080069

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2993
    :cond_0
    const-string v2, "VT_VOICE_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2994
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2997
    :cond_1
    const-string v2, "VT_VIDEO_RECORDING"

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2998
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f08006b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3002
    :cond_2
    new-instance v1, Lcom/mediatek/phone/vt/VTInCallScreen$17;

    invoke-direct {v1, p0}, Lcom/mediatek/phone/vt/VTInCallScreen$17;-><init>(Lcom/mediatek/phone/vt/VTInCallScreen;)V

    .line 3040
    .local v1, myClickListener:Landroid/content/DialogInterface$OnClickListener;
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 3044
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 3045
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 3046
    return-void

    .line 2985
    .end local v1           #myClickListener:Landroid/content/DialogInterface$OnClickListener;
    :cond_3
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderEntries:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    goto :goto_0
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2
    .parameter "string"

    .prologue
    .line 3219
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 3220
    return-void
.end method

.method private showVTLocalBrightness()V
    .locals 4

    .prologue
    const v3, 0x7f0200ec

    const v1, 0x7f0200eb

    const/4 v2, 0x0

    .line 914
    const-string v0, "showVTLocalBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 917
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 941
    :goto_0
    return-void

    .line 921
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 922
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 923
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 924
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 926
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 927
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 937
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 938
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 939
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 929
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 930
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 931
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 932
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 933
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 934
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalContrast()V
    .locals 4

    .prologue
    const v3, 0x7f0200ee

    const v1, 0x7f0200ed

    const/4 v2, 0x0

    .line 945
    const-string v0, "showVTLocalContrast()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 948
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 972
    :goto_0
    return-void

    .line 952
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 953
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 954
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 955
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 956
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 957
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 958
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 968
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 969
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 970
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 960
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 961
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 962
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 963
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 964
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 965
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private showVTLocalZoom()V
    .locals 4

    .prologue
    const v3, 0x7f0200f0

    const v1, 0x7f0200ef

    const/4 v2, 0x0

    .line 883
    const-string v0, "showVTLocalZoom()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 886
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoReady:Z

    if-nez v0, :cond_0

    .line 910
    :goto_0
    return-void

    .line 890
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_1

    .line 891
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 892
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 893
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 894
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 895
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 896
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 906
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 907
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 908
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 898
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 899
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 900
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 901
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 902
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 903
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_1
.end method

.method private startRecord(I)V
    .locals 7
    .parameter "type"

    .prologue
    const/4 v6, 0x1

    .line 2942
    const-string v2, "startVTRecorder() ..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2944
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getDiskAvailableSize()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    sub-long v0, v2, v4

    .line 2945
    .local v0, sdMaxSize:J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_2

    .line 2946
    const/4 v2, 0x2

    if-ne v2, p1, :cond_1

    .line 2947
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/recording/PhoneRecorder;->getInstance(Landroid/content/Context;)Lcom/mediatek/phone/recording/PhoneRecorder;

    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorder;->isRecording()Z

    move-result v2

    if-nez v2, :cond_0

    .line 2949
    const-string v2, "startRecord"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2952
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVoiceRecord(I)V

    .line 2964
    :cond_0
    :goto_0
    return-void

    .line 2954
    :cond_1
    if-lez p1, :cond_0

    .line 2955
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v2

    invoke-virtual {v2, p1, v0, v1, v6}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->startVideoRecord(IJI)V

    .line 2957
    invoke-virtual {p0, v6}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoCallRecordState(I)V

    goto :goto_0

    .line 2959
    :cond_2
    const-wide/16 v2, -0x1

    cmp-long v2, v2, v0

    if-nez v2, :cond_3

    .line 2960
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080034

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0

    .line 2962
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080035

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private stopVideoRecord()V
    .locals 1

    .prologue
    .line 2915
    const-string v0, "stopVideoRecorder() ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2917
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVideoRecord()V

    .line 2918
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoCallRecordState(I)V

    .line 2919
    return-void
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 12
    .parameter "inCallControlState"

    .prologue
    const/4 v7, 0x1

    const/16 v9, 0xff

    const/4 v8, 0x0

    .line 2814
    const-string v10, "updateAudioButton()..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2823
    const/4 v6, 0x0

    .line 2826
    .local v6, showToggleStateIndication:Z
    const/4 v3, 0x0

    .line 2829
    .local v3, showMoreIndicator:Z
    const/4 v5, 0x0

    .line 2830
    .local v5, showSpeakerOnIcon:Z
    const/4 v4, 0x0

    .line 2831
    .local v4, showSpeakerOffIcon:Z
    const/4 v2, 0x0

    .line 2832
    .local v2, showHandsetIcon:Z
    const/4 v1, 0x0

    .line 2834
    .local v1, showBluetoothIcon:Z
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v10, :cond_2

    .line 2836
    const-string v10, "- updateAudioButton: \'popup menu action button\' mode..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2839
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2844
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2847
    const/4 v3, 0x1

    .line 2848
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v7, :cond_0

    .line 2849
    const/4 v1, 0x1

    .line 2887
    :goto_0
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 2889
    .local v0, layers:Landroid/graphics/drawable/LayerDrawable;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "- \'layers\' drawable: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2897
    const v7, 0x7f0a012b

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v3, :cond_5

    move v7, v9

    :goto_1
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2900
    const v7, 0x7f0a012c

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v1, :cond_6

    move v7, v9

    :goto_2
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2903
    const v7, 0x7f0a012d

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v2, :cond_7

    move v7, v9

    :goto_3
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2906
    const v7, 0x7f0a012e

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    if-eqz v5, :cond_8

    move v7, v9

    :goto_4
    invoke-virtual {v10, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2909
    const v7, 0x7f0a012f

    invoke-virtual {v0, v7}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v4, :cond_9

    :goto_5
    invoke-virtual {v7, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 2911
    return-void

    .line 2850
    .end local v0           #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v7, :cond_1

    .line 2851
    const/4 v5, 0x1

    goto :goto_0

    .line 2853
    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    .line 2855
    :cond_2
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v10, :cond_4

    .line 2857
    const-string v10, "- updateAudioButton: \'speaker toggle\' mode..."

    invoke-direct {p0, v10}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2860
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v10, v7}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2864
    iget-object v10, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    iget-boolean v11, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v10, v11}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2867
    const/4 v6, 0x1

    .line 2868
    iget-boolean v5, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 2869
    iget-boolean v10, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v10, :cond_3

    move v4, v7

    :goto_6
    goto/16 :goto_0

    :cond_3
    move v4, v8

    goto :goto_6

    .line 2872
    :cond_4
    const-string v7, "- updateAudioButton: disabled..."

    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2877
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 2878
    iget-object v7, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2881
    const/4 v6, 0x1

    .line 2882
    const/4 v4, 0x1

    goto/16 :goto_0

    .restart local v0       #layers:Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    move v7, v8

    .line 2897
    goto :goto_1

    :cond_6
    move v7, v8

    .line 2900
    goto :goto_2

    :cond_7
    move v7, v8

    .line 2903
    goto :goto_3

    :cond_8
    move v7, v8

    .line 2906
    goto :goto_4

    :cond_9
    move v9, v8

    .line 2909
    goto :goto_5
.end method

.method private updateLocalZoomOrBrightness()V
    .locals 2

    .prologue
    .line 988
    const-string v0, "updateLocalZoomOrBrightness()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 991
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v0, :cond_1

    .line 992
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 993
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1001
    :cond_0
    :goto_0
    return-void

    .line 994
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v0, :cond_2

    .line 995
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 996
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    .line 997
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 999
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateVTInCallButtons()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 570
    const-string v5, "updateVTInCallButtons()..."

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 573
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    if-nez v5, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTIdle()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 575
    :cond_0
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 576
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 577
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 578
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 587
    :goto_0
    const-string v5, "updateVTInCallButtons() : update mVTMute \'s src !"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 589
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 591
    const-string v5, "updateVTInCallButtons() : update mVTSwapVideo \'s src !"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 593
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v6, :cond_3

    :goto_1
    invoke-virtual {v5, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 595
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    .line 598
    .local v1, inCallControlState:Lcom/android/phone/InCallControlState;
    const-string v3, "updateVTInCallButtons() : update mVTDialpad \'s src !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 600
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 601
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    iget-boolean v4, v1, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v3, v4}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 604
    const-string v3, "updateVTInCallButtons() : update mVTAudio \'s src !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 606
    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 608
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 609
    .local v2, state:Lcom/android/internal/telephony/PhoneConstants$State;
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 610
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v3, :cond_4

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v3, :cond_1

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v3, :cond_4

    .line 615
    :cond_1
    const-string v3, "updateVTInCallButtons() :phone state is OFFHOOK orcall state is ALERTING or ACTIVE,not dismiss !"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 625
    :goto_2
    return-void

    .line 580
    .end local v0           #fgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v1           #inCallControlState:Lcom/android/phone/InCallControlState;
    .end local v2           #state:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 581
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTCallActive()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 582
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v5, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 583
    iget-object v5, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v6

    iget-boolean v6, v6, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    :cond_3
    move v3, v4

    .line 593
    goto :goto_1

    .line 623
    .restart local v0       #fgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v1       #inCallControlState:Lcom/android/phone/InCallControlState;
    .restart local v2       #state:Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    goto :goto_2
.end method

.method private updateVTLocalPeerDisplay()V
    .locals 3

    .prologue
    .line 3211
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v0, :cond_0

    .line 3212
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    .line 3216
    :goto_0
    return-void

    .line 3214
    :cond_0
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/vt/VTManager;->setDisplay(Landroid/view/SurfaceHolder;Landroid/view/SurfaceHolder;)V

    goto :goto_0
.end method

.method private updateVideoBkgDrawable()V
    .locals 3

    .prologue
    const/high16 v1, -0x100

    .line 2489
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mToReplacePeer:Z

    if-eqz v0, :cond_2

    .line 2490
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2492
    const-string v0, "updatescreen(): replace the peer video"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2494
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_0

    .line 2495
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2511
    :goto_0
    return-void

    .line 2497
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v2}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2501
    :cond_1
    const-string v0, "mBkgBitmapHandler is null or mBkgBitmapHandler.getBitmap() is null"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2505
    :cond_2
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    if-eqz v0, :cond_3

    .line 2506
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 2508
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method


# virtual methods
.method public dismissVTDialogs()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1780
    const-string v0, "dismissVTDialogs() ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 1783
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1784
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingDialog:Landroid/app/AlertDialog;

    .line 1786
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 1787
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1788
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalEffectDialog:Landroid/app/AlertDialog;

    .line 1790
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 1791
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1792
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingLocalNightmodeDialog:Landroid/app/AlertDialog;

    .line 1794
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 1795
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1796
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallVideoSettingPeerQualityDialog:Landroid/app/AlertDialog;

    .line 1798
    :cond_3
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1799
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1800
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMTAsker:Landroid/app/AlertDialog;

    .line 1802
    :cond_4
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 1803
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1804
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1806
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1808
    :cond_5
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceReCallDialog:Landroid/app/AlertDialog;

    .line 1810
    :cond_6
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 1811
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1812
    iput-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTRecorderSelector:Landroid/app/AlertDialog;

    .line 1814
    :cond_7
    return-void
.end method

.method public getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;
    .locals 2

    .prologue
    .line 876
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getVTScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 878
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    return-object v0
.end method

.method public handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3
    .parameter "menuItem"

    .prologue
    const/4 v0, 0x1

    .line 2539
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- handleOnScreenMenuItemClick: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2540
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2541
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  title: \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2544
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v1, :cond_0

    .line 2546
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnScreenMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2586
    :goto_0
    return v0

    .line 2552
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 2586
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 2554
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwitchCameraClick()V

    goto :goto_0

    .line 2557
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTTakePeerPhotoClick()V

    goto :goto_0

    .line 2560
    :pswitch_3
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick()V

    goto :goto_0

    .line 2563
    :pswitch_4
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 2566
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVoiceVideoRecordClick(Landroid/view/MenuItem;)V

    goto :goto_0

    .line 2569
    :pswitch_6
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTInCallVideoSetting()V

    goto :goto_0

    .line 2572
    :pswitch_7
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2578
    :pswitch_8
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2581
    :pswitch_9
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 2552
    nop

    :pswitch_data_0
    .packed-switch 0x7f0a0130
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public initCommonVTState()V
    .locals 1

    .prologue
    .line 2640
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_0

    .line 2641
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->updateBitmapBySetting()V

    .line 2644
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v0, :cond_1

    .line 2645
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoBkgDrawable()V

    .line 2648
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2650
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2652
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 2654
    const-string v0, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2657
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_3

    .line 2658
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2660
    :cond_3
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2661
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 2662
    return-void
.end method

.method public initDialingSuccessVTState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 2605
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->initDialingSuccessVTState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2622
    :cond_0
    :goto_0
    return-void

    .line 2609
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 2610
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    .line 2612
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2614
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    invoke-static {v0, v2, v2, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 2619
    :goto_1
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMO:Z

    if-nez v0, :cond_0

    .line 2620
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick2()V

    goto :goto_0

    .line 2617
    :cond_3
    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->setVTDialWithSpeakerOff(Z)V

    goto :goto_1
.end method

.method public initDialingVTState()V
    .locals 2

    .prologue
    .line 2626
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->registerForVTPhoneStates()V

    .line 2627
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTCallBannerController;->clearCallBannerInfo()V

    .line 2628
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 2629
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2631
    const-string v0, "initDialingVTState(): closeDialer"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2633
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2636
    :cond_0
    return-void
.end method

.method public initVTInCallScreen()V
    .locals 8

    .prologue
    const v7, 0x7f0a0117

    const/16 v6, 0x8

    const/4 v5, 0x1

    const v4, 0x7f0a011c

    const/4 v3, 0x0

    .line 632
    const-string v0, "initVTInCallCanvas()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 635
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    .line 636
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPowerManager:Landroid/os/PowerManager;

    const v1, 0x2000000a

    const-string v2, "VTWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 639
    const v0, 0x7f0a010a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/mediatek/phone/vt/VTCallBanner;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    .line 640
    new-instance v0, Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCallBanner:Lcom/mediatek/phone/vt/VTCallBanner;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v0, v1, v2}, Lcom/mediatek/phone/vt/VTCallBannerController;-><init>(Lcom/mediatek/phone/vt/VTCallBanner;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    .line 642
    const v0, 0x7f0a010d

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    .line 643
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 644
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTInCallCanvas:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 646
    const v0, 0x7f0a010f

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    .line 647
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 648
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 649
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 651
    const v0, 0x7f0a0110

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    .line 652
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 653
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 654
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 656
    const v0, 0x7f0a0114

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    .line 657
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 658
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 659
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 661
    const v0, 0x7f0a0115

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    .line 662
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 663
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 664
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 666
    const v0, 0x7f0a010e

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    .line 667
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 668
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 670
    const v0, 0x7f0a0113

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    .line 671
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 672
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 674
    invoke-virtual {p0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    .line 675
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 676
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 678
    const v0, 0x7f0a0116

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    .line 679
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 680
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 682
    const v0, 0x7f0a0118

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    .line 683
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 684
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 686
    const v0, 0x7f0a0119

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    .line 687
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 688
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 690
    const v0, 0x7f0a011a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    .line 691
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 692
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 694
    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    .line 695
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v5}, Landroid/view/View;->setFocusable(Z)V

    .line 696
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 698
    const v0, 0x7f0a011b

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUpWrapper:Landroid/widget/LinearLayout;

    .line 700
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 701
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 702
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 703
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 704
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 705
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 707
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 709
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 715
    :goto_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 716
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 719
    const v0, 0x7f0a0111

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    .line 720
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusable(Z)V

    .line 721
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 722
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    const v1, 0x7f0200c4

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 723
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTVoiceRecordingIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 727
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 728
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 729
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 730
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 732
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 733
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 734
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 735
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 741
    :goto_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 742
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 743
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 747
    :goto_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0116

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 748
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 750
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 751
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const v1, 0x7f0a0119

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 752
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v7}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 753
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 755
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 756
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 757
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v7}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 758
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 760
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNextFocusLeftId(I)V

    .line 761
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNextFocusRightId(I)V

    .line 762
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    const v1, 0x7f0a0118

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusUpId(I)V

    .line 763
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v4}, Landroid/view/View;->setNextFocusDownId(I)V

    .line 766
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    .line 767
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    .line 769
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 770
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 772
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 773
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 775
    new-instance v0, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-direct {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;-><init>()V

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    .line 777
    invoke-static {}, Lcom/mediatek/phone/ext/ExtensionManager;->getInstance()Lcom/mediatek/phone/ext/ExtensionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/ext/ExtensionManager;->getVTInCallScreenExtension()Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    .line 778
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p0, p0, v1}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->initVTInCallScreen(Landroid/view/ViewGroup;Landroid/view/View$OnTouchListener;Landroid/app/Activity;)Z

    .line 779
    return-void

    .line 711
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 712
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 738
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTMute:Landroid/widget/CompoundButton;

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusDownId(I)V

    goto/16 :goto_1

    .line 745
    :cond_2
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    const v1, 0x7f0a011a

    invoke-virtual {v0, v1}, Landroid/view/View;->setNextFocusRightId(I)V

    goto/16 :goto_2
.end method

.method public internalAnswerVTCallPre()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1006
    const-string v3, "internalAnswerVTCallPre()..."

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1009
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v3}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->internalAnswerVTCallPre()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1132
    :goto_0
    return-void

    .line 1013
    :cond_0
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1014
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->closeVTManager()V

    .line 1016
    const-string v3, "internalAnswerVTCallPre: set VTInCallScreenFlags.getInstance().mVTShouldCloseVTManager = false"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1019
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iput-boolean v4, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTShouldCloseVTManager:Z

    .line 1020
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->resetPartial()V

    .line 1023
    :cond_1
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1024
    .local v1, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->isSupportDualTalk()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1025
    invoke-static {}, Lcom/mediatek/phone/DualTalkUtils;->getInstance()Lcom/mediatek/phone/DualTalkUtils;

    move-result-object v0

    .line 1026
    .local v0, dt:Lcom/mediatek/phone/DualTalkUtils;
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->hasMultipleRingingCall()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1027
    invoke-virtual {v0}, Lcom/mediatek/phone/DualTalkUtils;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 1030
    .end local v0           #dt:Lcom/mediatek/phone/DualTalkUtils;
    :cond_2
    invoke-static {v7, v1}, Lcom/android/phone/PhoneUtils;->hangupAllCalls(ZLcom/android/internal/telephony/Call;)V

    .line 1032
    const-string v3, "hangup all calls except current ring call"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1036
    const-string v3, "VTIncallscreen, before incomingVTCall"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1038
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3, v7}, Lcom/mediatek/vt/VTManager;->incomingVTCall(I)V

    .line 1040
    const-string v3, "VTIncallscreen, after incomingVTCall"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1043
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v3

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v3

    if-nez v3, :cond_8

    .line 1045
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v3, v7, v7, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZZ)V

    .line 1051
    :goto_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 1052
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iput-boolean v7, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTIsMT:Z

    .line 1054
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->getSimInfoByCall(Lcom/android/internal/telephony/Call;)Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;

    move-result-object v2

    .line 1055
    .local v2, simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    if-eqz v2, :cond_9

    .line 1056
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    iput v4, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSlotId:I

    .line 1063
    iget v3, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-static {v3}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTFile(I)V

    .line 1064
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v3

    iget v4, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4}, Lcom/mediatek/settings/VTSettingUtils;->updateVTSettingState(I)V

    .line 1065
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v4

    iget-boolean v4, v4, Lcom/mediatek/settings/VTSettingUtils;->mPeerBigger:Z

    iput-boolean v4, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    .line 1067
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v3, :cond_3

    .line 1068
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->forceUpdateBitmapBySetting()V

    .line 1069
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-nez v3, :cond_3

    .line 1071
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVideoBkgDrawable()V

    .line 1074
    :cond_3
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v3}, Lcom/mediatek/phone/vt/VTCallBannerController;->clearCallBannerInfo()V

    .line 1076
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1078
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTInControlRes()Z

    move-result v3

    if-nez v3, :cond_4

    .line 1079
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.phone.extra.VT_CALL_START"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 1080
    invoke-direct {p0, v7}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTInControlRes(Z)V

    .line 1083
    :cond_4
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v3, :cond_5

    .line 1084
    iget-object v3, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v3}, Landroid/widget/PopupMenu;->dismiss()V

    .line 1086
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 1091
    sget-object v3, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_WAITING:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1094
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1096
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->registerForVTPhoneStates()V

    .line 1099
    const-string v3, "- set VTManager open ! "

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1101
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->getCallManager()Ljava/lang/Object;

    move-result-object v5

    iget v6, v2, Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;->mSimSlotId:I

    invoke-virtual {v3, v4, v5, v6}, Lcom/mediatek/vt/VTManager;->setVTOpen(Landroid/content/Context;Ljava/lang/Object;I)V

    .line 1104
    const-string v3, "- finish set VTManager open ! "

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1107
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v3

    iget-object v3, v3, Lcom/mediatek/settings/VTSettingUtils;->mShowLocalMT:Ljava/lang/String;

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 1108
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTHideMeClick2()V

    .line 1110
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1112
    const-string v3, "- Now DM locked, VTManager.getInstance().lockPeerVideo() start"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1114
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->lockPeerVideo()V

    .line 1116
    const-string v3, "- Now DM locked, VTManager.getInstance().lockPeerVideo() end"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1120
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iget-boolean v3, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v3, :cond_a

    .line 1123
    const-string v3, "- set VTManager ready ! "

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1125
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1127
    const-string v3, "- finish set VTManager ready ! "

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1048
    .end local v2           #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_8
    invoke-static {v7}, Lcom/mediatek/phone/vt/VTCallUtils;->setVTDialWithSpeakerOff(Z)V

    goto/16 :goto_1

    .line 1058
    .restart local v2       #simInfo:Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;
    :cond_9
    const-string v3, "internalAnswerVTCallPre(), accept a incoming call, but can not get ring call sim info, sim info is null,  need to check !!!!!"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1130
    :cond_a
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v3

    iput-boolean v7, v3, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    goto/16 :goto_0
.end method

.method public notifyLocaleChange()V
    .locals 2

    .prologue
    .line 3224
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->setNeedClearUserData(Z)V

    .line 3225
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 1932
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 1934
    .local v0, id:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1937
    packed-switch v0, :pswitch_data_0

    .line 2091
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click from ID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2095
    :cond_0
    :goto_0
    return-void

    .line 1941
    :pswitch_1
    const-string v2, "onClick: VTHighVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1943
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-nez v2, :cond_0

    .line 1944
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1945
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1946
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1947
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1953
    :pswitch_2
    const-string v2, "onClick: VTLowVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1955
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTPeerBigger:Z

    if-eqz v2, :cond_0

    .line 1956
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 1957
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 1958
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 1959
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iput-boolean v4, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 1965
    :pswitch_3
    const-string v2, "onClick: VTMute"

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1967
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 1972
    :pswitch_4
    const-string v2, "onClick: VTSpeaker..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1974
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleAudioButtonClick()V

    goto :goto_0

    .line 1979
    :pswitch_5
    const-string v2, "onClick: VTDialpad..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1981
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->onOpenCloseDialpad()V

    goto :goto_0

    .line 1986
    :pswitch_6
    const-string v2, "onClick: VTSwapVideo..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1988
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->onVTSwapVideos()V

    goto :goto_0

    .line 1993
    :pswitch_7
    const-string v2, "onClick: VTHangUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1995
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInEndingCall:Z

    .line 1996
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1997
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    goto/16 :goto_0

    .line 2002
    :pswitch_8
    const-string v2, "onClick: VTLowUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2004
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_1

    .line 2005
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 2006
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2007
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2008
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_2

    .line 2009
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 2010
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2011
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2012
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2013
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 2014
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2015
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2021
    :pswitch_9
    const-string v2, "onClick: VTHighUp..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2023
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_3

    .line 2024
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incZoom()Z

    .line 2025
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2026
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2027
    :cond_3
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_4

    .line 2028
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incBrightness()Z

    .line 2029
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2030
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2031
    :cond_4
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2032
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->incContrast()Z

    .line 2033
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2034
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2040
    :pswitch_a
    const-string v2, "onClick: VTLowDown..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2042
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_5

    .line 2043
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 2044
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2045
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2046
    :cond_5
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_6

    .line 2047
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 2048
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2049
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2050
    :cond_6
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2051
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 2052
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2053
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2059
    :pswitch_b
    const-string v2, "onClick: VTHighDown..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2061
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    if-eqz v2, :cond_7

    .line 2062
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decZoom()Z

    .line 2063
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2064
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecZoom()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2065
    :cond_7
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    if-eqz v2, :cond_8

    .line 2066
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decBrightness()Z

    .line 2067
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2068
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecBrightness()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2069
    :cond_8
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v2

    iget-boolean v2, v2, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    if-eqz v2, :cond_0

    .line 2070
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/mediatek/vt/VTManager;->decContrast()Z

    .line 2071
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighUp:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canIncContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 2072
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighDown:Landroid/widget/ImageButton;

    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/mediatek/vt/VTManager;->canDecContrast()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0

    .line 2078
    :pswitch_c
    const-string v2, "onClick: VTOverflowMenu..."

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2080
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v2, :cond_9

    .line 2081
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v2}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2083
    :cond_9
    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-direct {p0, v2}, Lcom/mediatek/phone/vt/VTInCallScreen;->constructPopupMenu(Landroid/view/View;)Landroid/widget/PopupMenu;

    move-result-object v1

    .line 2084
    .local v1, popup:Landroid/widget/PopupMenu;
    if-eqz v1, :cond_0

    .line 2085
    invoke-virtual {v1}, Landroid/widget/PopupMenu;->show()V

    goto/16 :goto_0

    .line 1937
    :pswitch_data_0
    .packed-switch 0x7f0a010e
        :pswitch_1
        :pswitch_9
        :pswitch_b
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_8
        :pswitch_a
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_0
        :pswitch_7
    .end packed-switch
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 226
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->unregisterForVTPhoneStates()V

    .line 227
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_1

    .line 233
    :cond_0
    :goto_0
    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0
.end method

.method public onDisconnectVT(Lcom/android/internal/telephony/Connection;IZ)Z
    .locals 10
    .parameter "connection"
    .parameter "slotId"
    .parameter "isForeground"

    .prologue
    const v9, 0x7f080018

    const/4 v8, -0x1

    const v7, 0x7f080051

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 2107
    if-nez p1, :cond_1

    .line 2243
    :cond_0
    :goto_0
    return v3

    .line 2110
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 2112
    .local v0, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onDisconnectVT(), cause = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " isForeground = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " slotId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2115
    if-eqz p3, :cond_12

    .line 2117
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->UNOBTAINABLE_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER_FORMAT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_2

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INVALID_NUMBER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_3

    .line 2120
    :cond_2
    const v5, 0x7f08016d

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2121
    goto :goto_0

    .line 2122
    :cond_3
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CM_MM_RR_CONNECTION_RELEASE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_4

    .line 2123
    const v5, 0x7f080050

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2124
    goto :goto_0

    .line 2128
    :cond_4
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ROUTE_TO_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_5

    .line 2129
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2130
    goto :goto_0

    .line 2131
    :cond_5
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_6

    .line 2132
    const v5, 0x7f080052

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2133
    goto :goto_0

    .line 2134
    :cond_6
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_USER_RESPONDING:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_7

    .line 2135
    const v5, 0x7f080053

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2136
    goto :goto_0

    .line 2137
    :cond_7
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->USER_ALERTING_NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_8

    .line 2138
    const v5, 0x7f080053

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2139
    goto/16 :goto_0

    .line 2140
    :cond_8
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_9

    .line 2141
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2142
    goto/16 :goto_0

    .line 2143
    :cond_9
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_a

    .line 2144
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2145
    goto/16 :goto_0

    .line 2148
    :cond_a
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_b

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_b

    .line 2150
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2151
    goto/16 :goto_0

    .line 2152
    :cond_b
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_c

    .line 2153
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2154
    goto/16 :goto_0

    .line 2155
    :cond_c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SWITCHING_CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_d

    .line 2156
    const v5, 0x7f080054

    invoke-direct {p0, v5, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2157
    goto/16 :goto_0

    .line 2158
    :cond_d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->SERVICE_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_e

    .line 2159
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2160
    goto/16 :goto_0

    .line 2161
    :cond_e
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_f

    .line 2162
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2163
    goto/16 :goto_0

    .line 2164
    :cond_f
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FACILITY_NOT_IMPLEMENT:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_10

    .line 2165
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2166
    goto/16 :goto_0

    .line 2167
    :cond_10
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESTRICTED_BEARER_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_11

    .line 2168
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2169
    goto/16 :goto_0

    .line 2170
    :cond_11
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OPTION_NOT_AVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_12

    .line 2171
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2172
    goto/16 :goto_0

    .line 2176
    :cond_12
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v5

    iget-boolean v5, v5, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    if-nez v5, :cond_13

    if-eqz p3, :cond_0

    :cond_13
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v5

    if-nez v5, :cond_0

    .line 2177
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    .line 2179
    .local v2, number:Ljava/lang/String;
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMPATIBLE_DESTINATION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_14

    .line 2181
    const-string v3, "VT call dropback INCOMPATIBLE_DESTINATION"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2183
    const v3, 0x7f080016

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2184
    goto/16 :goto_0

    .line 2185
    :cond_14
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->RESOURCE_UNAVAILABLE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_15

    .line 2187
    const-string v3, "VT call dropback RESOURCE_UNAVAILABLE"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2189
    const v3, 0x7f080017

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2190
    goto/16 :goto_0

    .line 2191
    :cond_15
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AUTHORIZED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_16

    .line 2193
    const-string v3, "VT call dropback BEARER_NOT_AUTHORIZED"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2195
    const v3, 0x7f08001a

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2196
    goto/16 :goto_0

    .line 2197
    :cond_16
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->BEARER_NOT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_17

    .line 2199
    const-string v3, "VT call dropback BEARER_NOT_AVAIL"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2201
    invoke-virtual {p0, v9, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2202
    goto/16 :goto_0

    .line 2203
    :cond_17
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v5, :cond_18

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_1d

    .line 2206
    :cond_18
    const-string v5, "VT call dropback NORMAL or ERROR_UNSPECIFIED"

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2209
    invoke-static {}, Lcom/mediatek/phone/gemini/GeminiUtils;->isGeminiSupport()Z

    move-result v5

    if-eqz v5, :cond_1b

    .line 2210
    invoke-static {p2}, Lcom/mediatek/phone/gemini/GeminiUtils;->isValidSlot(I)Z

    move-result v5

    if-eqz v5, :cond_1a

    .line 2211
    sget-object v5, Lcom/mediatek/phone/GeminiConstants;->PROPERTY_CS_NETWORK_TYPES:[Ljava/lang/String;

    aget-object v5, v5, p2

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 2222
    .local v1, nCSNetType:I
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VT call dropback nCSNetType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2224
    if-eq v4, v1, :cond_19

    const/4 v5, 0x2

    if-ne v5, v1, :cond_1c

    .line 2225
    :cond_19
    const v3, 0x7f080019

    invoke-virtual {p0, v3, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2226
    goto/16 :goto_0

    .line 2214
    .end local v1           #nCSNetType:I
    :cond_1a
    const/4 v1, 0x1

    .restart local v1       #nCSNetType:I
    goto :goto_1

    .line 2217
    .end local v1           #nCSNetType:I
    :cond_1b
    const-string v5, "gsm.cs.network.type"

    invoke-static {v5, v8}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .restart local v1       #nCSNetType:I
    goto :goto_1

    .line 2230
    :cond_1c
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_0

    .line 2231
    invoke-direct {p0, v7, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showGenericErrorDialog(IZ)V

    move v3, v4

    .line 2232
    goto/16 :goto_0

    .line 2235
    .end local v1           #nCSNetType:I
    :cond_1d
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_CIRCUIT_AVAIL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v5, :cond_0

    .line 2237
    const-string v3, "VT call dropback NO_CIRCUIT_AVAIL"

    invoke-direct {p0, v3}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2239
    invoke-virtual {p0, v9, v2, p2}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialog(ILjava/lang/String;I)V

    move v3, v4

    .line 2240
    goto/16 :goto_0
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 2
    .parameter "menu"

    .prologue
    .line 2748
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- onDismiss: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2750
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    .line 2751
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3230
    const-string v0, "onKeyDown"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 3232
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3233
    const/4 v0, 0x1

    .line 3235
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "arg0"

    .prologue
    .line 2533
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 2591
    invoke-virtual {p0, p1}, Lcom/mediatek/phone/vt/VTInCallScreen;->handleOnScreenMenuItemClick(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .parameter "menu"

    .prologue
    .line 2596
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_OPEN:Lcom/android/phone/Constants$VTScreenMode;

    if-ne v0, v1, :cond_0

    .line 2597
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 2599
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onReceiveVTManagerStartCounter()V
    .locals 5

    .prologue
    .line 3082
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onReceiveVTManagerStartCounter(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3105
    :cond_0
    :goto_0
    return-void

    .line 3085
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-wide v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    .line 3086
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3087
    .local v0, call:Lcom/android/internal/telephony/Call;
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3088
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3090
    :cond_2
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->triggerTimerStartCount(Lcom/android/internal/telephony/Call;)V

    .line 3092
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3093
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3094
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mStarttime:J

    .line 3096
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-object v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTConnectionStarttime:Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags$VTConnectionStarttime;->mConnection:Lcom/android/internal/telephony/Connection;

    .line 3098
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    .line 3099
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    if-eqz v1, :cond_0

    .line 3100
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v2, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 2248
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    .line 2250
    .local v0, state:Lcom/android/internal/telephony/PhoneConstants$State;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2253
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 2260
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    if-eqz v1, :cond_1

    .line 2261
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTPopupMenu:Landroid/widget/PopupMenu;

    invoke-virtual {v1}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2263
    :cond_1
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissAudioModePopup()V

    .line 2264
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 783
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    if-eqz v0, :cond_0

    .line 784
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mExtension:Lcom/mediatek/phone/ext/VTInCallScreenExtension;

    invoke-virtual {v0, p1, p2}, Lcom/mediatek/phone/ext/VTInCallScreenExtension;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 801
    :goto_0
    return v2

    .line 788
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 791
    :pswitch_0
    const-string v0, "MotionEvent.ACTION_DOWN"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 793
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 794
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 795
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 796
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    goto :goto_0

    .line 788
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 2764
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 2766
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 2768
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showAudioModePopup()V

    .line 2770
    :cond_0
    return-void
.end method

.method registerForVTPhoneStates()V
    .locals 0

    .prologue
    .line 2389
    return-void
.end method

.method public resetVTFlags()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1305
    const-string v0, "resetVTFlags()..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1308
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->reset()V

    .line 1309
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVTDialogs()V

    .line 1311
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 1312
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1313
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1317
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 1318
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1319
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHighVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1323
    :cond_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    if-eqz v0, :cond_2

    .line 1324
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mBkgBitmapHandler:Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;

    invoke-virtual {v0}, Lcom/mediatek/phone/vt/VTBackgroundBitmapHandler;->recycle()V

    .line 1326
    :cond_2
    return-void
.end method

.method setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter "dialer"

    .prologue
    .line 2370
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 2371
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 2366
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 2367
    return-void
.end method

.method public setVTScreenMode(Lcom/android/phone/Constants$VTScreenMode;)V
    .locals 2
    .parameter "mode"

    .prologue
    .line 846
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVTScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 849
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-eq v0, p1, :cond_0

    .line 851
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->openVTInCallCanvas()V

    .line 853
    const-string v0, "setVTScreenMode : mVTWakeLock.acquire() "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 855
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 856
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 860
    :cond_0
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-ne v0, p1, :cond_1

    .line 862
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->closeVTInCallCanvas()V

    .line 864
    const-string v0, "setVTScreenMode : mVTWakeLock.release() "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 866
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 867
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 870
    :cond_1
    iput-object p1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTScreenMode:Lcom/android/phone/Constants$VTScreenMode;

    .line 871
    return-void
.end method

.method public setVTVisible(Z)V
    .locals 2
    .parameter "bIsVisible"

    .prologue
    .line 1908
    if-eqz p1, :cond_1

    .line 1909
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_0

    .line 1912
    const-string v0, "VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1914
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1916
    const-string v0, "VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1928
    :cond_0
    :goto_0
    return-void

    .line 1921
    :cond_1
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1923
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1925
    const-string v0, "VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setupMenuItems(Landroid/view/Menu;)V
    .locals 12
    .parameter "menu"

    .prologue
    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 2436
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 2486
    :goto_0
    return-void

    .line 2440
    :cond_0
    const v8, 0x7f0a0138

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 2441
    .local v4, switchCameraMenu:Landroid/view/MenuItem;
    const v8, 0x7f0a0139

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v5

    .line 2442
    .local v5, takePeerPhotoMenu:Landroid/view/MenuItem;
    const v8, 0x7f0a013b

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    .line 2443
    .local v2, hideLocalVideoMenu:Landroid/view/MenuItem;
    const v8, 0x7f0a013a

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    .line 2444
    .local v3, swapVideosMenu:Landroid/view/MenuItem;
    const v8, 0x7f0a013c

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v7

    .line 2446
    .local v7, voiceRecordMenu:Landroid/view/MenuItem;
    const v8, 0x7f0a013d

    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 2448
    .local v6, videoSettingMenu:Landroid/view/MenuItem;
    invoke-interface {v4, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2449
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/vt/VTManager;->getCameraSensorCount()I

    move-result v1

    .line 2451
    .local v1, cameraSensorCount:I
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setupMenuItems() : VTManager.getInstance().getCameraSensorCount() == "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2454
    const/4 v8, 0x2

    if-ne v8, v1, :cond_2

    move v8, v9

    :goto_1
    invoke-interface {v4, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2455
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_3

    move v0, v9

    .line 2458
    .local v0, bIsSwitchCameraEnable:Z
    :goto_2
    invoke-interface {v4, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2460
    invoke-interface {v5, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2461
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->isDialerOpened()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    if-eqz v8, :cond_4

    move v8, v9

    :goto_3
    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2464
    invoke-interface {v2, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2465
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-nez v8, :cond_5

    .line 2466
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f080043

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 2471
    :goto_4
    iget-object v8, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v8}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/ViewConfiguration;->hasPermanentMenuKey()Z

    move-result v8

    if-nez v8, :cond_6

    move v8, v9

    :goto_5
    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2472
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHasReceiveFirstFrame:Z

    invoke-interface {v3, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2474
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2475
    invoke-interface {v7, v10}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2476
    const v8, 0x7f080070

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2477
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->okToRecordVoice()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2478
    invoke-interface {v7, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 2479
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v8

    invoke-virtual {v8}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->isVTRecording()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 2480
    const v8, 0x7f080071

    invoke-interface {v7, v8}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 2484
    :cond_1
    invoke-interface {v6, v9}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 2485
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v8

    iget-boolean v8, v8, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTVideoConnected:Z

    invoke-interface {v6, v8}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_0

    .end local v0           #bIsSwitchCameraEnable:Z
    :cond_2
    move v8, v10

    .line 2454
    goto/16 :goto_1

    :cond_3
    move v0, v10

    .line 2455
    goto/16 :goto_2

    .restart local v0       #bIsSwitchCameraEnable:Z
    :cond_4
    move v8, v10

    .line 2461
    goto :goto_3

    .line 2468
    :cond_5
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v11, 0x7f080044

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2, v8}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    goto :goto_4

    :cond_6
    move v8, v10

    .line 2471
    goto :goto_5
.end method

.method public showReCallDialog(ILjava/lang/String;I)V
    .locals 3
    .parameter "resid"
    .parameter "number"
    .parameter "slot"

    .prologue
    .line 2287
    const-string v0, "showReCallDialog... "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2290
    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/settings/VTSettingUtils;->mAutoDropBack:Z

    if-eqz v0, :cond_0

    .line 2291
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08004c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->showToast(Ljava/lang/String;)V

    .line 2292
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 2293
    invoke-direct {p0, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen;->makeVoiceReCall(Ljava/lang/String;I)V

    .line 2297
    :goto_0
    return-void

    .line 2295
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/phone/vt/VTInCallScreen;->showReCallDialogEx(ILjava/lang/String;I)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 2924
    const-string v0, "stopRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2926
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2928
    const-string v0, "stopVoiceRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2930
    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->stopVoiceRecord()V

    .line 2938
    :cond_0
    :goto_0
    return-void

    .line 2931
    :cond_1
    const/4 v0, 0x1

    invoke-static {}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getInstance()Lcom/mediatek/phone/recording/PhoneRecorderHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/mediatek/phone/recording/PhoneRecorderHandler;->getPhoneRecorderState()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 2934
    const-string v0, "stopVideoRecord"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 2936
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->stopVideoRecord()V

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3
    .parameter "holder"
    .parameter "format"
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v2, 0x1

    .line 1332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceChanged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1335
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1337
    const-string v0, "surfaceChanged : HighVideo , set mVTSurfaceChangedH = true"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1339
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1342
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 1344
    const-string v0, "surfaceChanged : LowVideo , set mVTSurfaceChangedL = true"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1346
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1349
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-eqz v0, :cond_4

    .line 1351
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTLocalPeerDisplay()V

    .line 1354
    const-string v0, "surfaceChanged : VTManager.getInstance().setVTVisible(true) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1356
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1358
    const-string v0, "surfaceChanged : VTManager.getInstance().setVTVisible(true) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1360
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1361
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1364
    :cond_2
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    if-eqz v0, :cond_3

    .line 1366
    const-string v0, "- set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1368
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/vt/VTManager;->setVTReady()V

    .line 1370
    const-string v0, "- finish set VTManager ready ! "

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1372
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSettingReady:Z

    .line 1374
    :cond_3
    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V

    .line 1376
    :cond_4
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2
    .parameter "holder"

    .prologue
    .line 1381
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceCreated : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1383
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3
    .parameter "holder"

    .prologue
    const/4 v2, 0x0

    .line 1388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "surfaceDestroyed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1391
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mHighVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_0

    .line 1393
    const-string v0, "surfaceDestroyed : HighVideo, set mVTSurfaceChangedH = false"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mLowVideoHolder:Landroid/view/SurfaceHolder;

    if-ne p1, v0, :cond_1

    .line 1401
    const-string v0, "surfaceDestroyed : LowVideo, set mVTSurfaceChangedL = false"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1404
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    .line 1407
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedH:Z

    if-nez v0, :cond_2

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTSurfaceChangedL:Z

    if-nez v0, :cond_2

    .line 1410
    const-string v0, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) start ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1413
    invoke-static {}, Lcom/mediatek/vt/VTManager;->getInstance()Lcom/mediatek/vt/VTManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/mediatek/vt/VTManager;->setVTVisible(Z)V

    .line 1415
    const-string v0, "surfaceDestroyed : VTManager.getInstance().setVTVisible(false) end ..."

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 1418
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1419
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1422
    :cond_2
    return-void
.end method

.method unregisterForVTPhoneStates()V
    .locals 0

    .prologue
    .line 2415
    return-void
.end method

.method public updateElapsedTime(J)V
    .locals 4
    .parameter "elapsedTime"

    .prologue
    .line 2419
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2420
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;->VT_TIMING_NONE:Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/phone/vt/VTCallUtils;->checkVTTimingMode(Ljava/lang/String;)Lcom/mediatek/phone/vt/VTCallUtils$VTTimingMode;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 2424
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateElapsedTimeWidget(J)V

    .line 2428
    :goto_0
    return-void

    .line 2426
    :cond_0
    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    invoke-virtual {v1, p1, p2}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateElapsedTimeWidget(J)V

    goto :goto_0
.end method

.method public updateVTScreen(Lcom/android/phone/Constants$VTScreenMode;)V
    .locals 4
    .parameter "mode"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 507
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 510
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    if-ne p1, v0, :cond_0

    .line 566
    :goto_0
    return-void

    .line 514
    :cond_0
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v0

    if-nez v0, :cond_4

    .line 516
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    .line 523
    :goto_1
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateCallTime()V

    .line 525
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTLowVideo:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 526
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTHangUp:Landroid/widget/ImageButton;

    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTInCallScreenFlags.getInstance().mVTHideMeNow - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 531
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateVTScreen : VTSettingUtils.getInstance().mEnableBackCamera - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/settings/VTSettingUtils;->getInstance()Lcom/mediatek/settings/VTSettingUtils;

    move-result-object v1

    iget-boolean v1, v1, Lcom/mediatek/settings/VTSettingUtils;->mEnableBackCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    .line 535
    invoke-static {}, Lcom/mediatek/phone/vt/VTCallUtils;->isVTActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 536
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 537
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 538
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 539
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 540
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->dismissVideoSettingDialogs()V

    .line 541
    sget-object v0, Lcom/android/phone/Constants$VTScreenMode;->VT_SCREEN_CLOSE:Lcom/android/phone/Constants$VTScreenMode;

    invoke-virtual {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->getVTScreenMode()Lcom/android/phone/Constants$VTScreenMode;

    move-result-object v1

    if-eq v0, v1, :cond_1

    .line 542
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Landroid/app/Activity;->closeOptionsMenu()V

    .line 546
    :cond_1
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iget-boolean v0, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTHideMeNow:Z

    if-eqz v0, :cond_2

    .line 547
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalZoomSetting:Z

    .line 548
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalBrightnessSetting:Z

    .line 549
    invoke-static {}, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->getInstance()Lcom/mediatek/phone/vt/VTInCallScreenFlags;

    move-result-object v0

    iput-boolean v2, v0, Lcom/mediatek/phone/vt/VTInCallScreenFlags;->mVTInLocalContrastSetting:Z

    .line 550
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 553
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->updateVTInCallButtons()V

    .line 555
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isDMLocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 556
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTDialpad:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 557
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTAudio:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 558
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTOverflowMenu:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 559
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTSwapVideo:Landroid/widget/CompoundButton;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 560
    invoke-direct {p0}, Lcom/mediatek/phone/vt/VTInCallScreen;->hideLocalZoomOrBrightness()V

    .line 564
    :cond_3
    const-string v0, "updateVTScreen end"

    invoke-direct {p0, v0}, Lcom/mediatek/phone/vt/VTInCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 517
    :cond_4
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_5

    .line 518
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    iget-object v1, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1

    .line 520
    :cond_5
    iget-object v0, p0, Lcom/mediatek/phone/vt/VTInCallScreen;->mVTCallBannerController:Lcom/mediatek/phone/vt/VTCallBannerController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/phone/vt/VTCallBannerController;->updateState(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_1
.end method

.method public updateVideoCallRecordState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 1894
    return-void
.end method

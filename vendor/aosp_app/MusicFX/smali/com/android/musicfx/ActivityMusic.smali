.class public Lcom/android/musicfx/ActivityMusic;
.super Landroid/app/Activity;
.source "ActivityMusic.java"

# interfaces
.implements Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;


# static fields
.field public static final ATTACH_AUX_AUDIO_EFFECT:Ljava/lang/String; = "com.android.music.attachauxaudioeffect"

.field private static final AUX_AUDIO_EFFECT_ID:Ljava/lang/String; = "auxaudioeffectid"

.field public static final DETACH_AUX_AUDIO_EFFECT:Ljava/lang/String; = "com.android.music.detachauxaudioeffect"

.field private static final EQUALIZER_MAX_BANDS:I = 0x20

.field private static final EQViewElementIds:[[I = null

.field private static final PRESETREVERBPRESETSTRINGS:[Ljava/lang/String; = null

.field private static final PRESET_REVERB_NONE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MusicFXActivityMusic"


# instance fields
.field private mAudioSession:I

.field private mBassBoostSupported:Z

.field private mCallingPackageName:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mEQPreset:I

.field private mEQPresetNames:[Ljava/lang/String;

.field private mEQPresetPrevious:I

.field private mEQPresetUserBandLevelsPrev:[I

.field private mEQPresetUserPos:I

.field private mEqualizerMinBandLevel:I

.field private final mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

.field private mEqualizerSupported:Z

.field private mFormatBuilder:Ljava/lang/StringBuilder;

.field private mFormatter:Ljava/util/Formatter;

.field private mIsHeadsetOn:Z

.field private mNumberEqualizerBands:I

.field private mPRPreset:I

.field private mPRPresetPrevious:I

.field private mPresetReverbSupported:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mToast:Landroid/widget/Toast;

.field private mToggleSwitch:Landroid/widget/CompoundButton;

.field private mVirtualizerIsHeadphoneOnly:Z

.field private mVirtualizerSupported:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 115
    const/16 v0, 0x20

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_1

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-array v2, v3, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-array v2, v3, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-array v2, v3, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    .line 153
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "None"

    aput-object v1, v0, v4

    const-string v1, "SmallRoom"

    aput-object v1, v0, v5

    const-string v1, "MediumRoom"

    aput-object v1, v0, v3

    const-string v1, "LargeRoom"

    aput-object v1, v0, v6

    const-string v1, "MediumHall"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "LargeHall"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Plate"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/musicfx/ActivityMusic;->PRESETREVERBPRESETSTRINGS:[Ljava/lang/String;

    return-void

    .line 115
    :array_0
    .array-data 0x4
        0x5t 0x0t 0x9t 0x7ft
        0x4t 0x0t 0x9t 0x7ft
    .end array-data

    :array_1
    .array-data 0x4
        0x7t 0x0t 0x9t 0x7ft
        0x6t 0x0t 0x9t 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x9t 0x0t 0x9t 0x7ft
        0x8t 0x0t 0x9t 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0xbt 0x0t 0x9t 0x7ft
        0xat 0x0t 0x9t 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0xdt 0x0t 0x9t 0x7ft
        0xct 0x0t 0x9t 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0xft 0x0t 0x9t 0x7ft
        0xet 0x0t 0x9t 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x11t 0x0t 0x9t 0x7ft
        0x10t 0x0t 0x9t 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x13t 0x0t 0x9t 0x7ft
        0x12t 0x0t 0x9t 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x15t 0x0t 0x9t 0x7ft
        0x14t 0x0t 0x9t 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0x17t 0x0t 0x9t 0x7ft
        0x16t 0x0t 0x9t 0x7ft
    .end array-data

    :array_a
    .array-data 0x4
        0x19t 0x0t 0x9t 0x7ft
        0x18t 0x0t 0x9t 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0x1bt 0x0t 0x9t 0x7ft
        0x1at 0x0t 0x9t 0x7ft
    .end array-data

    :array_c
    .array-data 0x4
        0x1dt 0x0t 0x9t 0x7ft
        0x1ct 0x0t 0x9t 0x7ft
    .end array-data

    :array_d
    .array-data 0x4
        0x1ft 0x0t 0x9t 0x7ft
        0x1et 0x0t 0x9t 0x7ft
    .end array-data

    :array_e
    .array-data 0x4
        0x21t 0x0t 0x9t 0x7ft
        0x20t 0x0t 0x9t 0x7ft
    .end array-data

    :array_f
    .array-data 0x4
        0x23t 0x0t 0x9t 0x7ft
        0x22t 0x0t 0x9t 0x7ft
    .end array-data

    :array_10
    .array-data 0x4
        0x25t 0x0t 0x9t 0x7ft
        0x24t 0x0t 0x9t 0x7ft
    .end array-data

    :array_11
    .array-data 0x4
        0x27t 0x0t 0x9t 0x7ft
        0x26t 0x0t 0x9t 0x7ft
    .end array-data

    :array_12
    .array-data 0x4
        0x29t 0x0t 0x9t 0x7ft
        0x28t 0x0t 0x9t 0x7ft
    .end array-data

    :array_13
    .array-data 0x4
        0x2bt 0x0t 0x9t 0x7ft
        0x2at 0x0t 0x9t 0x7ft
    .end array-data

    :array_14
    .array-data 0x4
        0x2dt 0x0t 0x9t 0x7ft
        0x2ct 0x0t 0x9t 0x7ft
    .end array-data

    :array_15
    .array-data 0x4
        0x2ft 0x0t 0x9t 0x7ft
        0x2et 0x0t 0x9t 0x7ft
    .end array-data

    :array_16
    .array-data 0x4
        0x31t 0x0t 0x9t 0x7ft
        0x30t 0x0t 0x9t 0x7ft
    .end array-data

    :array_17
    .array-data 0x4
        0x33t 0x0t 0x9t 0x7ft
        0x32t 0x0t 0x9t 0x7ft
    .end array-data

    :array_18
    .array-data 0x4
        0x35t 0x0t 0x9t 0x7ft
        0x34t 0x0t 0x9t 0x7ft
    .end array-data

    :array_19
    .array-data 0x4
        0x37t 0x0t 0x9t 0x7ft
        0x36t 0x0t 0x9t 0x7ft
    .end array-data

    :array_1a
    .array-data 0x4
        0x39t 0x0t 0x9t 0x7ft
        0x38t 0x0t 0x9t 0x7ft
    .end array-data

    :array_1b
    .array-data 0x4
        0x3bt 0x0t 0x9t 0x7ft
        0x3at 0x0t 0x9t 0x7ft
    .end array-data

    :array_1c
    .array-data 0x4
        0x3dt 0x0t 0x9t 0x7ft
        0x3ct 0x0t 0x9t 0x7ft
    .end array-data

    :array_1d
    .array-data 0x4
        0x3ft 0x0t 0x9t 0x7ft
        0x3et 0x0t 0x9t 0x7ft
    .end array-data

    :array_1e
    .array-data 0x4
        0x41t 0x0t 0x9t 0x7ft
        0x40t 0x0t 0x9t 0x7ft
    .end array-data

    :array_1f
    .array-data 0x4
        0x43t 0x0t 0x9t 0x7ft
        0x42t 0x0t 0x9t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 94
    const/16 v0, 0x20

    new-array v0, v0, [Lcom/android/musicfx/seekbar/SeekBar;

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    .line 97
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    .line 110
    new-instance v0, Ljava/util/Formatter;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatter:Ljava/util/Formatter;

    .line 170
    const-string v0, "empty"

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    .line 175
    const/4 v0, -0x4

    iput v0, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    .line 178
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mToast:Landroid/widget/Toast;

    .line 181
    new-instance v0, Lcom/android/musicfx/ActivityMusic$1;

    invoke-direct {v0, p0}, Lcom/android/musicfx/ActivityMusic$1;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    iput-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/musicfx/ActivityMusic;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/musicfx/ActivityMusic;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/musicfx/ActivityMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->updateUIHeadset()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/musicfx/ActivityMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I

    return v0
.end method

.method static synthetic access$1002(Lcom/android/musicfx/ActivityMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/musicfx/ActivityMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/musicfx/ActivityMusic;->equalizerSetPreset(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/musicfx/ActivityMusic;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/musicfx/ActivityMusic;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/musicfx/ActivityMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/musicfx/ActivityMusic;Landroid/view/ViewGroup;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/musicfx/ActivityMusic;->setEnabledAllChildren(Landroid/view/ViewGroup;Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/musicfx/ActivityMusic;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/musicfx/ActivityMusic;->sendMessageToAttachDetachEffect(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/musicfx/ActivityMusic;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->showHeadsetMsg()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/musicfx/ActivityMusic;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/musicfx/ActivityMusic;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    iput p1, p0, Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/musicfx/ActivityMusic;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/musicfx/ActivityMusic;->presetReverbSetPreset(I)V

    return-void
.end method

.method private equalizerBandUpdate(II)V
    .locals 6
    .parameter "band"
    .parameter "level"

    .prologue
    .line 823
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    move v4, p2

    move v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;II)V

    .line 825
    return-void
.end method

.method private equalizerBandsInit(Landroid/view/View;)V
    .locals 14
    .parameter "eqcontainer"

    .prologue
    .line 689
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_bands:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v8

    iput v8, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    .line 691
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_user_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v8

    iput-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserBandLevelsPrev:[I

    .line 694
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_center_freq:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v4

    .line 696
    .local v4, centerFreqs:[I
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v10, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v11, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_level_range:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v8, v9, v10, v11}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v1

    .line 698
    .local v1, bandLevelRange:[I
    const/4 v8, 0x0

    aget v8, v1, v8

    iput v8, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    .line 699
    const/4 v8, 0x1

    aget v5, v1, v8

    .line 701
    .local v5, mEqualizerMaxBandLevel:I
    const/4 v0, 0x0

    .local v0, band:I
    :goto_0
    iget v8, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v8, :cond_1

    .line 703
    aget v8, v4, v0

    div-int/lit16 v2, v8, 0x3e8

    .line 704
    .local v2, centerFreq:I
    int-to-float v3, v2

    .line 705
    .local v3, centerFreqHz:F
    const-string v7, ""

    .line 706
    .local v7, unitPrefix:Ljava/lang/String;
    const/high16 v8, 0x447a

    cmpl-float v8, v3, v8

    if-ltz v8, :cond_0

    .line 707
    const/high16 v8, 0x447a

    div-float/2addr v3, v8

    .line 708
    const-string v7, "k"

    .line 710
    :cond_0
    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "%.0f "

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v11, v12

    invoke-direct {p0, v10, v11}, Lcom/android/musicfx/ActivityMusic;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "Hz"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    iget-object v9, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v10, 0x1

    aget v8, v8, v10

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/musicfx/seekbar/SeekBar;

    aput-object v8, v9, v0

    .line 714
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    aget-object v8, v8, v0

    iget v9, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    sub-int v9, v5, v9

    invoke-virtual {v8, v9}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setMax(I)V

    .line 715
    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    aget-object v8, v8, v0

    invoke-virtual {v8, p0}, Lcom/android/musicfx/seekbar/SeekBar;->setOnSeekBarChangeListener(Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;)V

    .line 701
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 719
    .end local v2           #centerFreq:I
    .end local v3           #centerFreqHz:F
    .end local v7           #unitPrefix:Ljava/lang/String;
    :cond_1
    iget v0, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    :goto_1
    const/16 v8, 0x20

    if-ge v0, v8, :cond_2

    .line 721
    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 723
    sget-object v8, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v8, v8, v0

    const/4 v9, 0x1

    aget v8, v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 719
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 727
    :cond_2
    const v8, 0x7f090001

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 728
    .local v6, tv:Landroid/widget/TextView;
    const-string v8, "+15 dB"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    const v8, 0x7f090002

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tv:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 730
    .restart local v6       #tv:Landroid/widget/TextView;
    const-string v8, "0 dB"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 731
    const v8, 0x7f090003

    invoke-virtual {p0, v8}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .end local v6           #tv:Landroid/widget/TextView;
    check-cast v6, Landroid/widget/TextView;

    .line 732
    .restart local v6       #tv:Landroid/widget/TextView;
    const-string v8, "-15 dB"

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 733
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 734
    return-void
.end method

.method private equalizerSetPreset(I)V
    .locals 4
    .parameter "preset"

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v3, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 836
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 837
    return-void
.end method

.method private equalizerSpinnerInit(Landroid/widget/Spinner;)V
    .locals 4
    .parameter "spinner"

    .prologue
    const/high16 v3, 0x7f03

    .line 572
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f04

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 573
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    invoke-direct {v0, p0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 575
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v1, 0x1090009

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 576
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 584
    :goto_0
    new-instance v1, Lcom/android/musicfx/ActivityMusic$9;

    invoke-direct {v1, p0}, Lcom/android/musicfx/ActivityMusic$9;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual {p1, v1}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 598
    iget v1, p0, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    invoke-virtual {p1, v1}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 599
    return-void

    .line 578
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 580
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 581
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method

.method private equalizerUpdateDisplay()V
    .locals 8

    .prologue
    .line 805
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v7, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v4, v5, v6, v7}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v1

    .line 807
    .local v1, bandLevels:[I
    const/4 v0, 0x0

    .local v0, band:S
    :goto_0
    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v4, :cond_0

    .line 808
    aget v2, v1, v0

    .line 809
    .local v2, level:I
    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    sub-int v3, v2, v4

    .line 810
    .local v3, progress:I
    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSeekBar:[Lcom/android/musicfx/seekbar/SeekBar;

    aget-object v4, v4, v0

    invoke-virtual {v4, v3}, Lcom/android/musicfx/seekbar/ProgressBar;->setProgress(I)V

    .line 807
    add-int/lit8 v4, v0, 0x1

    int-to-short v0, v4

    goto :goto_0

    .line 812
    .end local v2           #level:I
    .end local v3           #progress:I
    :cond_0
    return-void
.end method

.method private varargs format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .parameter "format"
    .parameter "args"

    .prologue
    .line 737
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 738
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatter:Ljava/util/Formatter;

    invoke-virtual {v0, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    .line 739
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mFormatBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getStringForEq(I)V
    .locals 6
    .parameter "numPresets"

    .prologue
    .line 898
    const/4 v1, 0x0

    .line 899
    .local v1, presetName:Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:S
    :goto_0
    if-ge v0, p1, :cond_a

    .line 900
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_preset_name:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/musicfx/ControlPanelEffect;->getParameterString(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)Ljava/lang/String;

    move-result-object v1

    .line 902
    const-string v2, "Normal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 903
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060001

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 899
    :goto_1
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_0

    .line 904
    :cond_0
    const-string v2, "Classical"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 905
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060002

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 906
    :cond_1
    const-string v2, "Dance"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 907
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060003

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 908
    :cond_2
    const-string v2, "Flat"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 909
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060004

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 910
    :cond_3
    const-string v2, "Folk"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 911
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060005

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 912
    :cond_4
    const-string v2, "Heavy Metal"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 913
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060006

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 914
    :cond_5
    const-string v2, "Hip Hop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 915
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060007

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto :goto_1

    .line 916
    :cond_6
    const-string v2, "Jazz"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 917
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060008

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_1

    .line 918
    :cond_7
    const-string v2, "Pop"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 919
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f060009

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_1

    .line 920
    :cond_8
    const-string v2, "Rock"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 921
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    const v3, 0x7f06000a

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    goto/16 :goto_1

    .line 925
    :cond_9
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    aput-object v1, v2, v0

    goto/16 :goto_1

    .line 928
    :cond_a
    return-void
.end method

.method private presetReverbSetPreset(I)V
    .locals 6
    .parameter "preset"

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v1, v2, v3, v4, p1}, Lcom/android/musicfx/ControlPanelEffect;->setParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;I)V

    .line 849
    if-nez p1, :cond_0

    .line 852
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.detachauxaudioeffect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 853
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "auxaudioeffectid"

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v2}, Lcom/android/musicfx/ControlPanelEffect;->getAuxiliaryEffectId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 854
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 855
    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/musicfx/ControlPanelEffect;->setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V

    .line 857
    const-string v1, "MusicFXActivityMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presetReverbSetPreset ReverbEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v3}, Lcom/android/musicfx/ControlPanelEffect;->getReverbEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    :goto_0
    const-string v1, "MusicFXActivityMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presetReverb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ,enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v3}, Lcom/android/musicfx/ControlPanelEffect;->getReverbEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    return-void

    .line 862
    .end local v0           #intent:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.attachauxaudioeffect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 863
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "auxaudioeffectid"

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v2}, Lcom/android/musicfx/ControlPanelEffect;->getAuxiliaryEffectId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 864
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 867
    iget v1, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v1}, Lcom/android/musicfx/ControlPanelEffect;->getReverbEnabled(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 868
    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v4, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    const/4 v5, 0x1

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/musicfx/ControlPanelEffect;->setParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;Z)V

    .line 871
    :cond_1
    const-string v1, "MusicFXActivityMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presetReverbSetPreset ReverbEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v3}, Lcom/android/musicfx/ControlPanelEffect;->getReverbEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private reverbSpinnerInit(Landroid/widget/Spinner;)V
    .locals 5
    .parameter "spinner"

    .prologue
    const/high16 v4, 0x7f03

    .line 535
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f07

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 537
    .local v1, reverbPresetList:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f04

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 538
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v2, 0x7f030003

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 543
    .local v0, adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v2, 0x1090009

    invoke-virtual {v0, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 544
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 552
    :goto_0
    new-instance v2, Lcom/android/musicfx/ActivityMusic$8;

    invoke-direct {v2, p0}, Lcom/android/musicfx/ActivityMusic$8;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual {p1, v2}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 566
    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mPRPreset:I

    invoke-virtual {p1, v2}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 567
    return-void

    .line 546
    .end local v0           #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-direct {v0, p0, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 548
    .restart local v0       #adapter:Landroid/widget/ArrayAdapter;,"Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    invoke-virtual {v0, v4}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 549
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    goto :goto_0
.end method

.method private sendMessageToAttachDetachEffect(Z)V
    .locals 4
    .parameter "isChecked"

    .prologue
    .line 936
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I

    if-nez v1, :cond_1

    .line 937
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.detachauxaudioeffect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 938
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "auxaudioeffectid"

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v2}, Lcom/android/musicfx/ControlPanelEffect;->getAuxiliaryEffectId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 940
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 941
    const-string v1, "MusicFXActivityMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presetReverbSetPreset ReverbEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v3}, Lcom/android/musicfx/ControlPanelEffect;->getReverbEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    :goto_0
    return-void

    .line 944
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.music.attachauxaudioeffect"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 945
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "auxaudioeffectid"

    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v2}, Lcom/android/musicfx/ControlPanelEffect;->getAuxiliaryEffectId(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 947
    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->sendBroadcast(Landroid/content/Intent;)V

    .line 948
    const-string v1, "MusicFXActivityMusic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "presetReverbSetPreset ReverbEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    invoke-static {v3}, Lcom/android/musicfx/ControlPanelEffect;->getReverbEnabled(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private setEnabledAllChildren(Landroid/view/ViewGroup;Z)V
    .locals 5
    .parameter "viewGroup"
    .parameter "enabled"

    .prologue
    .line 610
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 611
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 612
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 613
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/widget/LinearLayout;

    if-nez v4, :cond_0

    instance-of v4, v3, Landroid/widget/RelativeLayout;

    if-eqz v4, :cond_1

    :cond_0
    move-object v2, v3

    .line 614
    check-cast v2, Landroid/view/ViewGroup;

    .line 615
    .local v2, vg:Landroid/view/ViewGroup;
    invoke-direct {p0, v2, p2}, Lcom/android/musicfx/ActivityMusic;->setEnabledAllChildren(Landroid/view/ViewGroup;Z)V

    .line 617
    .end local v2           #vg:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v3, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 611
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 619
    .end local v3           #view:Landroid/view/View;
    :cond_2
    return-void
.end method

.method private showHeadsetMsg()V
    .locals 6

    .prologue
    .line 882
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mToast:Landroid/widget/Toast;

    if-nez v2, :cond_0

    .line 883
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 884
    .local v0, context:Landroid/content/Context;
    const/4 v1, 0x0

    .line 885
    .local v1, duration:I
    const v2, 0x7f06000e

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    iput-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mToast:Landroid/widget/Toast;

    .line 886
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mToast:Landroid/widget/Toast;

    const/16 v3, 0x11

    iget-object v4, p0, Lcom/android/musicfx/ActivityMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->getXOffset()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/android/musicfx/ActivityMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->getYOffset()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v2, v3, v4, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 888
    .end local v0           #context:Landroid/content/Context;
    .end local v1           #duration:I
    :cond_0
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mToast:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 890
    return-void
.end method

.method private updateUI()V
    .locals 11

    .prologue
    const/16 v10, 0x8

    .line 625
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v9, Lcom/android/musicfx/ControlPanelEffect$Key;->global_enabled:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v6, v7, v8, v9}, Lcom/android/musicfx/ControlPanelEffect;->getParameterBoolean(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 627
    .local v2, isEnabled:Z
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v6, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 628
    const v6, 0x7f090045

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-direct {p0, v6, v2}, Lcom/android/musicfx/ActivityMusic;->setEnabledAllChildren(Landroid/view/ViewGroup;Z)V

    .line 629
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->updateUIHeadset()V

    .line 631
    iget-boolean v6, p0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    if-eqz v6, :cond_0

    .line 632
    const v6, 0x7f09004c

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/musicfx/seekbar/SeekBar;

    .line 633
    .local v0, bar:Lcom/android/musicfx/seekbar/SeekBar;
    const v6, 0x7f09004d

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Switch;

    .line 634
    .local v5, sw:Landroid/widget/Switch;
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v9, Lcom/android/musicfx/ControlPanelEffect$Key;->virt_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v6, v7, v8, v9}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v4

    .line 637
    .local v4, strength:I
    invoke-virtual {v0, v4}, Lcom/android/musicfx/seekbar/ProgressBar;->setProgress(I)V

    .line 642
    const/4 v1, 0x1

    .line 643
    .local v1, hasStrength:Z
    if-eqz v1, :cond_4

    .line 644
    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    .line 650
    .end local v0           #bar:Lcom/android/musicfx/seekbar/SeekBar;
    .end local v1           #hasStrength:Z
    .end local v4           #strength:I
    .end local v5           #sw:Landroid/widget/Switch;
    :cond_0
    :goto_0
    iget-boolean v6, p0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    if-eqz v6, :cond_1

    .line 651
    const v6, 0x7f090049

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/musicfx/seekbar/SeekBar;

    iget-object v7, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v9, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v10, Lcom/android/musicfx/ControlPanelEffect$Key;->bb_strength:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v7, v8, v9, v10}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/musicfx/seekbar/ProgressBar;->setProgress(I)V

    .line 655
    :cond_1
    iget-boolean v6, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    if-eqz v6, :cond_2

    .line 656
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 658
    :cond_2
    iget-boolean v6, p0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    if-eqz v6, :cond_3

    .line 659
    iget-object v6, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v8, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v9, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v6, v7, v8, v9}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v3

    .line 662
    .local v3, reverb:I
    const v6, 0x7f090050

    invoke-virtual {p0, v6}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    invoke-virtual {v6, v3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 664
    .end local v3           #reverb:I
    :cond_3
    return-void

    .line 646
    .restart local v0       #bar:Lcom/android/musicfx/seekbar/SeekBar;
    .restart local v1       #hasStrength:Z
    .restart local v4       #strength:I
    .restart local v5       #sw:Landroid/widget/Switch;
    :cond_4
    invoke-virtual {v0, v10}, Lcom/android/musicfx/seekbar/ProgressBar;->setVisibility(I)V

    .line 647
    invoke-virtual {v5}, Landroid/view/View;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_5

    if-eqz v4, :cond_5

    const/4 v6, 0x1

    :goto_1
    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_0

    :cond_5
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private updateUIHeadset()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 672
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 673
    const v0, 0x7f09004b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerIsHeadphoneOnly:Z

    if-nez v1, :cond_4

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 675
    const v0, 0x7f09004c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/musicfx/seekbar/SeekBar;

    iget-boolean v1, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerIsHeadphoneOnly:Z

    if-nez v1, :cond_5

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 677
    const v0, 0x7f09004a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-boolean v0, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerIsHeadphoneOnly:Z

    if-nez v0, :cond_6

    :cond_2
    move v0, v3

    :goto_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 678
    const v0, 0x7f090048

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 679
    const v0, 0x7f090049

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/musicfx/seekbar/SeekBar;

    iget-boolean v1, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 680
    const v0, 0x7f090047

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    if-nez v1, :cond_7

    :goto_3
    invoke-virtual {v0, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 682
    :cond_3
    return-void

    :cond_4
    move v1, v2

    .line 673
    goto :goto_0

    :cond_5
    move v1, v2

    .line 675
    goto :goto_1

    :cond_6
    move v0, v2

    .line 677
    goto :goto_2

    :cond_7
    move v3, v2

    .line 680
    goto :goto_3
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 22
    .parameter "savedInstanceState"

    .prologue
    .line 225
    invoke-super/range {p0 .. p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 228
    move-object/from16 v0, p0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    .line 232
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 233
    .local v10, intent:Landroid/content/Intent;
    const-string v17, "android.media.extra.AUDIO_SESSION"

    const/16 v18, -0x4

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    .line 235
    const-string v17, "MusicFXActivityMusic"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "audio session: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getCallingPackage()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    .line 240
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v17, v0

    if-nez v17, :cond_0

    .line 241
    const-string v17, "MusicFXActivityMusic"

    const-string v18, "Package name is null"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 243
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->finish()V

    .line 483
    :goto_0
    return-void

    .line 246
    :cond_0
    const/16 v17, -0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    .line 248
    const-string v17, "MusicFXActivityMusic"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " ("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ")"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v19, v0

    invoke-static/range {v17 .. v19}, Lcom/android/musicfx/ControlPanelEffect;->initEffectsPreferences(Landroid/content/Context;Ljava/lang/String;I)V

    .line 253
    invoke-static {}, Landroid/media/audiofx/AudioEffect;->queryEffects()[Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v7

    .line 256
    .local v7, effects:[Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v17, "MusicFXActivityMusic"

    const-string v18, "Available effects:"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    move-object v5, v7

    .local v5, arr$:[Landroid/media/audiofx/AudioEffect$Descriptor;
    array-length v11, v5

    .local v11, len$:I
    const/4 v8, 0x0

    .local v8, i$:I
    :goto_1
    if-ge v8, v11, :cond_5

    aget-object v6, v5, v8

    .line 258
    .local v6, effect:Landroid/media/audiofx/AudioEffect$Descriptor;
    const-string v17, "MusicFXActivityMusic"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", type: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v17, v0

    sget-object v18, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_VIRTUALIZER:Ljava/util/UUID;

    invoke-virtual/range {v17 .. v18}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_2

    .line 261
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    .line 262
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    move-object/from16 v17, v0

    const-string v18, "1d4033c0-8557-11df-9f2d-0002a5d5c51b"

    invoke-static/range {v18 .. v18}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 263
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mVirtualizerIsHeadphoneOnly:Z

    .line 257
    :cond_1
    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 265
    :cond_2
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v17, v0

    sget-object v18, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_BASS_BOOST:Ljava/util/UUID;

    invoke-virtual/range {v17 .. v18}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 266
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    goto :goto_2

    .line 267
    :cond_3
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v17, v0

    sget-object v18, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_EQUALIZER:Ljava/util/UUID;

    invoke-virtual/range {v17 .. v18}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_4

    .line 268
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    goto :goto_2

    .line 269
    :cond_4
    iget-object v0, v6, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    move-object/from16 v17, v0

    sget-object v18, Landroid/media/audiofx/AudioEffect;->EFFECT_TYPE_PRESET_REVERB:Ljava/util/UUID;

    invoke-virtual/range {v17 .. v18}, Ljava/util/UUID;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_1

    .line 270
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    goto :goto_2

    .line 274
    .end local v6           #effect:Landroid/media/audiofx/AudioEffect$Descriptor;
    :cond_5
    const v17, 0x7f030002

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setContentView(I)V

    .line 275
    const v17, 0x7f090045

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    .line 279
    .local v16, viewGroup:Landroid/view/ViewGroup;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v19, v0

    sget-object v20, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_num_presets:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static/range {v17 .. v20}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v12

    .line 281
    .local v12, numPresets:I
    add-int/lit8 v17, v12, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    .line 284
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/musicfx/ActivityMusic;->getStringForEq(I)V

    .line 286
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    const v18, 0x7f060011

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    aput-object v18, v17, v12

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v17, v0

    add-int/lit8 v18, v12, 0x1

    const v19, 0x7f060012

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v17, v18

    .line 288
    add-int/lit8 v17, v12, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    .line 295
    const-string v17, "layout_inflater"

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 296
    .local v9, inflater:Landroid/view/LayoutInflater;
    const v17, 0x207000b

    const/16 v18, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v9, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Switch;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    move-object/from16 v17, v0

    new-instance v18, Lcom/android/musicfx/ActivityMusic$2;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    invoke-direct {v0, v1, v2}, Lcom/android/musicfx/ActivityMusic$2;-><init>(Lcom/android/musicfx/ActivityMusic;Landroid/view/ViewGroup;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 320
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    move/from16 v17, v0

    if-nez v17, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_c

    .line 324
    :cond_6
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 326
    const v17, 0x7f09004a

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/android/musicfx/ActivityMusic$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$3;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 338
    const v17, 0x7f09004c

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/musicfx/seekbar/SeekBar;

    .line 339
    .local v14, seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    const/16 v17, 0x3e8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setMax(I)V

    .line 342
    new-instance v17, Lcom/android/musicfx/ActivityMusic$4;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$4;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/SeekBar;->setOnSeekBarChangeListener(Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;)V

    .line 374
    const v17, 0x7f09004d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/Switch;

    .line 375
    .local v15, sw:Landroid/widget/Switch;
    new-instance v17, Lcom/android/musicfx/ActivityMusic$5;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$5;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 387
    .end local v14           #seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    .end local v15           #sw:Landroid/widget/Switch;
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 389
    const v17, 0x7f090047

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    new-instance v18, Lcom/android/musicfx/ActivityMusic$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$6;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 401
    const v17, 0x7f090049

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Lcom/android/musicfx/seekbar/SeekBar;

    .line 402
    .restart local v14       #seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    const/16 v17, 0x3e8

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/AbsSeekBar;->setMax(I)V

    .line 405
    new-instance v17, Lcom/android/musicfx/ActivityMusic$7;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic$7;-><init>(Lcom/android/musicfx/ActivityMusic;)V

    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/musicfx/seekbar/SeekBar;->setOnSeekBarChangeListener(Lcom/android/musicfx/seekbar/SeekBar$OnSeekBarChangeListener;)V

    .line 440
    .end local v14           #seekbar:Lcom/android/musicfx/seekbar/SeekBar;
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_a

    .line 441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v19, v0

    sget-object v20, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static/range {v17 .. v20}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    .line 443
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    move/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPresetNames:[Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v17

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    .line 444
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    .line 446
    :cond_9
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mEQPreset:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mEQPresetPrevious:I

    .line 447
    const v17, 0x7f090046

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic;->equalizerSpinnerInit(Landroid/widget/Spinner;)V

    .line 448
    const/high16 v17, 0x7f09

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic;->equalizerBandsInit(Landroid/view/View;)V

    .line 453
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    move/from16 v17, v0

    if-eqz v17, :cond_b

    .line 454
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    move/from16 v19, v0

    sget-object v20, Lcom/android/musicfx/ControlPanelEffect$Key;->pr_current_preset:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static/range {v17 .. v20}, Lcom/android/musicfx/ControlPanelEffect;->getParameterInt(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mPRPreset:I

    .line 456
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/musicfx/ActivityMusic;->mPRPreset:I

    move/from16 v17, v0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/musicfx/ActivityMusic;->mPRPresetPrevious:I

    .line 457
    const v17, 0x7f090050

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/Spinner;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lcom/android/musicfx/ActivityMusic;->reverbSpinnerInit(Landroid/widget/Spinner;)V

    .line 465
    :cond_b
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v4

    .line 466
    .local v4, ab:Landroid/app/ActionBar;
    invoke-virtual/range {p0 .. p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x7f050002

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    .line 468
    .local v13, padding:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    move/from16 v3, v20

    invoke-virtual {v0, v1, v2, v13, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/musicfx/ActivityMusic;->mToggleSwitch:Landroid/widget/CompoundButton;

    move-object/from16 v17, v0

    new-instance v18, Landroid/app/ActionBar$LayoutParams;

    const/16 v19, -0x2

    const/16 v20, -0x2

    const/16 v21, 0x15

    invoke-direct/range {v18 .. v21}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v4, v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 473
    const/16 v17, 0x1a

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    .line 476
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 477
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-virtual {v4, v0}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 479
    const v17, 0x7f090048

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    .line 480
    const v17, 0x7f09004b

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    .line 481
    const v17, 0x7f09004f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/TextView;->setSelected(Z)V

    goto/16 :goto_0

    .line 461
    .end local v4           #ab:Landroid/app/ActionBar;
    .end local v13           #padding:I
    :cond_c
    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 462
    const v17, 0x7f090044

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .parameter "item"

    .prologue
    .line 958
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 959
    invoke-virtual {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 960
    const/4 v0, 0x1

    .line 962
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 519
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 523
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 525
    iget-object v0, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/musicfx/ControlPanelEffect;->saveToSharePreference(Landroid/content/Context;Ljava/lang/String;)V

    .line 526
    return-void
.end method

.method public onProgressChanged(Lcom/android/musicfx/seekbar/SeekBar;IZ)V
    .locals 5
    .parameter "seekbar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 753
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 755
    .local v1, id:I
    const/4 v0, 0x0

    .local v0, band:S
    :goto_0
    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v3, :cond_0

    .line 756
    sget-object v3, Lcom/android/musicfx/ActivityMusic;->EQViewElementIds:[[I

    aget-object v3, v3, v0

    const/4 v4, 0x1

    aget v3, v3, v4

    if-ne v1, v3, :cond_1

    .line 757
    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerMinBandLevel:I

    add-int/2addr v3, p2

    int-to-short v2, v3

    .line 758
    .local v2, level:S
    if-eqz p3, :cond_0

    .line 759
    invoke-direct {p0, v0, v2}, Lcom/android/musicfx/ActivityMusic;->equalizerBandUpdate(II)V

    .line 764
    .end local v2           #level:S
    :cond_0
    return-void

    .line 755
    :cond_1
    add-int/lit8 v3, v0, 0x1

    int-to-short v0, v3

    goto :goto_0
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 492
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 493
    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mVirtualizerSupported:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mBassBoostSupported:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mEqualizerSupported:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mPresetReverbSupported:Z

    if-eqz v2, :cond_2

    .line 496
    :cond_0
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 497
    .local v1, intentFilter:Landroid/content/IntentFilter;
    const-string v2, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 498
    const-string v2, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 499
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 500
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v1}, Landroid/content/ContextWrapper;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 503
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 504
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    .line 505
    const-string v2, "MusicFXActivityMusic"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onResume: mIsHeadsetOn : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/musicfx/ActivityMusic;->mIsHeadsetOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 508
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->updateUI()V

    .line 510
    .end local v0           #audioManager:Landroid/media/AudioManager;
    .end local v1           #intentFilter:Landroid/content/IntentFilter;
    :cond_2
    return-void

    .line 504
    .restart local v0       #audioManager:Landroid/media/AudioManager;
    .restart local v1       #intentFilter:Landroid/content/IntentFilter;
    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V
    .locals 6
    .parameter "seekbar"

    .prologue
    .line 776
    iget-object v2, p0, Lcom/android/musicfx/ActivityMusic;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/musicfx/ActivityMusic;->mCallingPackageName:Ljava/lang/String;

    iget v4, p0, Lcom/android/musicfx/ActivityMusic;->mAudioSession:I

    sget-object v5, Lcom/android/musicfx/ControlPanelEffect$Key;->eq_band_level:Lcom/android/musicfx/ControlPanelEffect$Key;

    invoke-static {v2, v3, v4, v5}, Lcom/android/musicfx/ControlPanelEffect;->getParameterIntArray(Landroid/content/Context;Ljava/lang/String;ILcom/android/musicfx/ControlPanelEffect$Key;)[I

    move-result-object v1

    .line 779
    .local v1, bandLevels:[I
    const/4 v0, 0x0

    .local v0, band:S
    :goto_0
    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mNumberEqualizerBands:I

    if-ge v0, v2, :cond_0

    .line 780
    aget v2, v1, v0

    invoke-direct {p0, v0, v2}, Lcom/android/musicfx/ActivityMusic;->equalizerBandUpdate(II)V

    .line 779
    add-int/lit8 v2, v0, 0x1

    int-to-short v0, v2

    goto :goto_0

    .line 782
    :cond_0
    iget v2, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    invoke-direct {p0, v2}, Lcom/android/musicfx/ActivityMusic;->equalizerSetPreset(I)V

    .line 783
    const v2, 0x7f090046

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    iget v3, p0, Lcom/android/musicfx/ActivityMusic;->mEQPresetUserPos:I

    invoke-virtual {v2, v3}, Landroid/widget/AbsSpinner;->setSelection(I)V

    .line 784
    return-void
.end method

.method public onStopTrackingTouch(Lcom/android/musicfx/seekbar/SeekBar;)V
    .locals 0
    .parameter "seekbar"

    .prologue
    .line 797
    invoke-direct {p0}, Lcom/android/musicfx/ActivityMusic;->equalizerUpdateDisplay()V

    .line 798
    return-void
.end method

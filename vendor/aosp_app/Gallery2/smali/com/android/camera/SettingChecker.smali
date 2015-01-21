.class public Lcom/android/camera/SettingChecker;
.super Ljava/lang/Object;
.source "SettingChecker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SettingChecker$PictureSizeMappingFinder;,
        Lcom/android/camera/SettingChecker$FlashMappingFinder;
    }
.end annotation


# static fields
.field public static final CAMERA_BACK_ID:I = 0x0

.field public static final CAMERA_COUNT:I = 0x2

.field public static final CAMERA_FRONT_ID:I = 0x1

.field private static final CAPABILITIES:[Lcom/android/camera/Restriction; = null

.field private static final COLUM_SCENE_MODE_AUTO:I = 0xe

.field private static final COLUM_SCENE_MODE_BEACH:I = 0x6

.field private static final COLUM_SCENE_MODE_CANDLELIGHT:I = 0xd

.field private static final COLUM_SCENE_MODE_FIREWORKS:I = 0xa

.field private static final COLUM_SCENE_MODE_LANDSCAPE:I = 0x2

.field private static final COLUM_SCENE_MODE_NIGHT:I = 0x3

.field private static final COLUM_SCENE_MODE_NIGHT_PORTRAIT:I = 0x4

.field private static final COLUM_SCENE_MODE_NORMAL:I = 0x0

.field private static final COLUM_SCENE_MODE_PARTY:I = 0xc

.field private static final COLUM_SCENE_MODE_PORTRAIT:I = 0x1

.field private static final COLUM_SCENE_MODE_SNOW:I = 0x7

.field private static final COLUM_SCENE_MODE_SPORT:I = 0xb

.field private static final COLUM_SCENE_MODE_STEADYPHOTO:I = 0x9

.field private static final COLUM_SCENE_MODE_SUNSET:I = 0x8

.field private static final COLUM_SCENE_MODE_THEATRE:I = 0x5

.field private static final DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String; = null

.field private static final DEFAULT_VALUE_FOR_SETTING_ID:[I = null

.field private static final KEYS_FOR_SCENE:[Ljava/lang/String; = null

.field public static final KEYS_FOR_SETTING:[Ljava/lang/String; = null

.field public static final MAPPING_FINDER_FLASH:Lcom/android/camera/Restriction$MappingFinder; = null

.field public static final MAPPING_FINDER_PICTURE_SIZE:Lcom/android/camera/Restriction$MappingFinder; = null

.field private static final MATRIX_FOCUS_MODE_CONTINUOUS:[Ljava/lang/String; = null

.field private static final MATRIX_FOCUS_MODE_DEFAULT_ARRAY:[I = null

.field private static final MATRIX_MODE_STATE:[[I = null

.field private static final MATRIX_SCENE_STATE:[[I = null

.field private static final MATRIX_SETTING_VISIBLE:[[Z = null

.field private static final MATRIX_ZOOM_ENABLE:[Z = null

.field private static final RESET_SETTING_ITEMS:[I = null

.field private static final RESET_STATE_VALUE:[[Ljava/lang/String; = null

.field private static final RESTRICTIOINS:[Lcom/android/camera/Restriction; = null

.field public static final ROW_SETTING_ANTI_FLICKER:I = 0xe

.field public static final ROW_SETTING_ASD:I = 0x35

.field public static final ROW_SETTING_AUDIO_MODE:I = 0x11

.field public static final ROW_SETTING_BRIGHTNESS:I = 0x21

.field public static final ROW_SETTING_CAMERA_FACE_DETECT:I = 0x32

.field public static final ROW_SETTING_CAMERA_MODE:I = 0x28

.field public static final ROW_SETTING_CAPTURE_MODE:I = 0x29

.field public static final ROW_SETTING_COLOR_EFFECT:I = 0x6

.field public static final ROW_SETTING_CONTINUOUS:I = 0x9

.field public static final ROW_SETTING_CONTINUOUS_NUM:I = 0x2a

.field public static final ROW_SETTING_CONTRAST:I = 0x22

.field public static final ROW_SETTING_DUAL_CAMERA:I = 0x1

.field public static final ROW_SETTING_EXPOSURE:I = 0x2

.field public static final ROW_SETTING_FACEBEAUTY_PROPERTIES:I = 0x2e

.field public static final ROW_SETTING_FACEBEAUTY_SHARP:I = 0x31

.field public static final ROW_SETTING_FACEBEAUTY_SKIN_COLOR:I = 0x30

.field public static final ROW_SETTING_FACEBEAUTY_SMOOTH:I = 0x2f

.field public static final ROW_SETTING_FLASH:I = 0x0

.field public static final ROW_SETTING_GEO_TAG:I = 0xa

.field public static final ROW_SETTING_HDR:I = 0x33

.field public static final ROW_SETTING_HUE:I = 0x1f

.field public static final ROW_SETTING_IMAGE_PROPERTIES:I = 0x5

.field public static final ROW_SETTING_ISO:I = 0xc

.field public static final ROW_SETTING_JPEG_QUALITY:I = 0x2c

.field public static final ROW_SETTING_LIVE_EFFECT:I = 0x13

.field public static final ROW_SETTING_MICROPHONE:I = 0x10

.field public static final ROW_SETTING_MUTE_RECORDING_SOUND:I = 0x36

.field public static final ROW_SETTING_PICTURE_RATIO:I = 0x15

.field public static final ROW_SETTING_PICTURE_SIZE:I = 0xb

.field public static final ROW_SETTING_RECORDING_HINT:I = 0x2b

.field public static final ROW_SETTING_SATURATION:I = 0x20

.field public static final ROW_SETTING_SCENCE_MODE:I = 0x3

.field public static final ROW_SETTING_SELF_TIMER:I = 0x7

.field public static final ROW_SETTING_SHARPNESS:I = 0x1e

.field public static final ROW_SETTING_SMILE_SHOT:I = 0x34

.field public static final ROW_SETTING_STEREO_MODE:I = 0x2d

.field public static final ROW_SETTING_TIME_LAPSE:I = 0x12

.field public static final ROW_SETTING_VIDEO_QUALITY:I = 0x14

.field public static final ROW_SETTING_VIDEO_STABLE:I = 0xf

.field public static final ROW_SETTING_VOICE:I = 0x16

.field public static final ROW_SETTING_WHITE_BALANCE:I = 0x4

.field public static final ROW_SETTING_ZSD:I = 0x8

.field public static final SETTING_GROUP_ALL_IN_SCREEN:[I = null

.field public static final SETTING_GROUP_ALL_IN_SETTING:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_TAB:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_TAB_NO_PREVIEW:[I = null

.field public static final SETTING_GROUP_CAMERA_FOR_UI:[I = null

.field public static final SETTING_GROUP_COMMON_FOR_TAB:[I = null

.field public static final SETTING_GROUP_COMMON_FOR_TAB_PREVIEW:[I = null

.field public static final SETTING_GROUP_IMAGE_FOR_TAB:[I = null

.field public static final SETTING_GROUP_MAIN_COMMON_FOR_TAB:[I = null

.field public static final SETTING_GROUP_NOT_IN_PREFERENCE:[I = null

.field public static final SETTING_GROUP_SUB_COMMON:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_PARAMETERS:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_TAB:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_TAB_NO_PREVIEW:[I = null

.field public static final SETTING_GROUP_VIDEO_FOR_UI:[I = null

.field public static final SETTING_ROW_COUNT:I = 0x37

.field private static final STATE_D0:I = 0x64

.field private static final STATE_E0:I = 0xc8

.field private static final STATE_OFFSET:I = 0x64

.field private static final STATE_R0:I = 0x12c

.field private static final STATE_R1:I = 0x12d

.field private static final STATE_R2:I = 0x12e

.field private static final STATE_R3:I = 0x12f

.field private static final STATE_R4:I = 0x130

.field private static final STATE_R5:I = 0x131

.field private static final STATE_R6:I = 0x132

.field private static final STATE_R7:I = 0x133

.field private static final TAG:Ljava/lang/String; = "SettingChecker"

.field private static final THIRDPART_RESET_SETTING_ITEMS:[I = null

.field public static final UNKNOWN:I = -0x1


# instance fields
.field private isNeedResetFocus:Z

.field private mContext:Lcom/android/camera/Camera;

.field private mListPrefs:[Lcom/android/camera/ListPreference;

.field private final mOverrideSettingValues:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x2

    const/16 v8, 0xd

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 130
    const/16 v0, 0x12

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/SettingChecker;->RESET_SETTING_ITEMS:[I

    .line 152
    const/16 v0, 0xf

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/camera/SettingChecker;->THIRDPART_RESET_SETTING_ITEMS:[I

    .line 172
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB:[I

    .line 194
    new-array v0, v10, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_MAIN_COMMON_FOR_TAB:[I

    .line 200
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_SUB_COMMON:[I

    .line 207
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB:[I

    .line 222
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB:[I

    .line 232
    new-array v0, v10, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_COMMON_FOR_TAB_PREVIEW:[I

    .line 238
    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_TAB_NO_PREVIEW:[I

    .line 247
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_9

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_TAB_NO_PREVIEW:[I

    .line 256
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_IMAGE_FOR_TAB:[I

    .line 265
    const/16 v0, 0x17

    new-array v0, v0, [I

    fill-array-data v0, :array_b

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    .line 312
    const/16 v0, 0x13

    new-array v0, v0, [I

    fill-array-data v0, :array_c

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_PARAMETERS:[I

    .line 356
    const/16 v0, 0x1a

    new-array v0, v0, [I

    fill-array-data v0, :array_d

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_UI:[I

    .line 393
    const/16 v0, 0x11

    new-array v0, v0, [I

    fill-array-data v0, :array_e

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_UI:[I

    .line 420
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_f

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SCREEN:[I

    .line 456
    const/16 v0, 0x1d

    new-array v0, v0, [I

    fill-array-data v0, :array_10

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SETTING:[I

    .line 495
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_11

    sput-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    .line 506
    const/16 v0, 0x11

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "action"

    aput-object v1, v0, v7

    const-string v1, "portrait"

    aput-object v1, v0, v6

    const-string v1, "landscape"

    aput-object v1, v0, v9

    const-string v1, "night"

    aput-object v1, v0, v10

    const/4 v1, 0x4

    const-string v2, "night-portrait"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "theatre"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "beach"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "snow"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "sunset"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "steadyphoto"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "fireworks"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "sports"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "party"

    aput-object v2, v0, v1

    const-string v1, "candlelight"

    aput-object v1, v0, v8

    const/16 v1, 0xe

    const-string v2, "auto"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "normal"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "hdr"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SCENE:[Ljava/lang/String;

    .line 526
    new-array v0, v10, [Lcom/android/camera/Restriction;

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "fine"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "1000"

    aput-object v3, v2, v7

    const-string v3, "1500"

    aput-object v3, v2, v6

    const-string v3, "2000"

    aput-object v3, v2, v9

    const-string v3, "2500"

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "3000"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "5000"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "10000"

    aput-object v4, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v9, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "off"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v7

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "normal"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v6

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    const/16 v4, 0x11

    invoke-direct {v3, v4}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v7}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v6, [Ljava/lang/String;

    const-string v5, "normal"

    aput-object v5, v4, v7

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v9

    sput-object v0, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    .line 546
    new-instance v0, Lcom/android/camera/SettingChecker$PictureSizeMappingFinder;

    invoke-direct {v0}, Lcom/android/camera/SettingChecker$PictureSizeMappingFinder;-><init>()V

    sput-object v0, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_PICTURE_SIZE:Lcom/android/camera/Restriction$MappingFinder;

    .line 547
    new-instance v0, Lcom/android/camera/SettingChecker$FlashMappingFinder;

    invoke-direct {v0}, Lcom/android/camera/SettingChecker$FlashMappingFinder;-><init>()V

    sput-object v0, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_FLASH:Lcom/android/camera/Restriction$MappingFinder;

    .line 549
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/camera/Restriction;

    new-instance v1, Lcom/android/camera/Restriction;

    const/4 v2, 0x6

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v10}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v9, [Ljava/lang/String;

    const-string v5, "auto"

    aput-object v5, v4, v7

    const-string v5, "portrait"

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x9

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v6}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v10}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    sget-object v4, Lcom/android/camera/CameraSettings;->VIDEO_SUPPORT_SCENE_MODE:[Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v7}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    sget-object v4, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_FLASH:Lcom/android/camera/Restriction$MappingFinder;

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setMappingFinder(Lcom/android/camera/Restriction$MappingFinder;)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "auto"

    aput-object v5, v4, v7

    const-string v5, "on"

    aput-object v5, v4, v6

    const-string v5, "off"

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Lcom/android/camera/Restriction;

    const/16 v2, 0x2b

    invoke-direct {v1, v2}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v1, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v1

    new-array v2, v6, [Lcom/android/camera/Restriction;

    new-instance v3, Lcom/android/camera/Restriction;

    invoke-direct {v3, v7}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v3, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v3

    sget-object v4, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_FLASH:Lcom/android/camera/Restriction$MappingFinder;

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setMappingFinder(Lcom/android/camera/Restriction$MappingFinder;)Lcom/android/camera/Restriction;

    move-result-object v3

    new-array v4, v10, [Ljava/lang/String;

    const-string v5, "auto"

    aput-object v5, v4, v7

    const-string v5, "torch"

    aput-object v5, v4, v6

    const-string v5, "off"

    aput-object v5, v4, v9

    invoke-virtual {v3, v4}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v1

    aput-object v1, v0, v10

    const/4 v1, 0x4

    new-instance v2, Lcom/android/camera/Restriction;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v2, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1.3333"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Lcom/android/camera/Restriction;

    new-instance v4, Lcom/android/camera/Restriction;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_PICTURE_SIZE:Lcom/android/camera/Restriction$MappingFinder;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setMappingFinder(Lcom/android/camera/Restriction$MappingFinder;)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraSettings;->PICTURE_SIZE_4_3:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/android/camera/Restriction;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v2, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1.7778"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Lcom/android/camera/Restriction;

    new-instance v4, Lcom/android/camera/Restriction;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_PICTURE_SIZE:Lcom/android/camera/Restriction$MappingFinder;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setMappingFinder(Lcom/android/camera/Restriction$MappingFinder;)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraSettings;->PICTURE_SIZE_16_9:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/android/camera/Restriction;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v2, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1.6667"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Lcom/android/camera/Restriction;

    new-instance v4, Lcom/android/camera/Restriction;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_PICTURE_SIZE:Lcom/android/camera/Restriction$MappingFinder;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setMappingFinder(Lcom/android/camera/Restriction$MappingFinder;)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraSettings;->PICTURE_SIZE_5_3:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/android/camera/Restriction;

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v2, v7}, Lcom/android/camera/Restriction;->setType(I)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Ljava/lang/String;

    const-string v4, "1.5"

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v2

    new-array v3, v6, [Lcom/android/camera/Restriction;

    new-instance v4, Lcom/android/camera/Restriction;

    const/16 v5, 0xb

    invoke-direct {v4, v5}, Lcom/android/camera/Restriction;-><init>(I)V

    invoke-virtual {v4, v6}, Lcom/android/camera/Restriction;->setEnable(Z)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/SettingChecker;->MAPPING_FINDER_PICTURE_SIZE:Lcom/android/camera/Restriction$MappingFinder;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setMappingFinder(Lcom/android/camera/Restriction$MappingFinder;)Lcom/android/camera/Restriction;

    move-result-object v4

    sget-object v5, Lcom/android/camera/CameraSettings;->PICTURE_SIZE_3_2:[Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/android/camera/Restriction;->setValues([Ljava/lang/String;)Lcom/android/camera/Restriction;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Lcom/android/camera/Restriction;->setRestrictions([Lcom/android/camera/Restriction;)Lcom/android/camera/Restriction;

    move-result-object v2

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    .line 605
    const/16 v0, 0x37

    new-array v0, v0, [[I

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    .line 606
    const/16 v0, 0x37

    new-array v0, v0, [[I

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    .line 607
    const/16 v0, 0x37

    new-array v0, v0, [I

    sput-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    .line 608
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    .line 609
    new-array v0, v9, [[Z

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    .line 610
    const/16 v0, 0x37

    new-array v0, v0, [[Ljava/lang/String;

    sput-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    .line 611
    const/16 v0, 0x37

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    .line 612
    new-array v0, v8, [Z

    fill-array-data v0, :array_12

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_ZOOM_ENABLE:[Z

    .line 628
    new-array v0, v8, [I

    fill-array-data v0, :array_13

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_DEFAULT_ARRAY:[I

    .line 644
    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "continuous-picture"

    aput-object v1, v0, v7

    const-string v1, "continuous-picture"

    aput-object v1, v0, v6

    const-string v1, "continuous-picture"

    aput-object v1, v0, v9

    const-string v1, "continuous-picture"

    aput-object v1, v0, v10

    const/4 v1, 0x4

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "continuous-video"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "continuous-video"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "continuous-video"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "continuous-picture"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_CONTINUOUS:[Ljava/lang/String;

    .line 662
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v8, [I

    fill-array-data v1, :array_14

    aput-object v1, v0, v7

    .line 663
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v8, [I

    fill-array-data v1, :array_15

    aput-object v1, v0, v6

    .line 664
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v8, [I

    fill-array-data v1, :array_16

    aput-object v1, v0, v9

    .line 665
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    new-array v1, v8, [I

    fill-array-data v1, :array_17

    aput-object v1, v0, v10

    .line 666
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/4 v1, 0x4

    new-array v2, v8, [I

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    .line 668
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/4 v1, 0x6

    new-array v2, v8, [I

    fill-array-data v2, :array_19

    aput-object v2, v0, v1

    .line 669
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/4 v1, 0x7

    new-array v2, v8, [I

    fill-array-data v2, :array_1a

    aput-object v2, v0, v1

    .line 670
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x8

    new-array v2, v8, [I

    fill-array-data v2, :array_1b

    aput-object v2, v0, v1

    .line 671
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x9

    new-array v2, v8, [I

    fill-array-data v2, :array_1c

    aput-object v2, v0, v1

    .line 672
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xa

    new-array v2, v8, [I

    fill-array-data v2, :array_1d

    aput-object v2, v0, v1

    .line 673
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xb

    new-array v2, v8, [I

    fill-array-data v2, :array_1e

    aput-object v2, v0, v1

    .line 674
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xc

    new-array v2, v8, [I

    fill-array-data v2, :array_1f

    aput-object v2, v0, v1

    .line 676
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xe

    new-array v2, v8, [I

    fill-array-data v2, :array_20

    aput-object v2, v0, v1

    .line 677
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0xf

    new-array v2, v8, [I

    fill-array-data v2, :array_21

    aput-object v2, v0, v1

    .line 678
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x10

    new-array v2, v8, [I

    fill-array-data v2, :array_22

    aput-object v2, v0, v1

    .line 679
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x11

    new-array v2, v8, [I

    fill-array-data v2, :array_23

    aput-object v2, v0, v1

    .line 680
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x12

    new-array v2, v8, [I

    fill-array-data v2, :array_24

    aput-object v2, v0, v1

    .line 681
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x13

    new-array v2, v8, [I

    fill-array-data v2, :array_25

    aput-object v2, v0, v1

    .line 682
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x14

    new-array v2, v8, [I

    fill-array-data v2, :array_26

    aput-object v2, v0, v1

    .line 684
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x15

    new-array v2, v8, [I

    fill-array-data v2, :array_27

    aput-object v2, v0, v1

    .line 685
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x16

    new-array v2, v8, [I

    fill-array-data v2, :array_28

    aput-object v2, v0, v1

    .line 687
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x1e

    new-array v2, v8, [I

    fill-array-data v2, :array_29

    aput-object v2, v0, v1

    .line 688
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x1f

    new-array v2, v8, [I

    fill-array-data v2, :array_2a

    aput-object v2, v0, v1

    .line 689
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x20

    new-array v2, v8, [I

    fill-array-data v2, :array_2b

    aput-object v2, v0, v1

    .line 690
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x21

    new-array v2, v8, [I

    fill-array-data v2, :array_2c

    aput-object v2, v0, v1

    .line 691
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x22

    new-array v2, v8, [I

    fill-array-data v2, :array_2d

    aput-object v2, v0, v1

    .line 693
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x28

    new-array v2, v8, [I

    fill-array-data v2, :array_2e

    aput-object v2, v0, v1

    .line 694
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x29

    new-array v2, v8, [I

    fill-array-data v2, :array_2f

    aput-object v2, v0, v1

    .line 695
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x2a

    new-array v2, v8, [I

    fill-array-data v2, :array_30

    aput-object v2, v0, v1

    .line 696
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x2b

    new-array v2, v8, [I

    fill-array-data v2, :array_31

    aput-object v2, v0, v1

    .line 697
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x2c

    new-array v2, v8, [I

    fill-array-data v2, :array_32

    aput-object v2, v0, v1

    .line 700
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x2f

    new-array v2, v8, [I

    fill-array-data v2, :array_33

    aput-object v2, v0, v1

    .line 701
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x30

    new-array v2, v8, [I

    fill-array-data v2, :array_34

    aput-object v2, v0, v1

    .line 702
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x31

    new-array v2, v8, [I

    fill-array-data v2, :array_35

    aput-object v2, v0, v1

    .line 703
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x32

    new-array v2, v8, [I

    fill-array-data v2, :array_36

    aput-object v2, v0, v1

    .line 704
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x33

    new-array v2, v8, [I

    fill-array-data v2, :array_37

    aput-object v2, v0, v1

    .line 705
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x34

    new-array v2, v8, [I

    fill-array-data v2, :array_38

    aput-object v2, v0, v1

    .line 706
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x35

    new-array v2, v8, [I

    fill-array-data v2, :array_39

    aput-object v2, v0, v1

    .line 707
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v1, 0x36

    new-array v2, v8, [I

    fill-array-data v2, :array_3a

    aput-object v2, v0, v1

    .line 710
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_3b

    aput-object v1, v0, v9

    .line 711
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/4 v1, 0x4

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_3c

    aput-object v2, v0, v1

    .line 713
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0xc

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_3d

    aput-object v2, v0, v1

    .line 716
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x1e

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_3e

    aput-object v2, v0, v1

    .line 717
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x1f

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_3f

    aput-object v2, v0, v1

    .line 718
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x20

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_40

    aput-object v2, v0, v1

    .line 719
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x21

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_41

    aput-object v2, v0, v1

    .line 720
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x22

    const/16 v2, 0x11

    new-array v2, v2, [I

    fill-array-data v2, :array_42

    aput-object v2, v0, v1

    .line 721
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    const/16 v1, 0x11

    new-array v1, v1, [I

    fill-array-data v1, :array_43

    aput-object v1, v0, v7

    .line 723
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "off"

    aput-object v2, v1, v7

    aput-object v1, v0, v7

    .line 724
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    aput-object v1, v0, v6

    .line 725
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v7

    const-string v2, "1"

    aput-object v2, v1, v6

    aput-object v1, v0, v9

    .line 726
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "auto"

    aput-object v2, v1, v7

    const-string v2, "hdr"

    aput-object v2, v1, v6

    aput-object v1, v0, v10

    .line 730
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/4 v1, 0x4

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v2, v7

    const-string v3, "daylight"

    aput-object v3, v2, v6

    const-string v3, "incandescent"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    .line 736
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "none"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 737
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 738
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 739
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 740
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 741
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 742
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "auto"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 744
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-object v2, v0, v1

    .line 745
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0xf

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 746
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x10

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "on"

    aput-object v3, v2, v7

    const-string v3, "off"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 747
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x11

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "normal"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 748
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x12

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 749
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x13

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 750
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x14

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "9"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 752
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x1e

    new-array v2, v10, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v7

    const-string v3, "low"

    aput-object v3, v2, v6

    const-string v3, "high"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    .line 757
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x1f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 758
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x20

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v7

    const-string v3, "low"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 762
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x21

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 763
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x22

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "middle"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 764
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x2f

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 765
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x30

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 766
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x31

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 767
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x32

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    const-string v3, "on"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 769
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x2b

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 770
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x29

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "normal"

    aput-object v3, v2, v7

    const-string v3, "hdr"

    aput-object v3, v2, v6

    const-string v3, "face_beauty"

    aput-object v3, v2, v9

    const-string v3, "asd"

    aput-object v3, v2, v10

    const/4 v3, 0x4

    const-string v4, "smileshot"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "bestshot"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "evbracketshot"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "autorama"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    .line 780
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x2a

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "1"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 781
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x2c

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 785
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x28

    new-array v2, v9, [Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 789
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x16

    new-array v2, v6, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    aput-object v2, v0, v1

    .line 790
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x33

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    const-string v3, "on"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 791
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x34

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    const-string v3, "on"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 792
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x35

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "off"

    aput-object v3, v2, v7

    const-string v3, "on"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 793
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    const/16 v1, 0x36

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "0"

    aput-object v3, v2, v7

    const-string v3, "1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    .line 795
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_flashmode_key"

    aput-object v1, v0, v7

    .line 796
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_id_key"

    aput-object v1, v0, v6

    .line 797
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_exposure_key"

    aput-object v1, v0, v9

    .line 798
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const-string v1, "pref_camera_scenemode_key"

    aput-object v1, v0, v10

    .line 799
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "pref_camera_whitebalance_key"

    aput-object v2, v0, v1

    .line 800
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "pref_camera_image_properties_key"

    aput-object v2, v0, v1

    .line 801
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "pref_camera_coloreffect_key"

    aput-object v2, v0, v1

    .line 802
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "pref_camera_self_timer_key"

    aput-object v2, v0, v1

    .line 803
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "pref_camera_zsd_key"

    aput-object v2, v0, v1

    .line 804
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "pref_camera_shot_number"

    aput-object v2, v0, v1

    .line 805
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "pref_camera_recordlocation_key"

    aput-object v2, v0, v1

    .line 806
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "pref_camera_picturesize_key"

    aput-object v2, v0, v1

    .line 807
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "pref_camera_iso_key"

    aput-object v2, v0, v1

    .line 810
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "pref_camera_antibanding_key"

    aput-object v2, v0, v1

    .line 811
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0xf

    const-string v2, "pref_video_eis_key"

    aput-object v2, v0, v1

    .line 812
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x10

    const-string v2, "pref_camera_recordaudio_key"

    aput-object v2, v0, v1

    .line 813
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x11

    const-string v2, "pref_camera_video_hd_recording_key"

    aput-object v2, v0, v1

    .line 814
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x12

    const-string v2, "pref_video_time_lapse_frame_interval_key"

    aput-object v2, v0, v1

    .line 815
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x13

    const-string v2, "pref_video_effect_key"

    aput-object v2, v0, v1

    .line 816
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x14

    const-string v2, "pref_video_quality_key"

    aput-object v2, v0, v1

    .line 817
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x2d

    const-string v2, "pref_stereo3d_mode_key"

    aput-object v2, v0, v1

    .line 819
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x1e

    const-string v2, "pref_camera_edge_key"

    aput-object v2, v0, v1

    .line 820
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x1f

    const-string v2, "pref_camera_hue_key"

    aput-object v2, v0, v1

    .line 821
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x20

    const-string v2, "pref_camera_saturation_key"

    aput-object v2, v0, v1

    .line 822
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x21

    const-string v2, "pref_camera_brightness_key"

    aput-object v2, v0, v1

    .line 823
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x22

    const-string v2, "pref_camera_contrast_key"

    aput-object v2, v0, v1

    .line 825
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x15

    const-string v2, "pref_camera_picturesize_ratio_key"

    aput-object v2, v0, v1

    .line 826
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x16

    const-string v2, "pref_voice_key"

    aput-object v2, v0, v1

    .line 827
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x2e

    const-string v2, "pref_camera_facebeauty_properties_key"

    aput-object v2, v0, v1

    .line 828
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x2f

    const-string v2, "pref_facebeauty_smooth_key"

    aput-object v2, v0, v1

    .line 829
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x30

    const-string v2, "pref_facebeauty_skin_color_key"

    aput-object v2, v0, v1

    .line 830
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x31

    const-string v2, "pref_facebeauty_sharp_key"

    aput-object v2, v0, v1

    .line 831
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x32

    const-string v2, "pref_face_detect_key"

    aput-object v2, v0, v1

    .line 832
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x33

    const-string v2, "pref_hdr_key"

    aput-object v2, v0, v1

    .line 833
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x34

    const-string v2, "pref_smile_shot_key"

    aput-object v2, v0, v1

    .line 834
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v1, 0x35

    const-string v2, "pref_asd_key"

    aput-object v2, v0, v1

    .line 837
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    const/16 v1, 0x37

    new-array v1, v1, [Z

    aput-object v1, v0, v7

    .line 838
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v6, v0, v7

    .line 839
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v6, v0, v6

    .line 840
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v6, v0, v9

    .line 841
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    aput-boolean v6, v0, v10

    .line 842
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    .line 843
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 844
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    .line 845
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 846
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    .line 847
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x9

    aput-boolean v6, v0, v1

    .line 848
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    .line 849
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 850
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    .line 852
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 853
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    .line 854
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    .line 855
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    .line 856
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x12

    aput-boolean v6, v0, v1

    .line 857
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x13

    aput-boolean v6, v0, v1

    .line 858
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x14

    aput-boolean v6, v0, v1

    .line 859
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x2d

    aput-boolean v6, v0, v1

    .line 861
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x1e

    aput-boolean v6, v0, v1

    .line 862
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x1f

    aput-boolean v6, v0, v1

    .line 863
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x20

    aput-boolean v6, v0, v1

    .line 864
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x21

    aput-boolean v6, v0, v1

    .line 865
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x22

    aput-boolean v6, v0, v1

    .line 867
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x15

    aput-boolean v7, v0, v1

    .line 868
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x16

    aput-boolean v6, v0, v1

    .line 869
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x2e

    aput-boolean v6, v0, v1

    .line 870
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x2f

    aput-boolean v6, v0, v1

    .line 871
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x30

    aput-boolean v6, v0, v1

    .line 872
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x31

    aput-boolean v6, v0, v1

    .line 873
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x32

    aput-boolean v6, v0, v1

    .line 874
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x33

    aput-boolean v6, v0, v1

    .line 875
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x34

    aput-boolean v6, v0, v1

    .line 876
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v7

    const/16 v1, 0x35

    aput-boolean v6, v0, v1

    .line 879
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    const/16 v1, 0x37

    new-array v1, v1, [Z

    aput-object v1, v0, v6

    .line 880
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    aput-boolean v6, v0, v7

    .line 881
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    aput-boolean v6, v0, v6

    .line 882
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    aput-boolean v6, v0, v9

    .line 883
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    aput-boolean v6, v0, v10

    .line 884
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/4 v1, 0x4

    aput-boolean v6, v0, v1

    .line 885
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/4 v1, 0x5

    aput-boolean v6, v0, v1

    .line 886
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/4 v1, 0x6

    aput-boolean v6, v0, v1

    .line 887
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/4 v1, 0x7

    aput-boolean v6, v0, v1

    .line 888
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x8

    aput-boolean v6, v0, v1

    .line 889
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x9

    aput-boolean v7, v0, v1

    .line 890
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0xa

    aput-boolean v6, v0, v1

    .line 891
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0xb

    aput-boolean v6, v0, v1

    .line 892
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0xc

    aput-boolean v6, v0, v1

    .line 894
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0xe

    aput-boolean v6, v0, v1

    .line 895
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0xf

    aput-boolean v6, v0, v1

    .line 896
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x10

    aput-boolean v6, v0, v1

    .line 897
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x11

    aput-boolean v6, v0, v1

    .line 898
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x12

    aput-boolean v6, v0, v1

    .line 899
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x13

    aput-boolean v6, v0, v1

    .line 900
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x14

    aput-boolean v6, v0, v1

    .line 901
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x2d

    aput-boolean v7, v0, v1

    .line 903
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x1e

    aput-boolean v6, v0, v1

    .line 904
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x1f

    aput-boolean v6, v0, v1

    .line 905
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x20

    aput-boolean v6, v0, v1

    .line 906
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x21

    aput-boolean v6, v0, v1

    .line 907
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x22

    aput-boolean v6, v0, v1

    .line 909
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x15

    aput-boolean v7, v0, v1

    .line 910
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x16

    aput-boolean v6, v0, v1

    .line 911
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x2e

    aput-boolean v6, v0, v1

    .line 912
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x2f

    aput-boolean v6, v0, v1

    .line 913
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x30

    aput-boolean v6, v0, v1

    .line 914
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x31

    aput-boolean v6, v0, v1

    .line 915
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x32

    aput-boolean v6, v0, v1

    .line 916
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v0, v0, v6

    const/16 v1, 0x34

    aput-boolean v6, v0, v1

    .line 918
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c0146

    aput v1, v0, v7

    .line 919
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c012a

    aput v1, v0, v6

    .line 920
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c0065

    aput v1, v0, v9

    .line 921
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const v1, 0x7f0c0154

    aput v1, v0, v10

    .line 922
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/4 v1, 0x4

    const v2, 0x7f0c014d

    aput v2, v0, v1

    .line 924
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/4 v1, 0x6

    const v2, 0x7f0c0053

    aput v2, v0, v1

    .line 925
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/4 v1, 0x7

    const v2, 0x7f0c0066

    aput v2, v0, v1

    .line 926
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x8

    const v2, 0x7f0c008a

    aput v2, v0, v1

    .line 927
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x9

    const v2, 0x7f0c008c

    aput v2, v0, v1

    .line 928
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xa

    const v2, 0x7f0c012e

    aput v2, v0, v1

    .line 929
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xb

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 930
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xc

    const v2, 0x7f0c003e

    aput v2, v0, v1

    .line 933
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xe

    const v2, 0x7f0c006d

    aput v2, v0, v1

    .line 934
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0xf

    const v2, 0x7f0c007e

    aput v2, v0, v1

    .line 935
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x10

    const v2, 0x7f0c0081

    aput v2, v0, v1

    .line 936
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x11

    const v2, 0x7f0c0085

    aput v2, v0, v1

    .line 937
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x12

    const v2, 0x7f0c0137

    aput v2, v0, v1

    .line 938
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x13

    const v2, 0x7f0c0174

    aput v2, v0, v1

    .line 939
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x14

    const v2, 0x7f0c0132

    aput v2, v0, v1

    .line 940
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x2d

    const v2, 0x7f0c00d4

    aput v2, v0, v1

    .line 942
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x1e

    const v2, 0x7f0c0046

    aput v2, v0, v1

    .line 943
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x1f

    const v2, 0x7f0c0048

    aput v2, v0, v1

    .line 944
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x20

    const v2, 0x7f0c004a

    aput v2, v0, v1

    .line 945
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x21

    const v2, 0x7f0c004c

    aput v2, v0, v1

    .line 946
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x22

    const v2, 0x7f0c004e

    aput v2, v0, v1

    .line 948
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x15

    const/4 v2, -0x1

    aput v2, v0, v1

    .line 949
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x16

    const v2, 0x7f0c009a

    aput v2, v0, v1

    .line 950
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x2f

    const v2, 0x7f0c00a3

    aput v2, v0, v1

    .line 951
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x30

    const v2, 0x7f0c00a5

    aput v2, v0, v1

    .line 952
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x31

    const v2, 0x7f0c00a7

    aput v2, v0, v1

    .line 953
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x32

    const v2, 0x7f0c00aa

    aput v2, v0, v1

    .line 954
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x34

    const v2, 0x7f0c00e0

    aput v2, v0, v1

    .line 955
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x33

    const v2, 0x7f0c00dc

    aput v2, v0, v1

    .line 956
    sget-object v0, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    const/16 v1, 0x35

    const v2, 0x7f0c00e4

    aput v2, v0, v1

    .line 957
    return-void

    .line 130
    nop

    :array_0
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    .line 152
    :array_1
    .array-data 0x4
        0x1t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
    .end array-data

    .line 172
    :array_2
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 194
    :array_3
    .array-data 0x4
        0xat 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
    .end array-data

    .line 200
    :array_4
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
    .end array-data

    .line 207
    :array_5
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
    .end array-data

    .line 222
    :array_6
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 232
    :array_7
    .array-data 0x4
        0xbt 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
    .end array-data

    .line 238
    :array_8
    .array-data 0x4
        0x8t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
    .end array-data

    .line 247
    :array_9
    .array-data 0x4
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
    .end array-data

    .line 256
    :array_a
    .array-data 0x4
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 265
    :array_b
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    .line 312
    :array_c
    .array-data 0x4
        0x3t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x36t 0x0t 0x0t 0x0t
    .end array-data

    .line 356
    :array_d
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    .line 393
    :array_e
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
    .end array-data

    .line 420
    :array_f
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x1t 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x33t 0x0t 0x0t 0x0t
        0x34t 0x0t 0x0t 0x0t
        0x35t 0x0t 0x0t 0x0t
    .end array-data

    .line 456
    :array_10
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x2t 0x0t 0x0t 0x0t
        0x3t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
        0x6t 0x0t 0x0t 0x0t
        0xat 0x0t 0x0t 0x0t
        0xet 0x0t 0x0t 0x0t
        0x7t 0x0t 0x0t 0x0t
        0x8t 0x0t 0x0t 0x0t
        0x9t 0x0t 0x0t 0x0t
        0xbt 0x0t 0x0t 0x0t
        0xct 0x0t 0x0t 0x0t
        0x2ft 0x0t 0x0t 0x0t
        0x30t 0x0t 0x0t 0x0t
        0x31t 0x0t 0x0t 0x0t
        0x32t 0x0t 0x0t 0x0t
        0xft 0x0t 0x0t 0x0t
        0x10t 0x0t 0x0t 0x0t
        0x11t 0x0t 0x0t 0x0t
        0x12t 0x0t 0x0t 0x0t
        0x13t 0x0t 0x0t 0x0t
        0x14t 0x0t 0x0t 0x0t
        0x1et 0x0t 0x0t 0x0t
        0x1ft 0x0t 0x0t 0x0t
        0x20t 0x0t 0x0t 0x0t
        0x21t 0x0t 0x0t 0x0t
        0x22t 0x0t 0x0t 0x0t
        0x15t 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    .line 495
    :array_11
    .array-data 0x4
        0x28t 0x0t 0x0t 0x0t
        0x29t 0x0t 0x0t 0x0t
        0x2at 0x0t 0x0t 0x0t
        0x2bt 0x0t 0x0t 0x0t
        0x2ct 0x0t 0x0t 0x0t
        0x5t 0x0t 0x0t 0x0t
        0x2et 0x0t 0x0t 0x0t
        0x16t 0x0t 0x0t 0x0t
    .end array-data

    .line 612
    :array_12
    .array-data 0x1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 628
    nop

    :array_13
    .array-data 0x4
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1ft 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
        0x1et 0x0t 0x8t 0x7ft
    .end array-data

    .line 662
    :array_14
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 663
    :array_15
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 664
    :array_16
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 665
    :array_17
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 666
    :array_18
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 668
    :array_19
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 669
    :array_1a
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 670
    :array_1b
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 671
    :array_1c
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 672
    :array_1d
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 673
    :array_1e
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 674
    :array_1f
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 676
    :array_20
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 677
    :array_21
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 678
    :array_22
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 679
    :array_23
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 680
    :array_24
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 681
    :array_25
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 682
    :array_26
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 684
    :array_27
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 685
    :array_28
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 687
    :array_29
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 688
    :array_2a
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 689
    :array_2b
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 690
    :array_2c
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 691
    :array_2d
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 693
    :array_2e
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 694
    :array_2f
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x33t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ft 0x1t 0x0t 0x0t
        0x30t 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 695
    :array_30
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 696
    :array_31
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 697
    :array_32
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 700
    :array_33
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 701
    :array_34
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 702
    :array_35
    .array-data 0x4
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
        0x64t 0x0t 0x0t 0x0t
    .end array-data

    .line 703
    :array_36
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 704
    :array_37
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 705
    :array_38
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 706
    :array_39
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 707
    :array_3a
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
    .end array-data

    .line 710
    :array_3b
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 711
    :array_3c
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 713
    :array_3d
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 716
    :array_3e
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2et 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 717
    :array_3f
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 718
    :array_40
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2dt 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 719
    :array_41
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 720
    :array_42
    .array-data 0x4
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data

    .line 721
    :array_43
    .array-data 0x4
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0x2ct 0x1t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
        0xc8t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/android/camera/Camera;)V
    .locals 2
    .parameter "context"

    .prologue
    const/16 v1, 0x37

    .line 2152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 604
    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    .line 2150
    new-array v0, v1, [Lcom/android/camera/ListPreference;

    iput-object v0, p0, Lcom/android/camera/SettingChecker;->mListPrefs:[Lcom/android/camera/ListPreference;

    .line 2389
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SettingChecker;->isNeedResetFocus:Z

    .line 2153
    iput-object p1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    .line 2154
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SettingChecker;)Lcom/android/camera/Camera;
    .locals 1
    .parameter "x0"

    .prologue
    .line 25
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    return-object v0
.end method

.method private static applyModeTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V
    .locals 11
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"
    .parameter "mode"

    .prologue
    .line 1266
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1267
    .local v8, modeList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, i:I
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    array-length v7, v0

    .local v7, len:I
    :goto_0
    if-ge v6, v7, :cond_1

    .line 1268
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    aget v9, v0, v6

    .line 1269
    .local v9, row:I
    invoke-static {p3, v9}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1270
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1267
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1273
    .end local v9           #row:I
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v10

    .line 1274
    .local v10, size:I
    new-array v5, v10, [I

    .line 1275
    .local v5, appliedGroup2:[I
    const/4 v6, 0x0

    :goto_1
    if-ge v6, v10, :cond_2

    .line 1276
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v6

    .line 1275
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1278
    :cond_2
    sget-object v3, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/camera/SettingChecker;->applyTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[[II[I)V

    .line 1279
    return-void
.end method

.method private static applyPreferenceToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "mode"
    .parameter "row"

    .prologue
    .line 1349
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v0, p4}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p0

    .line 1351
    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/android/camera/SettingChecker;->getOverrideSettingValue(I)Ljava/lang/String;

    move-result-object v5

    .line 1353
    .local v5, preferenceValue:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 1354
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    invoke-static {v0, p3, p4}, Lcom/android/camera/SettingChecker;->getMatrixValue([[III)Ljava/lang/String;

    move-result-object v5

    .line 1356
    :cond_0
    if-nez v5, :cond_1

    .line 1357
    invoke-static {p0, p1, p4}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    .line 1359
    invoke-static/range {v0 .. v5}, Lcom/android/camera/SettingChecker;->applyValueToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 1361
    .end local v5           #preferenceValue:Ljava/lang/String;
    :cond_2
    return-object p2
.end method

.method private static applyPreferenceToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V
    .locals 3
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"
    .parameter "mode"

    .prologue
    .line 1341
    const/4 v0, 0x0

    .local v0, i:I
    array-length v1, p3

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1342
    aget v2, p3, v0

    .line 1343
    .local v2, row:I
    invoke-static {p0, p1, p2, p4, v2}, Lcom/android/camera/SettingChecker;->applyPreferenceToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 1341
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1345
    .end local v2           #row:I
    :cond_0
    return-void
.end method

.method private static applyRestrictionsToParameters(Landroid/content/Context;Landroid/hardware/Camera$Parameters;[I)V
    .locals 18
    .parameter "context"
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 1291
    const/4 v5, 0x0

    .local v5, i:I
    sget-object v15, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    array-length v8, v15

    .local v8, len:I
    :goto_0
    if-ge v5, v8, :cond_7

    .line 1292
    sget-object v15, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    aget-object v2, v15, v5

    .line 1293
    .local v2, curRestriction:Lcom/android/camera/Restriction;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v15

    move-object/from16 v0, p2

    invoke-static {v0, v15}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v15

    if-nez v15, :cond_1

    .line 1291
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1297
    :cond_1
    invoke-virtual {v2}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v3

    .line 1298
    .local v3, curRow:I
    move-object/from16 v0, p1

    invoke-static {v0, v3}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v4

    .line 1299
    .local v4, curValue:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v10

    .line 1300
    .local v10, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 1301
    invoke-virtual {v2}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_2
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/camera/Restriction;

    .line 1302
    .local v12, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v12}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v9

    .line 1303
    .local v9, limitedRow:I
    move-object/from16 v0, p2

    invoke-static {v0, v9}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1307
    const/4 v14, 0x0

    .line 1308
    .local v14, value:Ljava/lang/String;
    invoke-virtual {v12}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-le v15, v0, :cond_4

    move-object/from16 v0, p0

    instance-of v15, v0, Lcom/android/camera/Camera;

    if-eqz v15, :cond_4

    move-object/from16 v15, p0

    .line 1312
    check-cast v15, Lcom/android/camera/Camera;

    invoke-virtual {v15, v9}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v11

    .line 1313
    .local v11, pref:Lcom/android/camera/ListPreference;
    if-eqz v11, :cond_4

    .line 1314
    invoke-virtual {v12}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    .line 1315
    .local v13, temp:Ljava/lang/String;
    invoke-virtual {v11}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v15

    invoke-static {v15, v13}, Lcom/android/camera/SettingUtils;->contains([Ljava/lang/CharSequence;Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1316
    move-object v14, v13

    .line 1322
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v11           #pref:Lcom/android/camera/ListPreference;
    .end local v13           #temp:Ljava/lang/String;
    :cond_4
    if-nez v14, :cond_5

    .line 1323
    invoke-virtual {v12}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v15

    const/16 v16, 0x0

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #value:Ljava/lang/String;
    check-cast v14, Ljava/lang/String;

    .line 1325
    .restart local v14       #value:Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    invoke-static {v0, v9, v14}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_6

    .line 1326
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v9, v14}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    goto :goto_1

    .line 1328
    :cond_6
    const-string v15, "SettingChecker"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "applyRestrictionsToParameters() not support limitedRow="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", value="

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1334
    .end local v2           #curRestriction:Lcom/android/camera/Restriction;
    .end local v3           #curRow:I
    .end local v4           #curValue:Ljava/lang/String;
    .end local v9           #limitedRow:I
    .end local v10           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v12           #restriction:Lcom/android/camera/Restriction;
    .end local v14           #value:Ljava/lang/String;
    :cond_7
    return-void
.end method

.method private static applySceneTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 1284
    sget-object v0, Lcom/android/camera/SettingChecker;->KEYS_FOR_SCENE:[Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {p2, v1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/SettingUtils;->index([Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1285
    .local v4, sceneMode:I
    sget-object v3, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-static/range {v0 .. v5}, Lcom/android/camera/SettingChecker;->applyTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[[II[I)V

    .line 1286
    return-void
.end method

.method private static applyTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[[II[I)V
    .locals 12
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "matrix"
    .parameter "column"
    .parameter "appliedGroup"

    .prologue
    .line 1205
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1206
    .local v3, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, i:I
    move-object/from16 v0, p5

    array-length v4, v0

    .local v4, len:I
    :goto_0
    if-ge v1, v4, :cond_3

    .line 1207
    aget v5, p5, v1

    .line 1208
    .local v5, row:I
    aget-object v6, p3, v5

    .line 1211
    .local v6, settings:[I
    if-eqz v6, :cond_0

    move-object v9, p0

    check-cast v9, Lcom/android/camera/Camera;

    invoke-virtual {v9}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v9

    invoke-virtual {v9, v5}, Lcom/android/camera/SettingChecker;->getOverrideSettingValue(I)Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_1

    .line 1206
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1214
    :cond_1
    sget-object v9, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v9, v5

    .line 1215
    .local v2, key:Ljava/lang/String;
    aget v7, v6, p4

    .line 1216
    .local v7, state:I
    const/4 v8, 0x0

    .line 1217
    .local v8, value:Ljava/lang/String;
    sparse-switch v7, :sswitch_data_0

    .line 1251
    :goto_2
    :sswitch_0
    if-eqz v8, :cond_0

    .line 1252
    invoke-static {p2, v5, v8}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 1253
    invoke-static {p0, p2, v5, v8}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    goto :goto_1

    .line 1225
    :sswitch_1
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x0

    aget-object v8, v9, v10

    .line 1226
    goto :goto_2

    .line 1228
    :sswitch_2
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x1

    aget-object v8, v9, v10

    .line 1229
    goto :goto_2

    .line 1231
    :sswitch_3
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x2

    aget-object v8, v9, v10

    .line 1232
    goto :goto_2

    .line 1234
    :sswitch_4
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x3

    aget-object v8, v9, v10

    .line 1235
    goto :goto_2

    .line 1237
    :sswitch_5
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x4

    aget-object v8, v9, v10

    .line 1238
    goto :goto_2

    .line 1240
    :sswitch_6
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x5

    aget-object v8, v9, v10

    .line 1241
    goto :goto_2

    .line 1243
    :sswitch_7
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x6

    aget-object v8, v9, v10

    .line 1244
    goto :goto_2

    .line 1246
    :sswitch_8
    sget-object v9, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v9, v9, v5

    const/4 v10, 0x7

    aget-object v8, v9, v10

    .line 1247
    goto :goto_2

    .line 1255
    :cond_2
    const-string v9, "SettingChecker"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "applyTableToParameters() not support row="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", value="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1259
    .end local v2           #key:Ljava/lang/String;
    .end local v5           #row:I
    .end local v6           #settings:[I
    .end local v7           #state:I
    .end local v8           #value:Ljava/lang/String;
    :cond_3
    return-void

    .line 1217
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
        0x12f -> :sswitch_4
        0x130 -> :sswitch_5
        0x131 -> :sswitch_6
        0x132 -> :sswitch_7
        0x133 -> :sswitch_8
    .end sparse-switch
.end method

.method private static applyValueToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Landroid/hardware/Camera$Parameters;
    .locals 3
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "mode"
    .parameter "row"
    .parameter "value"

    .prologue
    .line 1409
    invoke-static {p2, p4, p5}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1410
    invoke-static/range {p0 .. p5}, Lcom/android/camera/SettingChecker;->getCapabilitySupportedValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 1411
    invoke-static {p0, p2, p4, p5}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    .line 1412
    check-cast v0, Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 1413
    check-cast p0, Lcom/android/camera/Camera;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->fetchParametersFromServer()Landroid/hardware/Camera$Parameters;

    move-result-object p2

    .line 1418
    :cond_0
    :goto_0
    return-object p2

    .line 1416
    .restart local p0
    :cond_1
    const-string v0, "SettingChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyValueToParameters() not support mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", row="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private static buildPreferenceKeyValue(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 2
    .parameter "key"
    .parameter "value"

    .prologue
    .line 1177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1178
    .local v0, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1179
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1180
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private clearOverrideSettings([I)V
    .locals 5
    .parameter "appliedGroup"

    .prologue
    .line 2283
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferenceGroup()Lcom/android/camera/PreferenceGroup;

    move-result-object v0

    .line 2284
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    const/4 v1, 0x0

    .local v1, i:I
    array-length v3, p1

    .local v3, size:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2285
    aget v4, p1, v1

    invoke-virtual {p0, v4}, Lcom/android/camera/SettingChecker;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 2286
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_0

    .line 2287
    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;)V

    .line 2284
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2290
    .end local v2           #pref:Lcom/android/camera/ListPreference;
    :cond_1
    return-void
.end method

.method private static computeDesiredPreviewSize(Lcom/android/camera/Camera;Landroid/media/CamcorderProfile;Landroid/hardware/Camera$Parameters;)Landroid/graphics/Point;
    .locals 14
    .parameter "context"
    .parameter "profile"
    .parameter "parameters"

    .prologue
    .line 1876
    const/4 v11, -0x1

    .line 1877
    .local v11, previewWidth:I
    const/4 v10, -0x1

    .line 1878
    .local v10, previewHeight:I
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedVideoSizes()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1879
    :cond_0
    iget v11, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1880
    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    .line 1904
    :goto_0
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6, v11, v10}, Landroid/graphics/Point;-><init>(II)V

    .line 1905
    .local v6, desired:Landroid/graphics/Point;
    const-string v0, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "computeDesiredPreviewSize("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    return-object v6

    .line 1882
    .end local v6           #desired:Landroid/graphics/Point;
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v1

    .line 1883
    .local v1, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual/range {p2 .. p2}, Landroid/hardware/Camera$Parameters;->getPreferredPreviewSizeForVideo()Landroid/hardware/Camera$Size;

    move-result-object v9

    .line 1884
    .local v9, preferred:Landroid/hardware/Camera$Size;
    iget v0, v9, Landroid/hardware/Camera$Size;->width:I

    iget v2, v9, Landroid/hardware/Camera$Size;->height:I

    mul-int v12, v0, v2

    .line 1885
    .local v12, product:I
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .line 1887
    .local v7, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/hardware/Camera$Size;>;"
    :cond_2
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1888
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/hardware/Camera$Size;

    .line 1889
    .local v13, size:Landroid/hardware/Camera$Size;
    iget v0, v13, Landroid/hardware/Camera$Size;->width:I

    iget v2, v13, Landroid/hardware/Camera$Size;->height:I

    mul-int/2addr v0, v2

    if-le v0, v12, :cond_2

    .line 1890
    invoke-interface {v7}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 1893
    .end local v13           #size:Landroid/hardware/Camera$Size;
    :cond_3
    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    int-to-double v2, v0

    iget v0, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-virtual {p0}, Lcom/android/camera/Camera;->isVideoWallPaperIntent()Z

    move-result v0

    if-nez v0, :cond_4

    const/4 v4, 0x1

    :goto_2
    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZZ)Landroid/hardware/Camera$Size;

    move-result-object v8

    .line 1896
    .local v8, optimalSize:Landroid/hardware/Camera$Size;
    if-eqz v8, :cond_5

    .line 1897
    iget v11, v8, Landroid/hardware/Camera$Size;->width:I

    .line 1898
    iget v10, v8, Landroid/hardware/Camera$Size;->height:I

    goto :goto_0

    .line 1893
    .end local v8           #optimalSize:Landroid/hardware/Camera$Size;
    :cond_4
    const/4 v4, 0x0

    goto :goto_2

    .line 1900
    .restart local v8       #optimalSize:Landroid/hardware/Camera$Size;
    :cond_5
    iget v11, p1, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    .line 1901
    iget v10, p1, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    goto :goto_0
.end method

.method private static fillCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[ILjava/util/List;Lcom/android/camera/Restriction;)V
    .locals 6
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"
    .parameter
    .parameter "curRestriction"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/camera/ComboPreferences;",
            "Landroid/hardware/Camera$Parameters;",
            "[I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/camera/Restriction;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p4, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p5}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/camera/Restriction;

    .line 1186
    .local v3, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v3}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v1

    .line 1187
    .local v1, limitedRow:I
    invoke-static {p3, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1190
    const/4 v2, 0x0

    .line 1191
    .local v2, limitedValue:Ljava/lang/String;
    sget-object v4, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    invoke-static {v4, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1192
    invoke-static {p2, v1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v2

    .line 1197
    :cond_1
    :goto_1
    sget-object v4, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1198
    invoke-virtual {v3}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    invoke-static {v4, v2}, Lcom/android/camera/SettingUtils;->buildEnableList([Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p4, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1193
    :cond_2
    sget-object v4, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v4, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1194
    invoke-static {p0, p1, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1201
    .end local v1           #limitedRow:I
    .end local v2           #limitedValue:Ljava/lang/String;
    .end local v3           #restriction:Lcom/android/camera/Restriction;
    :cond_3
    return-void
.end method

.method public static filterUnsuportedPreference(Lcom/android/camera/CameraSettings;Lcom/android/camera/PreferenceGroup;I)Lcom/android/camera/PreferenceGroup;
    .locals 4
    .parameter "cameraSettings"
    .parameter "preferenceGroup"
    .parameter "cameraId"

    .prologue
    .line 2517
    const/4 v0, 0x0

    .local v0, i:I
    sget-object v2, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v2, v2, p2

    array-length v1, v2

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2518
    sget-object v2, Lcom/android/camera/SettingChecker;->MATRIX_SETTING_VISIBLE:[[Z

    aget-object v2, v2, p2

    aget-boolean v2, v2, v0

    if-nez v2, :cond_0

    .line 2519
    sget-object v2, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p0, p1, v2, v0}, Lcom/android/camera/CameraSettings;->removePreferenceFromScreen(Lcom/android/camera/PreferenceGroup;Ljava/lang/String;I)V

    .line 2517
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2523
    :cond_1
    sget-object v2, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    array-length v1, v2

    .line 2524
    const/4 v0, 0x0

    :goto_1
    if-ge v0, v1, :cond_2

    .line 2525
    sget-object v2, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2524
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 2527
    :cond_2
    return-object p1
.end method

.method public static getCameraMode(I)I
    .locals 4
    .parameter "mode"

    .prologue
    .line 993
    sget-object v1, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    const/16 v2, 0x28

    aget-object v1, v1, v2

    aget v0, v1, p0

    .line 994
    .local v0, cameraMode:I
    const-string v1, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCameraMode("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 995
    return v0
.end method

.method private static getCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)[Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"
    .parameter "mode"

    .prologue
    .line 1136
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1137
    .local v5, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v9, 0x0

    .local v9, i:I
    sget-object v1, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    array-length v10, v1

    .local v10, len:I
    :goto_0
    if-ge v9, v10, :cond_7

    .line 1138
    sget-object v1, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    aget-object v6, v1, v9

    .line 1139
    .local v6, curRestriction:Lcom/android/camera/Restriction;
    if-nez v6, :cond_1

    .line 1137
    :cond_0
    :goto_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1142
    :cond_1
    invoke-virtual {v6}, Lcom/android/camera/Restriction;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 1143
    invoke-virtual {v6}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v11

    .line 1145
    .local v11, limitedMode:I
    const/4 v1, -0x1

    if-eq v11, v1, :cond_2

    move/from16 v0, p4

    if-ne v11, v0, :cond_0

    :cond_2
    invoke-virtual {v6}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1146
    invoke-static/range {v1 .. v6}, Lcom/android/camera/SettingChecker;->fillCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[ILjava/util/List;Lcom/android/camera/Restriction;)V

    goto :goto_1

    .line 1149
    .end local v11           #limitedMode:I
    :cond_3
    invoke-virtual {v6}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v7

    .line 1150
    .local v7, curRow:I
    const/4 v8, 0x0

    .line 1151
    .local v8, curValue:Ljava/lang/String;
    const/16 v1, 0x2b

    if-ne v1, v7, :cond_5

    .line 1152
    invoke-static/range {p4 .. p4}, Lcom/android/camera/SettingChecker;->isVideoMode(I)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v8

    .line 1158
    :cond_4
    :goto_2
    invoke-virtual {v6}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v12

    .line 1159
    .local v12, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v12, :cond_0

    invoke-interface {v12, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    .line 1160
    invoke-static/range {v1 .. v6}, Lcom/android/camera/SettingChecker;->fillCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[ILjava/util/List;Lcom/android/camera/Restriction;)V

    goto :goto_1

    .line 1153
    .end local v12           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    sget-object v1, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    invoke-static {v1, v7}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1154
    move-object/from16 v0, p2

    invoke-static {v0, v7}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1155
    :cond_6
    sget-object v1, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v1, v7}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1156
    invoke-static {p0, p1, v7}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 1165
    .end local v6           #curRestriction:Lcom/android/camera/Restriction;
    .end local v7           #curRow:I
    .end local v8           #curValue:Ljava/lang/String;
    :cond_7
    check-cast p0, Lcom/android/camera/Camera;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1166
    sget-object v1, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v1, v1, v2

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    const-string v1, "off"

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1169
    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v13

    .line 1170
    .local v13, size:I
    if-lez v13, :cond_9

    .line 1171
    new-array v1, v13, [Ljava/lang/String;

    invoke-interface {v5, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 1173
    :goto_3
    return-object v1

    :cond_9
    const/4 v1, 0x0

    goto :goto_3
.end method

.method private static getCapabilitySupportedValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Ljava/lang/String;
    .locals 14
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "mode"
    .parameter "row"
    .parameter "value"

    .prologue
    .line 1946
    move-object/from16 v10, p5

    .line 1947
    .local v10, support:Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, i:I
    sget-object v11, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    array-length v6, v11

    .local v6, len:I
    :goto_0
    if-ge v4, v6, :cond_9

    .line 1948
    sget-object v11, Lcom/android/camera/SettingChecker;->CAPABILITIES:[Lcom/android/camera/Restriction;

    aget-object v1, v11, v4

    .line 1949
    .local v1, cur:Lcom/android/camera/Restriction;
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getType()I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3

    .line 1950
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v7

    .line 1951
    .local v7, limitedMode:I
    const/4 v11, -0x1

    if-eq v7, v11, :cond_0

    move/from16 v0, p3

    if-ne v7, v0, :cond_2

    :cond_0
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v11

    if-eqz v11, :cond_2

    .line 1952
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Restriction;

    .line 1954
    .local v9, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v9}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v11

    move/from16 v0, p4

    if-ne v11, v0, :cond_1

    .line 1955
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/android/camera/Restriction;->findSupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1960
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #restriction:Lcom/android/camera/Restriction;
    :cond_2
    const-string v11, "SettingChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCapabilitySupportedValue() limitedMode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mode="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", support="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    .end local v7           #limitedMode:I
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1963
    :cond_3
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v2

    .line 1964
    .local v2, curRow:I
    const/4 v3, 0x0

    .line 1965
    .local v3, curValue:Ljava/lang/String;
    const/16 v11, 0x2b

    if-ne v11, v2, :cond_7

    .line 1966
    invoke-static/range {p3 .. p3}, Lcom/android/camera/SettingChecker;->isVideoMode(I)Z

    move-result v11

    invoke-static {v11}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    .line 1972
    :cond_4
    :goto_2
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v8

    .line 1973
    .local v8, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v8, :cond_6

    invoke-interface {v8, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 1974
    invoke-virtual {v1}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .restart local v5       #i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/camera/Restriction;

    .line 1976
    .restart local v9       #restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v9}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v11

    move/from16 v0, p4

    if-ne v11, v0, :cond_5

    .line 1977
    move-object/from16 v0, p5

    invoke-virtual {v9, v0}, Lcom/android/camera/Restriction;->findSupported(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1982
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v9           #restriction:Lcom/android/camera/Restriction;
    :cond_6
    const-string v11, "SettingChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCapabilitySupportedValue() curRow="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", curValue="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", support="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1967
    .end local v8           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_7
    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    invoke-static {v11, v2}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 1968
    move-object/from16 v0, p2

    invoke-static {v0, v2}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1969
    :cond_8
    sget-object v11, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v11, v2}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v11

    if-nez v11, :cond_4

    .line 1970
    invoke-static {p0, p1, v2}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 1986
    .end local v1           #cur:Lcom/android/camera/Restriction;
    .end local v2           #curRow:I
    .end local v3           #curValue:Ljava/lang/String;
    :cond_9
    const-string v11, "SettingChecker"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getCapabilitySupportedValue("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p3

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move-object/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ") return "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1987
    return-object v10
.end method

.method private static getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "row"

    .prologue
    .line 1422
    sget-object v4, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    aget-object v3, v4, p1

    .line 1423
    .local v3, value:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1424
    .local v0, group:Lcom/android/camera/PreferenceGroup;
    if-nez v3, :cond_2

    .line 1425
    const/4 v1, 0x0

    .line 1426
    .local v1, pref:Lcom/android/camera/ListPreference;
    instance-of v4, p0, Lcom/android/camera/Camera;

    if-eqz v4, :cond_0

    move-object v4, p0

    .line 1427
    check-cast v4, Lcom/android/camera/Camera;

    invoke-virtual {v4, p1}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v1

    .line 1429
    :cond_0
    sget-boolean v4, Lcom/android/camera/CameraSettings;->SUPPORTED_SHOW_CONINUOUS_SHOT_NUMBER:Z

    if-nez v4, :cond_3

    const/16 v4, 0x9

    if-ne p1, v4, :cond_3

    .line 1431
    const-string v3, "20"

    .line 1448
    :cond_1
    :goto_0
    sget-object v4, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING:[Ljava/lang/String;

    aput-object v3, v4, p1

    .line 1449
    const-string v4, "SettingChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultValueFromXml("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    .end local v1           #pref:Lcom/android/camera/ListPreference;
    :cond_2
    const-string v4, "SettingChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getDefaultValueFromXml("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1452
    return-object v3

    .line 1433
    .restart local v1       #pref:Lcom/android/camera/ListPreference;
    :cond_3
    if-eqz v1, :cond_4

    .line 1434
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->findSupportedDefaultValue()Ljava/lang/String;

    move-result-object v3

    .line 1435
    if-nez v3, :cond_4

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    if-eqz v4, :cond_4

    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-lez v4, :cond_4

    .line 1436
    invoke-virtual {v1}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v4, v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1441
    :cond_4
    if-nez v3, :cond_1

    .line 1442
    sget-object v4, Lcom/android/camera/SettingChecker;->DEFAULT_VALUE_FOR_SETTING_ID:[I

    aget v2, v4, p1

    .line 1443
    .local v2, resId:I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_1

    .line 1444
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method private static getJpegQuality(Landroid/content/Context;I)I
    .locals 2
    .parameter "context"
    .parameter "quality"

    .prologue
    .line 1708
    check-cast p0, Lcom/android/camera/Camera;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v0

    .line 1709
    .local v0, cameraId:I
    invoke-static {v0, p1}, Landroid/media/CameraProfile;->getJpegEncodingQualityParameter(II)I

    move-result v1

    .line 1711
    .local v1, jpegQuality:I
    return v1
.end method

.method private static getMatrixValue([[III)Ljava/lang/String;
    .locals 6
    .parameter "matrix"
    .parameter "column"
    .parameter "row"

    .prologue
    .line 1365
    aget-object v0, p0, p2

    .line 1366
    .local v0, settings:[I
    aget v1, v0, p1

    .line 1367
    .local v1, state:I
    const/4 v2, 0x0

    .line 1368
    .local v2, value:Ljava/lang/String;
    sparse-switch v1, :sswitch_data_0

    .line 1402
    :goto_0
    :sswitch_0
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMatrixValue("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    return-object v2

    .line 1376
    :sswitch_1
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 1377
    goto :goto_0

    .line 1379
    :sswitch_2
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x1

    aget-object v2, v3, v4

    .line 1380
    goto :goto_0

    .line 1382
    :sswitch_3
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x2

    aget-object v2, v3, v4

    .line 1383
    goto :goto_0

    .line 1385
    :sswitch_4
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x3

    aget-object v2, v3, v4

    .line 1386
    goto :goto_0

    .line 1388
    :sswitch_5
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x4

    aget-object v2, v3, v4

    .line 1389
    goto :goto_0

    .line 1391
    :sswitch_6
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x5

    aget-object v2, v3, v4

    .line 1392
    goto :goto_0

    .line 1394
    :sswitch_7
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x6

    aget-object v2, v3, v4

    .line 1395
    goto :goto_0

    .line 1397
    :sswitch_8
    sget-object v3, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v3, v3, p2

    const/4 v4, 0x7

    aget-object v2, v3, v4

    .line 1398
    goto :goto_0

    .line 1368
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_3
        0x12f -> :sswitch_4
        0x130 -> :sswitch_5
        0x131 -> :sswitch_6
        0x132 -> :sswitch_7
        0x133 -> :sswitch_8
    .end sparse-switch
.end method

.method private static getMaxSupportedPreviewFrameRate(Ljava/util/List;)I
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 1930
    .local p0, supportedPreviewRate:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1931
    .local v1, maxFrameRate:I
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1932
    .local v2, rate:I
    if-le v2, v1, :cond_0

    .line 1933
    move v1, v2

    goto :goto_0

    .line 1936
    .end local v2           #rate:I
    :cond_1
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getMaxSupportedPreviewFrameRate() return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1937
    return v1
.end method

.method public static getModeContinousFocusMode(I)Ljava/lang/String;
    .locals 1
    .parameter "mode"

    .prologue
    .line 1021
    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x9

    if-ne p0, v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/android/camera/FeatureSwitcher;->isContinuousFocusEnabledWhenTouch()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1022
    const/4 v0, 0x0

    .line 1024
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_CONTINUOUS:[Ljava/lang/String;

    aget-object v0, v0, p0

    goto :goto_0
.end method

.method public static getModeDefaultFocusModes(Landroid/content/Context;I)[Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "mode"

    .prologue
    .line 1016
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcom/android/camera/SettingChecker;->MATRIX_FOCUS_MODE_DEFAULT_ARRAY:[I

    aget v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getModeSettingGroupForParameters(I)[I
    .locals 1
    .parameter "mode"

    .prologue
    .line 980
    invoke-static {p0}, Lcom/android/camera/SettingChecker;->isVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_PARAMETERS:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    goto :goto_0
.end method

.method private static getModeSettingGroupForUI(I)[I
    .locals 1
    .parameter "mode"

    .prologue
    .line 976
    invoke-static {p0}, Lcom/android/camera/SettingChecker;->isVideoMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_VIDEO_FOR_UI:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_UI:[I

    goto :goto_0
.end method

.method private static getModeTableKeyValues(I[I)[Ljava/lang/String;
    .locals 1
    .parameter "mode"
    .parameter "appliedGroup"

    .prologue
    .line 1091
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    invoke-static {v0, p0, p1}, Lcom/android/camera/SettingChecker;->getSettingKeyValues([[II[I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;
    .locals 5
    .parameter "parameters"
    .parameter "row"

    .prologue
    .line 1466
    if-nez p0, :cond_0

    .line 1467
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameterValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") parameters=null!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/Throwable;

    invoke-direct {v4}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v2, v3, v4}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1468
    const/4 v1, 0x0

    .line 1567
    :goto_0
    return-object v1

    .line 1470
    :cond_0
    const/4 v1, 0x0

    .line 1471
    .local v1, value:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 1566
    :goto_1
    :pswitch_0
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getParameterValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1473
    :pswitch_1
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getFlashMode()Ljava/lang/String;

    move-result-object v1

    .line 1474
    goto :goto_1

    .line 1476
    :pswitch_2
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get dual camera from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1478
    :pswitch_3
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getExposureCompensation()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1479
    goto :goto_1

    .line 1481
    :pswitch_4
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v1

    .line 1482
    goto :goto_1

    .line 1484
    :pswitch_5
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getWhiteBalance()Ljava/lang/String;

    move-result-object v1

    .line 1485
    goto :goto_1

    .line 1487
    :pswitch_6
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get image adjustment from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1489
    :pswitch_7
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getHueMode()Ljava/lang/String;

    move-result-object v1

    .line 1490
    goto :goto_1

    .line 1492
    :pswitch_8
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getContrastMode()Ljava/lang/String;

    goto :goto_1

    .line 1495
    :pswitch_9
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getEdgeMode()Ljava/lang/String;

    goto :goto_1

    .line 1498
    :pswitch_a
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getSaturationMode()Ljava/lang/String;

    goto :goto_1

    .line 1501
    :pswitch_b
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getBrightnessMode()Ljava/lang/String;

    goto :goto_1

    .line 1504
    :pswitch_c
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getColorEffect()Ljava/lang/String;

    move-result-object v1

    .line 1505
    goto :goto_1

    .line 1507
    :pswitch_d
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get geo tag from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1512
    :pswitch_e
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getAntibanding()Ljava/lang/String;

    move-result-object v1

    .line 1513
    goto :goto_1

    .line 1515
    :pswitch_f
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get self timer from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1517
    :pswitch_10
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getZSDMode()Ljava/lang/String;

    move-result-object v1

    .line 1518
    goto :goto_1

    .line 1520
    :pswitch_11
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get continuous number from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1522
    :pswitch_12
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v0

    .line 1523
    .local v0, size:Landroid/hardware/Camera$Size;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x78

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1524
    goto/16 :goto_1

    .line 1526
    .end local v0           #size:Landroid/hardware/Camera$Size;
    :pswitch_13
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getISOSpeed()Ljava/lang/String;

    move-result-object v1

    .line 1527
    goto/16 :goto_1

    .line 1529
    :pswitch_14
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get facebeauty adjustment from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1531
    :pswitch_15
    const-string v2, "fb-smooth-level"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1532
    goto/16 :goto_1

    .line 1534
    :pswitch_16
    const-string v2, "fb-skin-color"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1535
    goto/16 :goto_1

    .line 1537
    :pswitch_17
    const-string v2, "fb-sharp"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1538
    goto/16 :goto_1

    .line 1540
    :pswitch_18
    invoke-virtual {p0}, Landroid/hardware/Camera$Parameters;->getVideoStabilization()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    .line 1541
    goto/16 :goto_1

    .line 1543
    :pswitch_19
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get microphone from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1545
    :pswitch_1a
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get audio mode from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1547
    :pswitch_1b
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get time lapse from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1549
    :pswitch_1c
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get live effect from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1555
    :pswitch_1d
    const-string v2, "recording-hint"

    invoke-virtual {p0, v2}, Landroid/hardware/Camera$Parameters;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1556
    goto/16 :goto_1

    .line 1558
    :pswitch_1e
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get picture ratio from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1560
    :pswitch_1f
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get voice from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1562
    :pswitch_20
    new-instance v2, Lcom/android/camera/CameraSettingException;

    const-string v3, "Cannot get face detection from parameters."

    invoke-direct {v2, v3}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1471
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_e
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_0
        :pswitch_1e
        :pswitch_1f
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1d
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_20
    .end packed-switch
.end method

.method public static getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "preferences"
    .parameter "row"

    .prologue
    .line 1456
    sget-object v2, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v0, v2, p2

    .line 1457
    .local v0, key:Ljava/lang/String;
    invoke-static {p0, p2}, Lcom/android/camera/SettingChecker;->getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1458
    .local v1, value:Ljava/lang/String;
    const/16 v2, 0x15

    if-ne p2, v2, :cond_0

    if-nez v1, :cond_0

    .line 1459
    const-string v1, "1.3333"

    .line 1461
    :cond_0
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPreferenceValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1462
    return-object v1
.end method

.method private static getRestrictionsKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;
    .locals 12
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 1102
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1103
    .local v5, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v3, 0x0

    .local v3, i:I
    sget-object v10, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    array-length v6, v10

    .local v6, len:I
    :goto_0
    if-ge v3, v6, :cond_5

    .line 1104
    sget-object v10, Lcom/android/camera/SettingChecker;->RESTRICTIOINS:[Lcom/android/camera/Restriction;

    aget-object v0, v10, v3

    .line 1105
    .local v0, curRestriction:Lcom/android/camera/Restriction;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v10

    invoke-static {p3, v10}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 1103
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1108
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v1

    .line 1109
    .local v1, curRow:I
    const/4 v2, 0x0

    .line 1110
    .local v2, curValue:Ljava/lang/String;
    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_CAMERA_FOR_PARAMETERS:[I

    invoke-static {v10, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1111
    invoke-static {p2, v1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v2

    .line 1115
    :cond_2
    :goto_1
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v7

    .line 1116
    .local v7, limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_0

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 1117
    invoke-virtual {v0}, Lcom/android/camera/Restriction;->getRestrictioins()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/camera/Restriction;

    .line 1118
    .local v8, restriction:Lcom/android/camera/Restriction;
    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v10

    invoke-static {p3, v10}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1122
    sget-object v10, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getIndex()I

    move-result v11

    aget-object v10, v10, v11

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1123
    invoke-virtual {v8}, Lcom/android/camera/Restriction;->getValues()Ljava/util/List;

    move-result-object v10

    const/4 v11, 0x0

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1112
    .end local v4           #i$:Ljava/util/Iterator;
    .end local v7           #limitedValues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v8           #restriction:Lcom/android/camera/Restriction;
    :cond_4
    sget-object v10, Lcom/android/camera/SettingChecker;->SETTING_GROUP_NOT_IN_PREFERENCE:[I

    invoke-static {v10, v1}, Lcom/android/camera/SettingUtils;->contains([II)Z

    move-result v10

    if-nez v10, :cond_2

    .line 1113
    invoke-static {p0, p1, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 1127
    .end local v0           #curRestriction:Lcom/android/camera/Restriction;
    .end local v1           #curRow:I
    .end local v2           #curValue:Ljava/lang/String;
    :cond_5
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    .line 1128
    .local v9, size:I
    if-lez v9, :cond_6

    .line 1129
    new-array v10, v9, [Ljava/lang/String;

    invoke-interface {v5, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Ljava/lang/String;

    .line 1131
    :goto_3
    return-object v10

    :cond_6
    const/4 v10, 0x0

    goto :goto_3
.end method

.method private static getSceneTableKeyValues(Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;
    .locals 3
    .parameter "parameters"
    .parameter "appliedGroup"

    .prologue
    .line 1096
    sget-object v1, Lcom/android/camera/SettingChecker;->KEYS_FOR_SCENE:[Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/SettingUtils;->index([Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1097
    .local v0, sceneMode:I
    sget-object v1, Lcom/android/camera/SettingChecker;->MATRIX_SCENE_STATE:[[I

    invoke-static {v1, v0, p1}, Lcom/android/camera/SettingChecker;->getSettingKeyValues([[II[I)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private static getSettingKeyValues([[II[I)[Ljava/lang/String;
    .locals 9
    .parameter "matrix"
    .parameter "column"
    .parameter "appliedGroup"

    .prologue
    .line 1029
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSettingKeyValues("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1031
    .local v1, keyvalues:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, p2

    .local v2, len:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 1032
    aget v3, p2, v0

    .line 1033
    .local v3, row:I
    aget-object v4, p0, v3

    .line 1035
    .local v4, settings:[I
    if-nez v4, :cond_0

    .line 1031
    :goto_1
    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1038
    :cond_0
    aget-object v6, p0, v3

    aget v5, v6, p1

    .line 1039
    .local v5, state:I
    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 1047
    :sswitch_1
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1048
    const-string v6, "disable-value"

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1051
    :sswitch_2
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1052
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x0

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1055
    :sswitch_3
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1056
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x1

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1059
    :sswitch_4
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1060
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x2

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1063
    :sswitch_5
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1064
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x3

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1067
    :sswitch_6
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1068
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1071
    :sswitch_7
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1072
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x5

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1075
    :sswitch_8
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1076
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x6

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1079
    :sswitch_9
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1080
    sget-object v6, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v6, v6, v3

    const/4 v7, 0x7

    aget-object v6, v6, v7

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 1086
    .end local v3           #row:I
    .end local v4           #settings:[I
    .end local v5           #state:I
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v6, v6, [Ljava/lang/String;

    invoke-interface {v1, v6}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Ljava/lang/String;

    return-object v6

    .line 1039
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0xc8 -> :sswitch_0
        0x12c -> :sswitch_2
        0x12d -> :sswitch_3
        0x12e -> :sswitch_4
        0x12f -> :sswitch_5
        0x130 -> :sswitch_6
        0x131 -> :sswitch_7
        0x132 -> :sswitch_8
        0x133 -> :sswitch_9
    .end sparse-switch
.end method

.method public static getSettingKeys([I)[Ljava/lang/String;
    .locals 5
    .parameter "indexes"

    .prologue
    .line 960
    if-eqz p0, :cond_0

    .line 961
    array-length v2, p0

    .line 962
    .local v2, len:I
    new-array v1, v2, [Ljava/lang/String;

    .line 963
    .local v1, keys:[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 964
    sget-object v3, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget v4, p0, v0

    aget-object v3, v3, v4

    aput-object v3, v1, v0

    .line 963
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 968
    .end local v0           #i:I
    .end local v1           #keys:[Ljava/lang/String;
    .end local v2           #len:I
    :cond_0
    const/4 v1, 0x0

    :cond_1
    return-object v1
.end method

.method private static isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z
    .locals 20
    .parameter "parameters"
    .parameter "row"
    .parameter "value"

    .prologue
    .line 1991
    if-nez p0, :cond_0

    .line 1992
    const-string v17, "SettingChecker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isParametersSupportedValue("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") parameters=null!!!"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/Throwable;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Throwable;-><init>()V

    invoke-static/range {v17 .. v19}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1993
    const/4 v14, 0x0

    .line 2123
    :goto_0
    return v14

    .line 1995
    :cond_0
    const/4 v14, 0x0

    .line 1996
    .local v14, support:Z
    const/4 v15, 0x0

    .line 1997
    .local v15, supportedList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/16 v16, 0x0

    .line 1998
    .local v16, supportedListSize:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    packed-switch p1, :pswitch_data_0

    .line 2120
    :cond_1
    :goto_1
    :pswitch_0
    if-nez v15, :cond_2

    .line 2121
    :goto_2
    const-string v17, "SettingChecker"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "isParametersSupportedValue("

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ") supportedList="

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " return "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2000
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedFlashModes()Ljava/util/List;

    move-result-object v15

    .line 2001
    goto :goto_1

    .line 2003
    :pswitch_2
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get dual camera capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2005
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v3

    .line 2006
    .local v3, max:I
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v7

    .line 2007
    .local v7, min:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2008
    .local v2, exposure:I
    if-lt v2, v7, :cond_1

    if-gt v2, v3, :cond_1

    .line 2009
    const/4 v14, 0x1

    goto :goto_1

    .line 2013
    .end local v2           #exposure:I
    .end local v3           #max:I
    .end local v7           #min:I
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedSceneModes()Ljava/util/List;

    move-result-object v15

    .line 2014
    goto :goto_1

    .line 2016
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedWhiteBalance()Ljava/util/List;

    move-result-object v15

    .line 2017
    goto :goto_1

    .line 2019
    :pswitch_6
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get image adjustment capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2021
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedHueMode()Ljava/util/List;

    move-result-object v15

    .line 2022
    goto :goto_1

    .line 2024
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedContrastMode()Ljava/util/List;

    move-result-object v15

    .line 2025
    goto :goto_1

    .line 2027
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedEdgeMode()Ljava/util/List;

    move-result-object v15

    .line 2028
    goto/16 :goto_1

    .line 2030
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedSaturationMode()Ljava/util/List;

    move-result-object v15

    .line 2031
    goto/16 :goto_1

    .line 2033
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedBrightnessMode()Ljava/util/List;

    move-result-object v15

    .line 2034
    goto/16 :goto_1

    .line 2036
    :pswitch_c
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedColorEffects()Ljava/util/List;

    move-result-object v15

    .line 2037
    goto/16 :goto_1

    .line 2039
    :pswitch_d
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get geo tag capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2044
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedAntibanding()Ljava/util/List;

    move-result-object v15

    .line 2045
    goto/16 :goto_1

    .line 2047
    :pswitch_f
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get self timer capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2049
    :pswitch_10
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedZSDMode()Ljava/util/List;

    move-result-object v15

    .line 2050
    goto/16 :goto_1

    .line 2052
    :pswitch_11
    const/4 v14, 0x1

    .line 2053
    goto/16 :goto_1

    .line 2056
    :pswitch_12
    const/4 v14, 0x1

    .line 2057
    goto/16 :goto_1

    .line 2059
    :pswitch_13
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->getSupportedISOSpeed()Ljava/util/List;

    move-result-object v15

    .line 2060
    goto/16 :goto_1

    .line 2062
    :pswitch_14
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get facebeauty adjustment capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2064
    :pswitch_15
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/ParametersHelper;->getMaxLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v6

    .line 2065
    .local v6, maxSmooth:I
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/ParametersHelper;->getMinLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v10

    .line 2066
    .local v10, minSmooth:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 2067
    .local v13, smooth:I
    if-lt v13, v10, :cond_1

    if-gt v13, v6, :cond_1

    .line 2068
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 2072
    .end local v6           #maxSmooth:I
    .end local v10           #minSmooth:I
    .end local v13           #smooth:I
    :pswitch_16
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/ParametersHelper;->getMaxLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v5

    .line 2073
    .local v5, maxSkinColor:I
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/ParametersHelper;->getMinLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v9

    .line 2074
    .local v9, minSkinColor:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 2075
    .local v12, skinColor:I
    if-lt v12, v9, :cond_1

    if-gt v12, v5, :cond_1

    .line 2076
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 2080
    .end local v5           #maxSkinColor:I
    .end local v9           #minSkinColor:I
    .end local v12           #skinColor:I
    :pswitch_17
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/ParametersHelper;->getMaxLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v4

    .line 2081
    .local v4, maxSharp:I
    const/16 v17, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/camera/ParametersHelper;->getMinLevel(Landroid/hardware/Camera$Parameters;I)I

    move-result v8

    .line 2082
    .local v8, minSharp:I
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 2083
    .local v11, sharp:I
    if-lt v11, v8, :cond_1

    if-gt v11, v4, :cond_1

    .line 2084
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 2088
    .end local v4           #maxSharp:I
    .end local v8           #minSharp:I
    .end local v11           #sharp:I
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/Camera$Parameters;->isVideoStabilizationSupported()Z

    move-result v14

    .line 2089
    goto/16 :goto_1

    .line 2091
    :pswitch_19
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get microphone capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2093
    :pswitch_1a
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get audio mode capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2095
    :pswitch_1b
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot time lapse capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2097
    :pswitch_1c
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get live effect capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2099
    :pswitch_1d
    const/4 v14, 0x1

    .line 2100
    goto/16 :goto_1

    .line 2106
    :pswitch_1e
    const/4 v14, 0x1

    .line 2107
    goto/16 :goto_1

    .line 2109
    :pswitch_1f
    const/4 v14, 0x1

    .line 2110
    goto/16 :goto_1

    .line 2112
    :pswitch_20
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get voice capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2114
    :pswitch_21
    new-instance v17, Lcom/android/camera/CameraSettingException;

    const-string v18, "Cannot get fd capability."

    invoke-direct/range {v17 .. v18}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 2116
    :pswitch_22
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 2120
    :cond_2
    move-object/from16 v0, p2

    invoke-interface {v15, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v17

    if-ltz v17, :cond_3

    const/4 v14, 0x1

    goto/16 :goto_2

    :cond_3
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 1998
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_e
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1f
        :pswitch_20
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_1e
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_21
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
    .end packed-switch
.end method

.method public static isSupported(Ljava/lang/Object;Ljava/util/List;)Z
    .locals 2
    .parameter "value"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, supported:Ljava/util/List;,"Ljava/util/List<*>;"
    const/4 v0, 0x0

    .line 1941
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVideoCameraMode(I)Z
    .locals 5
    .parameter "state"

    .prologue
    const/16 v3, 0x28

    .line 999
    const/4 v0, 0x0

    .line 1000
    .local v0, value:Ljava/lang/String;
    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1001
    .local v1, videoValue:Ljava/lang/String;
    packed-switch p0, :pswitch_data_0

    .line 1011
    :goto_0
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCameraVideoMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1012
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 1003
    :pswitch_0
    sget-object v2, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v2, v2, v3

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1004
    goto :goto_0

    .line 1006
    :pswitch_1
    sget-object v2, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v2, v2, v3

    const/4 v3, 0x1

    aget-object v0, v2, v3

    .line 1007
    goto :goto_0

    .line 1001
    :pswitch_data_0
    .packed-switch 0x12c
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static isVideoMode(I)Z
    .locals 7
    .parameter "mode"

    .prologue
    const/16 v5, 0x2b

    .line 984
    sget-object v4, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    aget-object v4, v4, v5

    aget v1, v4, p0

    .line 985
    .local v1, state:I
    rem-int/lit8 v0, v1, 0x64

    .line 986
    .local v0, column:I
    sget-object v4, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v4, v4, v5

    aget-object v2, v4, v0

    .line 987
    .local v2, value:Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 988
    .local v3, video:Z
    const-string v4, "SettingChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isVideoMode("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ") return "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    return v3
.end method

.method public static isZoomEnable(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 972
    sget-object v0, Lcom/android/camera/SettingChecker;->MATRIX_ZOOM_ENABLE:[Z

    aget-boolean v0, v0, p0

    return v0
.end method

.method private varargs overrideSettings([Ljava/lang/String;)V
    .locals 7
    .parameter "keyvalues"

    .prologue
    .line 2294
    if-eqz p1, :cond_0

    array-length v4, p1

    const/4 v5, 0x2

    if-ge v4, v5, :cond_1

    .line 2306
    :cond_0
    return-void

    .line 2297
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_0

    .line 2298
    aget-object v1, p1, v0

    .line 2299
    .local v1, key:Ljava/lang/String;
    add-int/lit8 v4, v0, 0x1

    aget-object v3, p1, v4

    .line 2300
    .local v3, value:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4, v1}, Lcom/android/camera/Camera;->getListPreference(Ljava/lang/String;)Lcom/android/camera/ListPreference;

    move-result-object v2

    .line 2301
    .local v2, pref:Lcom/android/camera/ListPreference;
    if-eqz v2, :cond_2

    .line 2302
    invoke-virtual {v2, v3}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;)V

    .line 2303
    const-string v4, "SettingChecker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "overrideSettings() key="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2297
    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0
.end method

.method private resetSettings(Lcom/android/camera/ComboPreferences;)V
    .locals 8
    .parameter "preferences"

    .prologue
    .line 2335
    invoke-virtual {p1}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2336
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2337
    const/4 v1, 0x0

    .local v1, i:I
    sget-object v5, Lcom/android/camera/SettingChecker;->RESET_SETTING_ITEMS:[I

    array-length v3, v5

    .local v3, len:I
    :goto_0
    if-ge v1, v3, :cond_1

    .line 2338
    sget-object v5, Lcom/android/camera/SettingChecker;->RESET_SETTING_ITEMS:[I

    aget v4, v5, v1

    .line 2339
    .local v4, row:I
    sget-object v5, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v5, v4

    .line 2340
    .local v2, key:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2341
    const-string v5, "SettingChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetSettings() remove key["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2337
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2344
    .end local v1           #i:I
    .end local v2           #key:Ljava/lang/String;
    .end local v3           #len:I
    .end local v4           #row:I
    :cond_0
    const/4 v1, 0x0

    .restart local v1       #i:I
    sget-object v5, Lcom/android/camera/SettingChecker;->THIRDPART_RESET_SETTING_ITEMS:[I

    array-length v3, v5

    .restart local v3       #len:I
    :goto_1
    if-ge v1, v3, :cond_1

    .line 2345
    sget-object v5, Lcom/android/camera/SettingChecker;->THIRDPART_RESET_SETTING_ITEMS:[I

    aget v4, v5, v1

    .line 2346
    .restart local v4       #row:I
    sget-object v5, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v5, v4

    .line 2347
    .restart local v2       #key:Ljava/lang/String;
    invoke-interface {v0, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2348
    const-string v5, "SettingChecker"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "resetSettings() remove key["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2344
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2352
    .end local v2           #key:Ljava/lang/String;
    .end local v4           #row:I
    :cond_1
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2353
    return-void
.end method

.method private static reviseVideoCapability(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V
    .locals 7
    .parameter "context"
    .parameter "preferences"
    .parameter "parameters"
    .parameter "profile"

    .prologue
    const/4 v6, 0x3

    .line 1911
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reviseVideoCapability() begin profile.videoFrameRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1913
    invoke-virtual {p2}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v2

    .line 1914
    .local v2, supportedFrameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget v3, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/android/camera/SettingChecker;->isSupported(Ljava/lang/Object;Ljava/util/List;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1915
    invoke-static {v2}, Lcom/android/camera/SettingChecker;->getMaxSupportedPreviewFrameRate(Ljava/util/List;)I

    move-result v0

    .line 1916
    .local v0, maxFrame:I
    iget v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    mul-int/2addr v3, v0

    iget v4, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/2addr v3, v4

    iput v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1917
    iput v0, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1919
    .end local v0           #maxFrame:I
    :cond_0
    invoke-static {p0, p1, v6}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v1

    .line 1920
    .local v1, sceneMode:Ljava/lang/String;
    invoke-static {p2, v6, v1}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1921
    const-string v3, "night"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1922
    iget v3, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    .line 1923
    iget v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    div-int/lit8 v3, v3, 0x2

    iput v3, p3, Landroid/media/CamcorderProfile;->videoBitRate:I

    .line 1926
    :cond_1
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reviseVideoCapability() end profile.videoFrameRate="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p3, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1927
    return-void
.end method

.method private static setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z
    .locals 9
    .parameter "context"
    .parameter "parameters"
    .parameter "row"
    .parameter "value"

    .prologue
    const/4 v5, 0x0

    .line 1571
    if-nez p1, :cond_0

    .line 1572
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setParameterValue("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") parameters=null!!!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/Throwable;

    invoke-direct {v8}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v6, v7, v8}, Lcom/android/camera/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1704
    .end local p0
    :goto_0
    return v5

    .line 1575
    .restart local p0
    :cond_0
    const/4 v3, 0x0

    .line 1576
    .local v3, needreload:Z
    sget-object v6, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v2, v6, p2

    .line 1577
    .local v2, key:Ljava/lang/String;
    packed-switch p2, :pswitch_data_0

    .line 1703
    .end local p0
    :cond_1
    :goto_1
    :pswitch_0
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setParameterValue("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ") return "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v3

    .line 1704
    goto :goto_0

    .line 1579
    .restart local p0
    :pswitch_1
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setFlashMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1582
    :pswitch_2
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set dual camera to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1584
    :pswitch_3
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 1585
    .local v0, exposure:I
    invoke-virtual {p1, v0}, Landroid/hardware/Camera$Parameters;->setExposureCompensation(I)V

    goto :goto_1

    .line 1588
    .end local v0           #exposure:I
    :pswitch_4
    invoke-virtual {p1}, Landroid/hardware/Camera$Parameters;->getSceneMode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 1589
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setSceneMode(Ljava/lang/String;)V

    .line 1593
    const/4 v3, 0x1

    goto :goto_1

    .line 1597
    :pswitch_5
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setWhiteBalance(Ljava/lang/String;)V

    goto :goto_1

    .line 1600
    :pswitch_6
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set total image adjustement, Please use Hue, Contrast, Edge, staturation and Brightness."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1603
    :pswitch_7
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setHueMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1606
    :pswitch_8
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setContrastMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1609
    :pswitch_9
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setEdgeMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1612
    :pswitch_a
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setSaturationMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1615
    :pswitch_b
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setBrightnessMode(Ljava/lang/String;)V

    goto :goto_1

    .line 1618
    :pswitch_c
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setColorEffect(Ljava/lang/String;)V

    goto :goto_1

    .line 1621
    :pswitch_d
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set geo tag to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1626
    :pswitch_e
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    goto :goto_1

    .line 1629
    :pswitch_f
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set self timer to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1631
    :pswitch_10
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setZSDMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1634
    :pswitch_11
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Please use ROW_SETTING_CONTINUOUS_NUM to set shot number."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1636
    :pswitch_12
    invoke-static {p0, p1, p3}, Lcom/android/camera/SettingChecker;->setPicturePreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1639
    :pswitch_13
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setISOSpeed(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1642
    :pswitch_14
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set total facebeauty adjustement, Please use Smooth, SkinColor and Sharp."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1645
    :pswitch_15
    const-string v6, "fb-smooth-level"

    invoke-virtual {p1, v6, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1648
    :pswitch_16
    const-string v6, "fb-skin-color"

    invoke-virtual {p1, v6, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1651
    :pswitch_17
    const-string v6, "fb-sharp"

    invoke-virtual {p1, v6, p3}, Landroid/hardware/Camera$Parameters;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1654
    :pswitch_18
    check-cast p0, Lcom/android/camera/Camera;

    .end local p0
    invoke-virtual {p0}, Lcom/android/camera/Camera;->getCameraActor()Lcom/android/camera/actor/CameraActor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v6

    const/16 v7, 0x8

    if-ne v6, v7, :cond_2

    .line 1656
    const-string p3, "off"

    .line 1658
    :cond_2
    const-string v6, "on"

    invoke-virtual {v6, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v5, 0x1

    .line 1659
    .local v5, toggle:Z
    :cond_3
    invoke-virtual {p1, v5}, Landroid/hardware/Camera$Parameters;->setVideoStabilization(Z)V

    goto/16 :goto_1

    .line 1662
    .end local v5           #toggle:Z
    .restart local p0
    :pswitch_19
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set microphone to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1664
    :pswitch_1a
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set audio mode to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1666
    :pswitch_1b
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set timelapse to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1668
    :pswitch_1c
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set live effect to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1670
    :pswitch_1d
    invoke-static {p0, p1, p3}, Lcom/android/camera/SettingChecker;->setVideoPreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1673
    :pswitch_1e
    invoke-static {p3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setRecordingHint(Z)V

    goto/16 :goto_1

    .line 1676
    :pswitch_1f
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->setCaptureMode(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1679
    :pswitch_20
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 1680
    .local v4, number:I
    invoke-virtual {p1, v4}, Landroid/hardware/Camera$Parameters;->setBurstShotNum(I)V

    goto/16 :goto_1

    .line 1684
    .end local v4           #number:I
    :pswitch_21
    const/16 v1, 0x64

    .line 1685
    .local v1, jpegQuality:I
    invoke-virtual {p1, v1}, Landroid/hardware/Camera$Parameters;->setJpegQuality(I)V

    goto/16 :goto_1

    .line 1688
    .end local v1           #jpegQuality:I
    :pswitch_22
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/hardware/Camera$Parameters;->setCameraMode(I)V

    goto/16 :goto_1

    .line 1691
    :pswitch_23
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set picture ratiot to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1693
    :pswitch_24
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set voice to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1695
    :pswitch_25
    new-instance v6, Lcom/android/camera/CameraSettingException;

    const-string v7, "Cannot set face detection to parameters."

    invoke-direct {v6, v7}, Lcom/android/camera/CameraSettingException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1697
    :pswitch_26
    const-string v6, "SettingChecker"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "enableRecordingSound value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1698
    invoke-virtual {p1, p3}, Landroid/hardware/Camera$Parameters;->enableRecordingSound(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 1577
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_c
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_d
        :pswitch_12
        :pswitch_13
        :pswitch_0
        :pswitch_e
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_23
        :pswitch_24
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_7
        :pswitch_a
        :pswitch_b
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_22
        :pswitch_1f
        :pswitch_20
        :pswitch_1e
        :pswitch_21
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_25
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_26
    .end packed-switch
.end method

.method private static setPicturePreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 18
    .parameter "context"
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 1715
    const-string v7, "SettingChecker"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "setPicturePreview("

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v16, ")"

    move-object/from16 v0, v16

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    .line 1716
    check-cast v3, Lcom/android/camera/Camera;

    .line 1717
    .local v3, camera:Lcom/android/camera/Camera;
    if-nez p2, :cond_3

    .line 1718
    invoke-static/range {p0 .. p1}, Lcom/android/camera/CameraSettings;->initialCameraPictureSize(Landroid/content/Context;Landroid/hardware/Camera$Parameters;)V

    .line 1726
    :goto_0
    const-string v7, "1.3333"

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 1727
    .local v5, previewRatio:D
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v7

    const/16 v8, 0x15

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "1.3333"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1729
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    .line 1730
    .local v11, metrics:Landroid/util/DisplayMetrics;
    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v8, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    if-le v7, v8, :cond_4

    .line 1731
    iget v7, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v7, v7

    iget v0, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v5, v7, v16

    .line 1738
    .end local v11           #metrics:Landroid/util/DisplayMetrics;
    :cond_0
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v4

    .line 1739
    .local v4, sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v3 .. v8}, Lcom/android/camera/Util;->getOptimalPreviewSize(Landroid/app/Activity;Ljava/util/List;DZZ)Landroid/hardware/Camera$Size;

    move-result-object v12

    .line 1741
    .local v12, optimalSize:Landroid/hardware/Camera$Size;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v13

    .line 1742
    .local v13, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v13, v12}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 1743
    iget v7, v12, Landroid/hardware/Camera$Size;->width:I

    iget v8, v12, Landroid/hardware/Camera$Size;->height:I

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v8}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1754
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFrameRates()Ljava/util/List;

    move-result-object v9

    .line 1755
    .local v9, frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v9, :cond_2

    .line 1756
    invoke-static {v9}, Ljava/util/Collections;->max(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    .line 1757
    .local v10, max:Ljava/lang/Integer;
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v7

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1759
    .end local v10           #max:Ljava/lang/Integer;
    :cond_2
    return-void

    .line 1720
    .end local v4           #sizes:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v5           #previewRatio:D
    .end local v9           #frameRates:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v12           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v13           #original:Landroid/hardware/Camera$Size;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v14

    .line 1721
    .local v14, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v7

    const/16 v8, 0x15

    move-object/from16 v0, p0

    invoke-static {v0, v7, v8}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v15

    .line 1723
    .local v15, targetRatio:Ljava/lang/String;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    move-object/from16 v2, p0

    invoke-static {v0, v14, v1, v15, v2}, Lcom/android/camera/CameraSettings;->setCameraPictureSize(Ljava/lang/String;Ljava/util/List;Landroid/hardware/Camera$Parameters;Ljava/lang/String;Landroid/content/Context;)Z

    goto/16 :goto_0

    .line 1733
    .end local v14           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    .end local v15           #targetRatio:Ljava/lang/String;
    .restart local v5       #previewRatio:D
    .restart local v11       #metrics:Landroid/util/DisplayMetrics;
    :cond_4
    iget v7, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v7, v7

    iget v0, v11, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v16, v0

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v5, v7, v16

    goto :goto_1
.end method

.method private static setVideoPreview(Landroid/content/Context;Landroid/hardware/Camera$Parameters;Ljava/lang/String;)V
    .locals 31
    .parameter "context"
    .parameter "parameters"
    .parameter "value"

    .prologue
    .line 1762
    move-object/from16 v3, p0

    check-cast v3, Lcom/android/camera/Camera;

    .line 1763
    .local v3, camera:Lcom/android/camera/Camera;
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v4

    .line 1764
    .local v4, cameraId:I
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v11

    .line 1765
    .local v11, mPreferences:Lcom/android/camera/ComboPreferences;
    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 1769
    .local v10, intent:Landroid/content/Intent;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    const v28, 0x7f0c0132

    invoke-virtual/range {v27 .. v28}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-static {v4, v0}, Lcom/android/camera/CameraSettings;->getDefaultVideoQuality(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1771
    .local v5, defaultQuality:Ljava/lang/String;
    const-string v27, "pref_video_quality_key"

    move-object/from16 v0, v27

    invoke-virtual {v11, v0, v5}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1772
    .local v25, videoQuality:Ljava/lang/String;
    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v19

    .line 1775
    .local v19, quality:I
    const-string v27, "android.intent.extra.videoQuality"

    move-object/from16 v0, v27

    invoke-virtual {v10, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v24

    .line 1776
    .local v24, userLimitQuality:Z
    if-eqz v24, :cond_0

    .line 1777
    const-string v27, "android.intent.extra.videoQuality"

    const/16 v28, 0x0

    move-object/from16 v0, v27

    move/from16 v1, v28

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    .line 1778
    .local v6, extraVideoQuality:I
    if-lez v6, :cond_8

    .line 1779
    invoke-static {v4, v6}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v27

    if-eqz v27, :cond_6

    .line 1780
    move/from16 v19, v6

    .line 1794
    .end local v6           #extraVideoQuality:I
    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/camera/Camera;->effectsActive()Z

    move-result v27

    if-eqz v27, :cond_1

    .line 1796
    if-nez v24, :cond_1

    .line 1797
    const/16 v27, 0x10

    move/from16 v0, v27

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v27

    if-eqz v27, :cond_9

    .line 1798
    const/16 v19, 0x10

    .line 1810
    :cond_1
    :goto_1
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCameraActor()Lcom/android/camera/actor/CameraActor;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Lcom/android/camera/actor/CameraActor;->getMode()I

    move-result v27

    const/16 v28, 0x8

    move/from16 v0, v27

    move/from16 v1, v28

    if-ne v0, v1, :cond_3

    .line 1811
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    .line 1812
    .local v12, metrics:Landroid/util/DisplayMetrics;
    invoke-virtual {v3}, Lcom/android/camera/Camera;->getSettingChecker()Lcom/android/camera/SettingChecker;

    move-result-object v27

    const/16 v28, 0x14

    invoke-virtual/range {v27 .. v28}, Lcom/android/camera/SettingChecker;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v26

    .line 1814
    .local v26, videoqualityPreference:Lcom/android/camera/ListPreference;
    const v13, 0x7fffffff

    .line 1815
    .local v13, minDiff:I
    iget v0, v12, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v27, v0

    iget v0, v12, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v28, v0

    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->min(II)I

    move-result v8

    .line 1816
    .local v8, height:I
    move/from16 v20, v19

    .line 1817
    .local v20, resultQuality:I
    if-eqz v26, :cond_2

    .line 1818
    invoke-virtual/range {v26 .. v26}, Lcom/android/camera/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v22

    .line 1819
    .local v22, supportedVideoQualitys:[Ljava/lang/CharSequence;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_2
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    if-ge v9, v0, :cond_2

    .line 1820
    aget-object v27, v22, v9

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v27 .. v27}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Integer;->intValue()I

    move-result v23

    .line 1821
    .local v23, tempQuality:I
    const/16 v27, 0x0

    move/from16 v0, v23

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/Camera;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v18

    .line 1823
    .local v18, profile:Landroid/media/CamcorderProfile;
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    move/from16 v27, v0

    const/16 v28, 0x500

    move/from16 v0, v27

    move/from16 v1, v28

    if-le v0, v1, :cond_b

    .line 1835
    .end local v9           #i:I
    .end local v18           #profile:Landroid/media/CamcorderProfile;
    .end local v22           #supportedVideoQualitys:[Ljava/lang/CharSequence;
    .end local v23           #tempQuality:I
    :cond_2
    move/from16 v19, v20

    .line 1836
    const-string v27, "SettingChecker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "live photo find quality : "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    .end local v8           #height:I
    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    .end local v13           #minDiff:I
    .end local v20           #resultQuality:I
    .end local v26           #videoqualityPreference:Lcom/android/camera/ListPreference;
    :cond_3
    const/16 v27, 0x12

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-static {v0, v11, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v7

    .line 1841
    .local v7, frameIntervalStr:Ljava/lang/String;
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v27

    move/from16 v0, v19

    move/from16 v1, v27

    invoke-virtual {v3, v0, v1}, Lcom/android/camera/Camera;->fetchProfile(II)Landroid/media/CamcorderProfile;

    move-result-object v18

    .line 1843
    .restart local v18       #profile:Landroid/media/CamcorderProfile;
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lcom/android/camera/SettingChecker;->computeDesiredPreviewSize(Lcom/android/camera/Camera;Landroid/media/CamcorderProfile;Landroid/hardware/Camera$Parameters;)Landroid/graphics/Point;

    move-result-object v17

    .line 1844
    .local v17, previewSize:Landroid/graphics/Point;
    new-instance v16, Landroid/graphics/Point;

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v27

    move-object/from16 v0, v27

    iget v0, v0, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPreviewSize()Landroid/hardware/Camera$Size;

    move-result-object v28

    move-object/from16 v0, v28

    iget v0, v0, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    move-object/from16 v0, v16

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    .line 1845
    .local v16, originalPreviewSize:Landroid/graphics/Point;
    invoke-virtual/range {v16 .. v17}, Landroid/graphics/Point;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_4

    .line 1846
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 1855
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v18

    invoke-static {v0, v11, v1, v2}, Lcom/android/camera/SettingChecker;->reviseVideoCapability(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;Landroid/media/CamcorderProfile;)V

    .line 1856
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    move/from16 v27, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Landroid/hardware/Camera$Parameters;->setPreviewFrameRate(I)V

    .line 1862
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->isVideoSnapshotSupported()Z

    move-result v27

    if-eqz v27, :cond_d

    .line 1863
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v21

    .line 1864
    .local v21, supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    div-double v27, v27, v29

    move-object/from16 v0, v21

    move-wide/from16 v1, v27

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->getOptimalVideoSnapshotPictureSize(Ljava/util/List;D)Landroid/hardware/Camera$Size;

    move-result-object v14

    .line 1866
    .local v14, optimalSize:Landroid/hardware/Camera$Size;
    invoke-virtual/range {p1 .. p1}, Landroid/hardware/Camera$Parameters;->getPictureSize()Landroid/hardware/Camera$Size;

    move-result-object v15

    .line 1867
    .local v15, original:Landroid/hardware/Camera$Size;
    invoke-virtual {v15, v14}, Landroid/hardware/Camera$Size;->equals(Ljava/lang/Object;)Z

    move-result v27

    if-nez v27, :cond_5

    .line 1868
    iget v0, v14, Landroid/hardware/Camera$Size;->width:I

    move/from16 v27, v0

    iget v0, v14, Landroid/hardware/Camera$Size;->height:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 1873
    .end local v14           #optimalSize:Landroid/hardware/Camera$Size;
    .end local v15           #original:Landroid/hardware/Camera$Size;
    .end local v21           #supported:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    :cond_5
    :goto_3
    return-void

    .line 1782
    .end local v7           #frameIntervalStr:Ljava/lang/String;
    .end local v16           #originalPreviewSize:Landroid/graphics/Point;
    .end local v17           #previewSize:Landroid/graphics/Point;
    .end local v18           #profile:Landroid/media/CamcorderProfile;
    .restart local v6       #extraVideoQuality:I
    :cond_6
    const/16 v27, 0x9

    move/from16 v0, v27

    invoke-static {v4, v0}, Landroid/media/CamcorderProfile;->hasProfile(II)Z

    move-result v27

    if-eqz v27, :cond_7

    .line 1783
    const/16 v19, 0x9

    goto/16 :goto_0

    .line 1785
    :cond_7
    const/16 v19, 0xa

    goto/16 :goto_0

    .line 1789
    :cond_8
    const/16 v19, 0x0

    goto/16 :goto_0

    .line 1800
    .end local v6           #extraVideoQuality:I
    :cond_9
    if-nez v4, :cond_a

    .line 1801
    const/16 v19, 0x9

    goto/16 :goto_1

    .line 1803
    :cond_a
    const/16 v19, 0xa

    goto/16 :goto_1

    .line 1826
    .restart local v8       #height:I
    .restart local v9       #i:I
    .restart local v12       #metrics:Landroid/util/DisplayMetrics;
    .restart local v13       #minDiff:I
    .restart local v18       #profile:Landroid/media/CamcorderProfile;
    .restart local v20       #resultQuality:I
    .restart local v22       #supportedVideoQualitys:[Ljava/lang/CharSequence;
    .restart local v23       #tempQuality:I
    .restart local v26       #videoqualityPreference:Lcom/android/camera/ListPreference;
    :cond_b
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v27, v0

    sub-int v27, v27, v8

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v27

    move/from16 v0, v27

    if-ge v0, v13, :cond_c

    .line 1827
    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v27, v0

    sub-int v27, v27, v8

    invoke-static/range {v27 .. v27}, Ljava/lang/Math;->abs(I)I

    move-result v13

    .line 1828
    move/from16 v20, v23

    .line 1829
    const-string v27, "SettingChecker"

    new-instance v28, Ljava/lang/StringBuilder;

    invoke-direct/range {v28 .. v28}, Ljava/lang/StringBuilder;-><init>()V

    const-string v29, "live photo find profile.videoFrameHeight = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v18

    iget v0, v0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    move/from16 v29, v0

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " height = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " tempQuality = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    const-string v29, " minDiff = "

    invoke-virtual/range {v28 .. v29}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v28

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    invoke-static/range {v27 .. v28}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1819
    :cond_c
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_2

    .line 1871
    .end local v8           #height:I
    .end local v9           #i:I
    .end local v12           #metrics:Landroid/util/DisplayMetrics;
    .end local v13           #minDiff:I
    .end local v20           #resultQuality:I
    .end local v22           #supportedVideoQualitys:[Ljava/lang/CharSequence;
    .end local v23           #tempQuality:I
    .end local v26           #videoqualityPreference:Lcom/android/camera/ListPreference;
    .restart local v7       #frameIntervalStr:Ljava/lang/String;
    .restart local v16       #originalPreviewSize:Landroid/graphics/Point;
    .restart local v17       #previewSize:Landroid/graphics/Point;
    :cond_d
    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->x:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/graphics/Point;->y:I

    move/from16 v28, v0

    move-object/from16 v0, p1

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v1, v2}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    goto/16 :goto_3
.end method


# virtual methods
.method public applyFocusCapabilities(Z)V
    .locals 3
    .parameter "setArea"

    .prologue
    .line 2174
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    .line 2175
    .local v0, focusManager:Lcom/android/camera/FocusManager;
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAeLockSupported()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2176
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAeLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAutoExposureLock(Z)V

    .line 2178
    :cond_0
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAwbLockSupported()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2179
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getAwbLock()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setAutoWhiteBalanceLock(Z)V

    .line 2181
    :cond_1
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusAreaSupported()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    .line 2182
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusAreas(Ljava/util/List;)V

    .line 2184
    :cond_2
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreaSupported()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 2186
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getMeteringAreas()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setMeteringAreas(Ljava/util/List;)V

    .line 2189
    :cond_3
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCameraActor()Lcom/android/camera/actor/CameraActor;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/actor/CameraActor;->handleFocus()Z

    .line 2190
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2192
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->applyContinousCallback()V

    .line 2193
    return-void
.end method

.method public applyLimitToParameters()V
    .locals 4

    .prologue
    .line 2418
    const-string v0, "SettingChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyLimitToParameters() mContext.getParameters()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2420
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->isImageCaptureIntent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2421
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    const/16 v2, 0x8

    const-string v3, "off"

    invoke-static {v0, v1, v2, v3}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    .line 2423
    :cond_0
    return-void
.end method

.method public applyParametersToUI()V
    .locals 8

    .prologue
    .line 2250
    const-string v5, "SettingChecker"

    const-string v6, "applyParametersToUI()"

    invoke-static {v5, v6}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2251
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v4

    .line 2252
    .local v4, preferences:Lcom/android/camera/ComboPreferences;
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    .line 2253
    .local v3, mode:I
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SETTING:[I

    .line 2254
    .local v0, appliedGroup:[I
    invoke-direct {p0, v0}, Lcom/android/camera/SettingChecker;->clearOverrideSettings([I)V

    .line 2255
    invoke-static {v3, v0}, Lcom/android/camera/SettingChecker;->getModeTableKeyValues(I[I)[Ljava/lang/String;

    move-result-object v1

    .line 2256
    .local v1, keyvalues:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2257
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/camera/SettingChecker;->getSceneTableKeyValues(Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 2258
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2259
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v6, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v5, v4, v6, v0}, Lcom/android/camera/SettingChecker;->getRestrictionsKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 2260
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2261
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v6, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v5, v4, v6, v0, v3}, Lcom/android/camera/SettingChecker;->getCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)[Ljava/lang/String;

    move-result-object v1

    .line 2262
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2263
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/ActivityBase;->isSecureCamera()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2265
    sget-object v5, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v5, v5, v6

    const-string v6, "off"

    invoke-static {v5, v6}, Lcom/android/camera/SettingChecker;->buildPreferenceKeyValue(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2268
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2272
    :cond_0
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getWfdManagerLocal()Lcom/android/camera/WfdManagerLocal;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/WfdManagerLocal;->isWfdEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2273
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    .line 2274
    .local v2, mPreferences:Lcom/android/camera/ComboPreferences;
    sget-object v5, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v5, v5, v6

    const-string v6, "pref_camera_shot_number"

    const-string v7, "10"

    invoke-virtual {v2, v6, v7}, Lcom/android/camera/ComboPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/camera/SettingChecker;->buildPreferenceKeyValue(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2278
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2280
    .end local v2           #mPreferences:Lcom/android/camera/ComboPreferences;
    :cond_1
    return-void
.end method

.method public applyParametersToUIImmediately()V
    .locals 7

    .prologue
    .line 2216
    const-string v5, "SettingChecker"

    const-string v6, "applyParametersToUIImmediately()"

    invoke-static {v5, v6}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2217
    sget-object v0, Lcom/android/camera/SettingChecker;->SETTING_GROUP_ALL_IN_SCREEN:[I

    .line 2218
    .local v0, appliedGroup:[I
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v4

    .line 2219
    .local v4, preferences:Lcom/android/camera/ComboPreferences;
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v2

    .line 2220
    .local v2, mode:I
    invoke-direct {p0, v0}, Lcom/android/camera/SettingChecker;->clearOverrideSettings([I)V

    .line 2221
    invoke-static {v2, v0}, Lcom/android/camera/SettingChecker;->getModeTableKeyValues(I[I)[Ljava/lang/String;

    move-result-object v1

    .line 2222
    .local v1, keyvalues:[Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2223
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/camera/SettingChecker;->getSceneTableKeyValues(Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 2224
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2225
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v6, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v5, v4, v6, v0}, Lcom/android/camera/SettingChecker;->getRestrictionsKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)[Ljava/lang/String;

    move-result-object v1

    .line 2226
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2227
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v6, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v6}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v6

    invoke-static {v5, v4, v6, v0, v2}, Lcom/android/camera/SettingChecker;->getCapabilityKeyValues(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)[Ljava/lang/String;

    move-result-object v1

    .line 2228
    invoke-direct {p0, v1}, Lcom/android/camera/SettingChecker;->overrideSettings([Ljava/lang/String;)V

    .line 2231
    sget-boolean v5, Lcom/android/camera/Camera;->mPowerLow:Z

    if-eqz v5, :cond_0

    .line 2232
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/camera/Camera;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v3

    .line 2233
    .local v3, pref:Lcom/android/camera/ListPreference;
    if-eqz v3, :cond_0

    .line 2234
    const-string v5, "off"

    invoke-virtual {v3, v5}, Lcom/android/camera/ListPreference;->setOverrideValue(Ljava/lang/String;)V

    .line 2238
    .end local v3           #pref:Lcom/android/camera/ListPreference;
    :cond_0
    iget-object v5, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    new-instance v6, Lcom/android/camera/SettingChecker$1;

    invoke-direct {v6, p0}, Lcom/android/camera/SettingChecker$1;-><init>(Lcom/android/camera/SettingChecker;)V

    invoke-virtual {v5, v6}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 2247
    return-void
.end method

.method public applyPreferenceToParameters()V
    .locals 5

    .prologue
    .line 2197
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    .line 2198
    .local v2, preferences:Lcom/android/camera/ComboPreferences;
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v1

    .line 2199
    .local v1, mode:I
    invoke-static {v1}, Lcom/android/camera/SettingChecker;->getModeSettingGroupForParameters(I)[I

    move-result-object v0

    .line 2201
    .local v0, appliedGroup:[I
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v2, v4, v0, v1}, Lcom/android/camera/SettingChecker;->applyPreferenceToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V

    .line 2203
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v2, v4, v0, v1}, Lcom/android/camera/SettingChecker;->applyModeTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[II)V

    .line 2205
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v2, v4, v0}, Lcom/android/camera/SettingChecker;->applySceneTableToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;[I)V

    .line 2207
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/camera/SettingChecker;->applyRestrictionsToParameters(Landroid/content/Context;Landroid/hardware/Camera$Parameters;[I)V

    .line 2209
    invoke-virtual {p0}, Lcom/android/camera/SettingChecker;->applyLimitToParameters()V

    .line 2211
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/camera/SettingChecker;->applyFocusCapabilities(Z)V

    .line 2212
    return-void
.end method

.method public applyValueToParameters(ILjava/lang/String;)V
    .locals 6
    .parameter "row"
    .parameter "value"

    .prologue
    .line 2498
    const-string v0, "SettingChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "applyValueToParameters("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2499
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/camera/SettingChecker;->applyValueToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;IILjava/lang/String;)Landroid/hardware/Camera$Parameters;

    .line 2501
    return-void
.end method

.method public declared-synchronized clearListPreference()V
    .locals 4

    .prologue
    .line 2166
    monitor-enter p0

    :try_start_0
    const-string v2, "SettingChecker"

    const-string v3, "clearListPreference()"

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2167
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mListPrefs:[Lcom/android/camera/ListPreference;

    array-length v1, v2

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2168
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mListPrefs:[Lcom/android/camera/ListPreference;

    const/4 v3, 0x0

    aput-object v3, v2, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2170
    :cond_0
    monitor-exit p0

    return-void

    .line 2166
    .end local v0           #i:I
    .end local v1           #len:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public clearOverrideValues()V
    .locals 4

    .prologue
    .line 2135
    const/4 v0, 0x0

    .local v0, i:I
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    array-length v1, v2

    .local v1, len:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 2136
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v3, v2, v0

    .line 2135
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2138
    :cond_0
    return-void
.end method

.method public disableContinuousShot()V
    .locals 3

    .prologue
    const/16 v2, 0x2a

    .line 2386
    sget-object v0, Lcom/android/camera/SettingChecker;->RESET_STATE_VALUE:[[Ljava/lang/String;

    aget-object v0, v0, v2

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v2, v0}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 2387
    const/16 v0, 0x29

    const-string v1, "normal"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 2388
    return-void
.end method

.method public enableContinuousShot()V
    .locals 2

    .prologue
    .line 2380
    const/16 v0, 0x2a

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 2381
    const/16 v0, 0x29

    const-string v1, "continuousshot"

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/SettingChecker;->applyValueToParameters(ILjava/lang/String;)V

    .line 2382
    return-void
.end method

.method public getDefaultValue(I)Ljava/lang/String;
    .locals 4
    .parameter "row"

    .prologue
    .line 2492
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-static {v1, p1}, Lcom/android/camera/SettingChecker;->getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 2493
    .local v0, value:Ljava/lang/String;
    const-string v1, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2494
    return-object v0
.end method

.method public declared-synchronized getListPreference(I)Lcom/android/camera/ListPreference;
    .locals 1
    .parameter "row"

    .prologue
    .line 2162
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mListPrefs:[Lcom/android/camera/ListPreference;

    aget-object v0, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getOverrideSettingValue(I)Ljava/lang/String;
    .locals 3
    .parameter "row"

    .prologue
    .line 2504
    const-string v0, "SettingChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getOverrideSettingValue("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2505
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 2506
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    aget-object v0, v0, p1

    .line 2508
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOverrideValues(I)Ljava/lang/String;
    .locals 4
    .parameter "row"

    .prologue
    .line 2141
    const/4 v0, 0x0

    .line 2142
    .local v0, value:Ljava/lang/String;
    if-ltz p1, :cond_0

    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    array-length v1, v1

    if-gt p1, v1, :cond_0

    .line 2143
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    aget-object v0, v1, p1

    .line 2145
    :cond_0
    const-string v1, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOverrideValues("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2146
    return-object v0
.end method

.method public getParameterValue(I)Ljava/lang/String;
    .locals 1
    .parameter "row"

    .prologue
    .line 2453
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/camera/SettingChecker;->getParameterValue(Landroid/hardware/Camera$Parameters;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceValue(I)Ljava/lang/String;
    .locals 4
    .parameter "row"

    .prologue
    .line 2457
    const/4 v0, 0x0

    .line 2459
    .local v0, value:Ljava/lang/String;
    const/16 v1, 0x16

    if-ne p1, v1, :cond_0

    .line 2460
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getVoiceManager()Lcom/android/camera/VoiceManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/VoiceManager;->getVoiceValue()Ljava/lang/String;

    move-result-object v0

    .line 2464
    :goto_0
    const-string v1, "SettingChecker"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPreferenceValue("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") return "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    return-object v0

    .line 2462
    :cond_0
    iget-object v1, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    invoke-static {v1, v2, p1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getSettingCurrentValue(I)Ljava/lang/String;
    .locals 5
    .parameter "row"

    .prologue
    .line 2469
    const/4 v1, 0x0

    .line 2471
    .local v1, value:Ljava/lang/String;
    const/16 v2, 0x16

    if-ne p1, v2, :cond_1

    .line 2472
    sget-object v2, Lcom/android/camera/SettingChecker;->MATRIX_MODE_STATE:[[I

    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/android/camera/SettingChecker;->getMatrixValue([[III)Ljava/lang/String;

    move-result-object v1

    .line 2473
    if-nez v1, :cond_0

    .line 2474
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getVoiceManager()Lcom/android/camera/VoiceManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/VoiceManager;->getVoiceValue()Ljava/lang/String;

    move-result-object v1

    .line 2487
    :cond_0
    :goto_0
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSettingCurrentValue("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") return "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2488
    return-object v1

    .line 2477
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/SettingChecker;->getListPreference(I)Lcom/android/camera/ListPreference;

    move-result-object v0

    .line 2478
    .local v0, pref:Lcom/android/camera/ListPreference;
    if-nez v0, :cond_3

    .line 2479
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-static {v2, p1}, Lcom/android/camera/SettingChecker;->getDefaultValueFromXml(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 2483
    :cond_2
    :goto_1
    if-nez v1, :cond_0

    .line 2484
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v3

    invoke-static {v2, v3, p1}, Lcom/android/camera/SettingChecker;->getPreferenceValue(Landroid/content/Context;Lcom/android/camera/ComboPreferences;I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 2480
    :cond_3
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 2481
    invoke-virtual {v0}, Lcom/android/camera/ListPreference;->getOverrideValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method public isParametersSupportedValue(ILjava/lang/String;)Z
    .locals 1
    .parameter "row"
    .parameter "value"

    .prologue
    .line 2449
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/camera/SettingChecker;->isParametersSupportedValue(Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public resetSettings()V
    .locals 14

    .prologue
    .line 2309
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 2310
    .local v6, start:J
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->getCameraId()I

    move-result v3

    .line 2311
    .local v3, curId:I
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v5

    .line 2312
    .local v5, preferences:Lcom/android/camera/ComboPreferences;
    if-eqz v5, :cond_2

    .line 2313
    invoke-direct {p0, v5}, Lcom/android/camera/SettingChecker;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    .line 2314
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2315
    .local v1, cameraIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v10}, Lcom/android/camera/Camera;->getCameraCount()I

    move-result v2

    .line 2316
    .local v2, count:I
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_0

    .line 2317
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v1, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2316
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2319
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-lez v10, :cond_1

    .line 2320
    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 2322
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 2323
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v2, :cond_2

    .line 2324
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2325
    .local v0, cameraId:I
    iget-object v10, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v5, v10, v0}, Lcom/android/camera/ComboPreferences;->setLocalId(Landroid/content/Context;I)V

    .line 2326
    invoke-direct {p0, v5}, Lcom/android/camera/SettingChecker;->resetSettings(Lcom/android/camera/ComboPreferences;)V

    .line 2327
    const-string v10, "SettingChecker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetSettings() reset cameraId="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2323
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 2330
    .end local v0           #cameraId:I
    .end local v1           #cameraIds:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2           #count:I
    .end local v4           #i:I
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 2331
    .local v8, stop:J
    const-string v10, "SettingChecker"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "resetSettings() consume:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    sub-long v12, v8, v6

    invoke-virtual {v11, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2332
    return-void
.end method

.method public resetSettingsForCameraid()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2357
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    .line 2358
    .local v2, preferences:Lcom/android/camera/ComboPreferences;
    if-eqz v2, :cond_0

    .line 2359
    invoke-virtual {v2}, Lcom/android/camera/ComboPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2360
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->isNonePickIntent()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2362
    sget-object v4, Lcom/android/camera/SettingChecker;->RESET_SETTING_ITEMS:[I

    aget v3, v4, v5

    .line 2363
    .local v3, row:I
    sget-object v4, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v1, v4, v3

    .line 2364
    .local v1, key:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 2371
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 2373
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #key:Ljava/lang/String;
    .end local v3           #row:I
    :cond_0
    return-void

    .line 2367
    .restart local v0       #editor:Landroid/content/SharedPreferences$Editor;
    :cond_1
    sget-object v4, Lcom/android/camera/SettingChecker;->THIRDPART_RESET_SETTING_ITEMS:[I

    aget v3, v4, v5

    .line 2368
    .restart local v3       #row:I
    sget-object v4, Lcom/android/camera/SettingChecker;->KEYS_FOR_SETTING:[Ljava/lang/String;

    aget-object v1, v4, v3

    .line 2369
    .restart local v1       #key:Ljava/lang/String;
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0
.end method

.method public declared-synchronized setListPreference(ILcom/android/camera/ListPreference;)V
    .locals 3
    .parameter "row"
    .parameter "pref"

    .prologue
    .line 2157
    monitor-enter p0

    :try_start_0
    const-string v0, "SettingChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setListPreference("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2158
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mListPrefs:[Lcom/android/camera/ListPreference;

    aput-object p2, v0, p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2159
    monitor-exit p0

    return-void

    .line 2157
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setOverrideValues(ILjava/lang/String;)V
    .locals 3
    .parameter "row"
    .parameter "value"

    .prologue
    .line 2128
    const-string v0, "SettingChecker"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOverrideValues("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2129
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    array-length v0, v0

    if-gt p1, v0, :cond_0

    .line 2130
    iget-object v0, p0, Lcom/android/camera/SettingChecker;->mOverrideSettingValues:[Ljava/lang/String;

    aput-object p2, v0, p1

    .line 2132
    :cond_0
    return-void
.end method

.method public turnOffWhenHide()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 2391
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2393
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    const-string v2, "SettingChecker"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "turnOffWhenHide() mContext.getParameters()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2394
    const-string v2, "off"

    invoke-virtual {p0, v5, v2}, Lcom/android/camera/SettingChecker;->setOverrideValues(ILjava/lang/String;)V

    .line 2395
    if-eqz v1, :cond_1

    .line 2397
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    .line 2398
    .local v0, focusManager:Lcom/android/camera/FocusManager;
    const-string v2, "infinity"

    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    if-ne v2, v3, :cond_2

    .line 2399
    iput-boolean v5, p0, Lcom/android/camera/SettingChecker;->isNeedResetFocus:Z

    .line 2403
    :goto_0
    iget-boolean v2, p0, Lcom/android/camera/SettingChecker;->isNeedResetFocus:Z

    if-eqz v2, :cond_0

    .line 2404
    if-eqz v0, :cond_0

    .line 2405
    const-string v2, "infinity"

    invoke-virtual {v0, v2}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2406
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2408
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->clearFocusOnContinuous()V

    .line 2411
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    const-string v3, "off"

    invoke-static {v2, v1, v5, v3}, Lcom/android/camera/SettingChecker;->setParameterValue(Landroid/content/Context;Landroid/hardware/Camera$Parameters;ILjava/lang/String;)Z

    .line 2412
    iget-object v2, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v2}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 2414
    .end local v0           #focusManager:Lcom/android/camera/FocusManager;
    :cond_1
    return-void

    .line 2401
    .restart local v0       #focusManager:Lcom/android/camera/FocusManager;
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/camera/SettingChecker;->isNeedResetFocus:Z

    goto :goto_0
.end method

.method public turnOnWhenShown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 2426
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v1

    .line 2427
    .local v1, parameters:Landroid/hardware/Camera$Parameters;
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getPreferences()Lcom/android/camera/ComboPreferences;

    move-result-object v2

    .line 2429
    .local v2, preference:Lcom/android/camera/ComboPreferences;
    const-string v3, "SettingChecker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "turnOnWhenShown() mContext.getParameters()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mContext.getPreferences()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2431
    invoke-virtual {p0, v6, v7}, Lcom/android/camera/SettingChecker;->setOverrideValues(ILjava/lang/String;)V

    .line 2432
    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    .line 2434
    iget-boolean v3, p0, Lcom/android/camera/SettingChecker;->isNeedResetFocus:Z

    if-eqz v3, :cond_0

    .line 2435
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getFocusManager()Lcom/android/camera/FocusManager;

    move-result-object v0

    .line 2436
    .local v0, focusManager:Lcom/android/camera/FocusManager;
    if-eqz v0, :cond_0

    .line 2437
    invoke-virtual {v0, v7}, Lcom/android/camera/FocusManager;->overrideFocusMode(Ljava/lang/String;)V

    .line 2438
    invoke-virtual {v0}, Lcom/android/camera/FocusManager;->getFocusMode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 2441
    .end local v0           #focusManager:Lcom/android/camera/FocusManager;
    :cond_0
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    iget-object v4, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v4}, Lcom/android/camera/Camera;->getCurrentMode()I

    move-result v4

    invoke-static {v3, v2, v1, v4, v6}, Lcom/android/camera/SettingChecker;->applyPreferenceToParameters(Landroid/content/Context;Lcom/android/camera/ComboPreferences;Landroid/hardware/Camera$Parameters;II)Landroid/hardware/Camera$Parameters;

    .line 2443
    iget-object v3, p0, Lcom/android/camera/SettingChecker;->mContext:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->applyParametersToServer()V

    .line 2444
    invoke-virtual {p0}, Lcom/android/camera/SettingChecker;->applyParametersToUIImmediately()V

    .line 2446
    :cond_1
    return-void
.end method

.class public Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;
.super Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;
.source "PackageInstallerActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;,
        Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;
    }
.end annotation


# static fields
.field private static final APP_INSTALL_AUTO:I = 0x0

.field private static final APP_INSTALL_DEVICE:I = 0x1

.field private static final APP_INSTALL_SDCARD:I = 0x2

.field private static final DLG_ALLOW_SOURCE:I = 0x6

.field private static final DLG_BASE:I = 0x0

.field private static final DLG_INSTALL_ERROR:I = 0x5

.field private static final DLG_OUT_OF_SPACE:I = 0x4

.field private static final DLG_PACKAGE_ERROR:I = 0x3

.field private static final DLG_REPLACE_APP:I = 0x1

.field private static final DLG_UNKNOWN_APPS:I = 0x2

.field private static final INSTALL_FAIL:I = 0x2

.field private static final INSTALL_OK:I = 0x1

.field private static final INSTALL_OTHER:I = 0x3

.field private static final INSTALL_UNDO:I = 0x0

.field private static final MSG_AD_AF_BEGIN:I = 0x13

.field private static final MSG_AD_AF_END:I = 0x14

.field private static final MSG_AD_BEGIN:I = 0x4

.field private static final MSG_AD_END:I = 0x5

.field private static final MSG_APPLOCK_BEGIN:I = 0xc

.field private static final MSG_APPLOCK_END:I = 0xd

.field private static final MSG_APP_WHITE_LIST_BEGIN:I = 0x15

.field private static final MSG_APP_WHITE_LIST_END:I = 0x16

.field private static final MSG_AUTORUN_BEGIN:I = 0xe

.field private static final MSG_AUTORUN_END:I = 0xf

.field private static final MSG_BACKGROUNDAUTORUN_BEGIN:I = 0x10

.field private static final MSG_BACKGROUNDAUTORUN_END:I = 0x11

.field private static final MSG_CHECKTASK_BEGIN:I = 0x1

.field private static final MSG_CHECKTASK_END:I = 0x12

.field private static final MSG_INSTALL_FAIL:I = 0x18

.field private static final MSG_INSTALL_OK:I = 0x17

.field private static final MSG_NET_BEGIN:I = 0x8

.field private static final MSG_NET_END:I = 0x9

.field private static final MSG_PERMISSION_BEGIN:I = 0xa

.field private static final MSG_PERMISSION_END:I = 0xb

.field private static final MSG_SD_BEGIN:I = 0x6

.field private static final MSG_SD_END:I = 0x7

.field private static final MSG_VINUS_BEGIN:I = 0x2

.field private static final MSG_VINUS_END:I = 0x3

.field static final PREFS_ALLOWED_SOURCES:Ljava/lang/String; = "allowed_sources"

.field static final PREFS_PACKAGEINSTALLER:Ljava/lang/String; = "com.zte.packageinstaller"

.field private static final TAG:Ljava/lang/String; = "PackageInstaller"


# instance fields
.field private final INSTALL_COMPLETE:I

.field private final PERMISSIONDISENABLE:I

.field private final PERMISSIONENABLE:I

.field private PermissionsOfCalendarType:I

.field private PermissionsOfCallLogType:I

.field private PermissionsOfCallLogWriteType:I

.field private PermissionsOfCameraType:I

.field private PermissionsOfContactType:I

.field private PermissionsOfContactWriteType:I

.field private PermissionsOfEnableBluetoothType:I

.field private PermissionsOfEnableDataType:I

.field private PermissionsOfEnableWifiType:I

.field private PermissionsOfInternetType:I

.field private PermissionsOfLocationType:I

.field private PermissionsOfMessageType:I

.field private PermissionsOfMessageWriteType:I

.field private PermissionsOfPhoneCallType:I

.field private PermissionsOfPhoneInfoType:I

.field private PermissionsOfRecordAudioType:I

.field private PermissionsOfSendSmsType:I

.field private PhoneNoUsedSize:J

.field PhoneNoUsedStr:Ljava/lang/String;

.field private PhoneTotalSize:J

.field PhoneUsedStr:Ljava/lang/String;

.field private SDNoUsedSize:J

.field SDNoUsedStr:Ljava/lang/String;

.field private SDTotalSize:J

.field SDUsedStr:Ljava/lang/String;

.field private animation:Landroid/view/animation/Animation;

.field private autoRunReceivers:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private dexFile:Ldalvik/system/DexFile;

.field private hasPermissionsOfCalendar:Z

.field private hasPermissionsOfCallLog:Z

.field private hasPermissionsOfCallLogWrite:Z

.field private hasPermissionsOfCamera:Z

.field private hasPermissionsOfContact:Z

.field private hasPermissionsOfContactWrite:Z

.field private hasPermissionsOfEnableBluetooth:Z

.field private hasPermissionsOfEnableData:Z

.field private hasPermissionsOfEnableWifi:Z

.field private hasPermissionsOfInternet:Z

.field private hasPermissionsOfLocation:Z

.field private hasPermissionsOfMessage:Z

.field private hasPermissionsOfMessageWrite:Z

.field private hasPermissionsOfPhoneCall:Z

.field private hasPermissionsOfPhoneInfo:Z

.field private hasPermissionsOfRecordAudio:Z

.field private hasPermissionsOfSendSms:Z

.field private installResult:I

.field private installToPhone:Z

.field installerPackageName:Ljava/lang/String;

.field private isAutoRunUsable:Z

.field private isBackgroundAutoRunUsable:Z

.field private isCheckFinshed:Z

.field private isReplace:Z

.field private isSDUsable:Z

.field private localLOGV:Z

.field private mAdUndoInstoduce:Landroid/widget/TextView;

.field private mAnimationLayout:Landroid/view/View;

.field private mAppInfo:Landroid/content/pm/ApplicationInfo;

.field private mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

.field private mButtonView:Landroid/view/View;

.field private mCancel:Landroid/widget/Button;

.field private mCheckTask:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;

.field private mDoing:Landroid/widget/ImageView;

.field private mHandler:Landroid/os/Handler;

.field private mInfo:Landroid/widget/TextView;

.field private mInfoAccessNetwork:Landroid/view/View;

.field private mInfoAccessNetworkDiv:Landroid/view/View;

.field private mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoAccessNetworkText1:Landroid/widget/TextView;

.field private mInfoAccessNetworkText2:Landroid/widget/TextView;

.field private mInfoAd:Landroid/view/View;

.field private mInfoAdDiv:Landroid/view/View;

.field private mInfoAdSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoAdText1:Landroid/widget/TextView;

.field private mInfoAdText2:Landroid/widget/TextView;

.field private mInfoAppCheck:Landroid/view/View;

.field private mInfoAppLock:Landroid/view/View;

.field private mInfoAppLockDiv:Landroid/view/View;

.field private mInfoAppLockSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoAppLockText1:Landroid/widget/TextView;

.field private mInfoAppLockText2:Landroid/widget/TextView;

.field private mInfoAppWhiteList:Landroid/view/View;

.field private mInfoAppWhiteListDiv:Landroid/view/View;

.field private mInfoAppWhiteListSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoAppWhiteListText1:Landroid/widget/TextView;

.field private mInfoAppWhiteListText2:Landroid/widget/TextView;

.field private mInfoAutoRun:Landroid/view/View;

.field private mInfoAutoRunDiv:Landroid/view/View;

.field private mInfoAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoAutoRunText1:Landroid/widget/TextView;

.field private mInfoAutoRunText2:Landroid/widget/TextView;

.field private mInfoBackgroundAutoRun:Landroid/view/View;

.field private mInfoBackgroundAutoRunDiv:Landroid/view/View;

.field private mInfoBackgroundAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoBackgroundAutoRunText1:Landroid/widget/TextView;

.field private mInfoBackgroundAutoRunText2:Landroid/widget/TextView;

.field private mInfoCalendar:Landroid/view/View;

.field private mInfoCalendarDiv:Landroid/view/View;

.field private mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoCalendarText1:Landroid/widget/TextView;

.field private mInfoCalendarText2:Landroid/widget/TextView;

.field private mInfoCallLog:Landroid/view/View;

.field private mInfoCallLogDiv:Landroid/view/View;

.field private mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoCallLogText1:Landroid/widget/TextView;

.field private mInfoCallLogText2:Landroid/widget/TextView;

.field private mInfoCallLogWrite:Landroid/view/View;

.field private mInfoCallLogWriteDiv:Landroid/view/View;

.field private mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoCallLogWriteText1:Landroid/widget/TextView;

.field private mInfoCallLogWriteText2:Landroid/widget/TextView;

.field private mInfoCamera:Landroid/view/View;

.field private mInfoCameraDiv:Landroid/view/View;

.field private mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoCameraText1:Landroid/widget/TextView;

.field private mInfoCameraText2:Landroid/widget/TextView;

.field private mInfoContact:Landroid/view/View;

.field private mInfoContactDiv:Landroid/view/View;

.field private mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoContactText1:Landroid/widget/TextView;

.field private mInfoContactText2:Landroid/widget/TextView;

.field private mInfoContactWrite:Landroid/view/View;

.field private mInfoContactWriteDiv:Landroid/view/View;

.field private mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoContactWriteText1:Landroid/widget/TextView;

.field private mInfoContactWriteText2:Landroid/widget/TextView;

.field private mInfoEnableBluetooth:Landroid/view/View;

.field private mInfoEnableBluetoothDiv:Landroid/view/View;

.field private mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoEnableBluetoothText1:Landroid/widget/TextView;

.field private mInfoEnableBluetoothText2:Landroid/widget/TextView;

.field private mInfoEnableData:Landroid/view/View;

.field private mInfoEnableDataDiv:Landroid/view/View;

.field private mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoEnableDataText1:Landroid/widget/TextView;

.field private mInfoEnableDataText2:Landroid/widget/TextView;

.field private mInfoEnableWifi:Landroid/view/View;

.field private mInfoEnableWifiDiv:Landroid/view/View;

.field private mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoEnableWifiText1:Landroid/widget/TextView;

.field private mInfoEnableWifiText2:Landroid/widget/TextView;

.field private mInfoInstall:Landroid/widget/TextView;

.field private mInfoInstallImage:Landroid/widget/ImageView;

.field private mInfoLayout:Landroid/view/View;

.field private mInfoLocation:Landroid/view/View;

.field private mInfoLocationDiv:Landroid/view/View;

.field private mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoLocationText1:Landroid/widget/TextView;

.field private mInfoLocationText2:Landroid/widget/TextView;

.field private mInfoMessage:Landroid/view/View;

.field private mInfoMessageDiv:Landroid/view/View;

.field private mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoMessageText1:Landroid/widget/TextView;

.field private mInfoMessageText2:Landroid/widget/TextView;

.field private mInfoMessageWrite:Landroid/view/View;

.field private mInfoMessageWriteDiv:Landroid/view/View;

.field private mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoMessageWriteText1:Landroid/widget/TextView;

.field private mInfoMessageWriteText2:Landroid/widget/TextView;

.field private mInfoNoAd:Landroid/view/View;

.field private mInfoNoVinus:Landroid/view/View;

.field private mInfoPermissionsList:Landroid/widget/TextView;

.field private mInfoPhoneCall:Landroid/view/View;

.field private mInfoPhoneCallDiv:Landroid/view/View;

.field private mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoPhoneCallText1:Landroid/widget/TextView;

.field private mInfoPhoneCallText2:Landroid/widget/TextView;

.field private mInfoPhoneInfo:Landroid/view/View;

.field private mInfoPhoneInfoDiv:Landroid/view/View;

.field private mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoPhoneInfoText1:Landroid/widget/TextView;

.field private mInfoPhoneInfoText2:Landroid/widget/TextView;

.field private mInfoRecordAudio:Landroid/view/View;

.field private mInfoRecordAudioDiv:Landroid/view/View;

.field private mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoRecordAudioText1:Landroid/widget/TextView;

.field private mInfoRecordAudioText2:Landroid/widget/TextView;

.field private mInfoSendSMS:Landroid/view/View;

.field private mInfoSendSMSDiv:Landroid/view/View;

.field private mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mInfoSendSMSText1:Landroid/widget/TextView;

.field private mInfoSendSMSText2:Landroid/widget/TextView;

.field private mInfoShowAllPermissions:Landroid/widget/TextView;

.field private mInfoUndoAd:Landroid/view/View;

.field private mInfoUndoAdText1:Landroid/widget/TextView;

.field private mInfoVinus:Landroid/view/View;

.field private mInfoVinusDiv:Landroid/view/View;

.field private mInstall:Landroid/widget/Button;

.field private mInstallPos:Landroid/widget/RadioGroup;

.field private mInstallPositionInfo:Landroid/widget/TextView;

.field private mKey:Landroid/view/View;

.field private mLaunchIntent:Landroid/content/Intent;

.field private mPackageURI:Landroid/net/Uri;

.field private mPkgInfo:Landroid/content/pm/PackageParser$Package;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mScanLayout:Landroid/view/View;

.field private mScaning:Landroid/widget/ImageView;

.field private mSourceInfo:Landroid/content/pm/ApplicationInfo;

.field private mVirusIntroduce:Landroid/widget/TextView;

.field private mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

.field nowInstallPackageName:Ljava/lang/String;

.field permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field private permissions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field pkgName:Ljava/lang/String;

.field private receivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private scanAnimation:Landroid/view/animation/Animation;

.field private sourceFile:Ljava/io/File;

.field private wait:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, -0x1

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;-><init>()V

    .line 82
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    .line 83
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->dexFile:Ldalvik/system/DexFile;

    .line 84
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    .line 93
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 95
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScaning:Landroid/widget/ImageView;

    .line 96
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->scanAnimation:Landroid/view/animation/Animation;

    .line 97
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScanLayout:Landroid/view/View;

    .line 99
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mDoing:Landroid/widget/ImageView;

    .line 100
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->animation:Landroid/view/animation/Animation;

    .line 101
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfo:Landroid/widget/TextView;

    .line 104
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mKey:Landroid/view/View;

    .line 105
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAnimationLayout:Landroid/view/View;

    .line 108
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCheckTask:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;

    .line 110
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 152
    const/16 v0, 0x64

    iput v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->INSTALL_COMPLETE:I

    .line 154
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PERMISSIONENABLE:I

    .line 155
    const/4 v0, 0x1

    iput v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PERMISSIONDISENABLE:I

    .line 157
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->wait:Ljava/lang/Object;

    .line 159
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    .line 160
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    .line 161
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isSDUsable:Z

    .line 162
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->receivers:Ljava/util/HashMap;

    .line 163
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;

    .line 164
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->autoRunReceivers:Ljava/util/HashSet;

    .line 165
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isCheckFinshed:Z

    .line 166
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isReplace:Z

    .line 167
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z

    .line 168
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z

    .line 170
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfSendSms:Z

    .line 171
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfSendSmsType:I

    .line 172
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneCall:Z

    .line 173
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneCallType:I

    .line 174
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContact:Z

    .line 175
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactType:I

    .line 176
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContactWrite:Z

    .line 177
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactWriteType:I

    .line 178
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLog:Z

    .line 179
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogType:I

    .line 180
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLogWrite:Z

    .line 181
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogWriteType:I

    .line 182
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessage:Z

    .line 183
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageType:I

    .line 184
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessageWrite:Z

    .line 185
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageWriteType:I

    .line 186
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneInfo:Z

    .line 187
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneInfoType:I

    .line 188
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfInternet:Z

    .line 189
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfInternetType:I

    .line 190
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfLocation:Z

    .line 191
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfLocationType:I

    .line 192
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCalendar:Z

    .line 193
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCalendarType:I

    .line 194
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfRecordAudio:Z

    .line 195
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfRecordAudioType:I

    .line 196
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableBluetooth:Z

    .line 197
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableBluetoothType:I

    .line 198
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableData:Z

    .line 199
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableDataType:I

    .line 200
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableWifi:Z

    .line 201
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableWifiType:I

    .line 202
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCamera:Z

    .line 203
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCameraType:I

    .line 205
    iput-wide v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDTotalSize:J

    .line 206
    iput-wide v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedSize:J

    .line 207
    iput-wide v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneTotalSize:J

    .line 208
    iput-wide v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedSize:J

    .line 209
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDUsedStr:Ljava/lang/String;

    .line 210
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedStr:Ljava/lang/String;

    .line 211
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneUsedStr:Ljava/lang/String;

    .line 212
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedStr:Ljava/lang/String;

    .line 215
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstall:Landroid/widget/TextView;

    .line 216
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstallImage:Landroid/widget/ImageView;

    .line 223
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppCheck:Landroid/view/View;

    .line 225
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoVinus:Landroid/view/View;

    .line 226
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinus:Landroid/view/View;

    .line 227
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinusDiv:Landroid/view/View;

    .line 228
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusIntroduce:Landroid/widget/TextView;

    .line 231
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoAd:Landroid/view/View;

    .line 232
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAd:Landroid/view/View;

    .line 233
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAdText1:Landroid/widget/TextView;

    .line 234
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAd:Landroid/view/View;

    .line 235
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText1:Landroid/widget/TextView;

    .line 236
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText2:Landroid/widget/TextView;

    .line 237
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 238
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdDiv:Landroid/view/View;

    .line 240
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAdUndoInstoduce:Landroid/widget/TextView;

    .line 243
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;

    .line 244
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;

    .line 245
    iput-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installToPhone:Z

    .line 249
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLayout:Landroid/view/View;

    .line 250
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPermissionsList:Landroid/widget/TextView;

    .line 251
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoShowAllPermissions:Landroid/widget/TextView;

    .line 257
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetwork:Landroid/view/View;

    .line 258
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkText1:Landroid/widget/TextView;

    .line 259
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkText2:Landroid/widget/TextView;

    .line 260
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 261
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkDiv:Landroid/view/View;

    .line 264
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMS:Landroid/view/View;

    .line 265
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText1:Landroid/widget/TextView;

    .line 266
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText2:Landroid/widget/TextView;

    .line 267
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 268
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSDiv:Landroid/view/View;

    .line 271
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCall:Landroid/view/View;

    .line 272
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText1:Landroid/widget/TextView;

    .line 273
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText2:Landroid/widget/TextView;

    .line 275
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 276
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallDiv:Landroid/view/View;

    .line 279
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContact:Landroid/view/View;

    .line 280
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText1:Landroid/widget/TextView;

    .line 281
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText2:Landroid/widget/TextView;

    .line 283
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 284
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactDiv:Landroid/view/View;

    .line 287
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWrite:Landroid/view/View;

    .line 288
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText1:Landroid/widget/TextView;

    .line 289
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;

    .line 291
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 292
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteDiv:Landroid/view/View;

    .line 295
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLog:Landroid/view/View;

    .line 296
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText1:Landroid/widget/TextView;

    .line 297
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText2:Landroid/widget/TextView;

    .line 299
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 300
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogDiv:Landroid/view/View;

    .line 303
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWrite:Landroid/view/View;

    .line 304
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText1:Landroid/widget/TextView;

    .line 305
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText2:Landroid/widget/TextView;

    .line 307
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 308
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteDiv:Landroid/view/View;

    .line 311
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessage:Landroid/view/View;

    .line 312
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText1:Landroid/widget/TextView;

    .line 313
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText2:Landroid/widget/TextView;

    .line 314
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 315
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageDiv:Landroid/view/View;

    .line 318
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWrite:Landroid/view/View;

    .line 319
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText1:Landroid/widget/TextView;

    .line 320
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText2:Landroid/widget/TextView;

    .line 321
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 322
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteDiv:Landroid/view/View;

    .line 326
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfo:Landroid/view/View;

    .line 327
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText1:Landroid/widget/TextView;

    .line 328
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText2:Landroid/widget/TextView;

    .line 329
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 330
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoDiv:Landroid/view/View;

    .line 333
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocation:Landroid/view/View;

    .line 334
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText1:Landroid/widget/TextView;

    .line 335
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText2:Landroid/widget/TextView;

    .line 336
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 337
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationDiv:Landroid/view/View;

    .line 340
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendar:Landroid/view/View;

    .line 341
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText1:Landroid/widget/TextView;

    .line 342
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText2:Landroid/widget/TextView;

    .line 343
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 344
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarDiv:Landroid/view/View;

    .line 347
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudio:Landroid/view/View;

    .line 348
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText1:Landroid/widget/TextView;

    .line 349
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText2:Landroid/widget/TextView;

    .line 350
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 351
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioDiv:Landroid/view/View;

    .line 354
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetooth:Landroid/view/View;

    .line 355
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText1:Landroid/widget/TextView;

    .line 356
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText2:Landroid/widget/TextView;

    .line 357
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 358
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothDiv:Landroid/view/View;

    .line 361
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableData:Landroid/view/View;

    .line 362
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText1:Landroid/widget/TextView;

    .line 363
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;

    .line 364
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 365
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataDiv:Landroid/view/View;

    .line 368
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifi:Landroid/view/View;

    .line 369
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText1:Landroid/widget/TextView;

    .line 370
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText2:Landroid/widget/TextView;

    .line 371
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 372
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiDiv:Landroid/view/View;

    .line 375
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCamera:Landroid/view/View;

    .line 376
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText1:Landroid/widget/TextView;

    .line 377
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText2:Landroid/widget/TextView;

    .line 378
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 379
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraDiv:Landroid/view/View;

    .line 384
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLock:Landroid/view/View;

    .line 385
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockText1:Landroid/widget/TextView;

    .line 386
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockText2:Landroid/widget/TextView;

    .line 387
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 388
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockDiv:Landroid/view/View;

    .line 391
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRun:Landroid/view/View;

    .line 392
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText1:Landroid/widget/TextView;

    .line 393
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText2:Landroid/widget/TextView;

    .line 394
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 395
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunDiv:Landroid/view/View;

    .line 398
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRun:Landroid/view/View;

    .line 399
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText1:Landroid/widget/TextView;

    .line 400
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText2:Landroid/widget/TextView;

    .line 401
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 402
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunDiv:Landroid/view/View;

    .line 405
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteList:Landroid/view/View;

    .line 406
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListText1:Landroid/widget/TextView;

    .line 407
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListText2:Landroid/widget/TextView;

    .line 408
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 409
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListDiv:Landroid/view/View;

    .line 412
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mButtonView:Landroid/view/View;

    .line 413
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    .line 414
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    .line 420
    iput v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I

    .line 426
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installerPackageName:Ljava/lang/String;

    .line 427
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    .line 428
    iput-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    .line 429
    new-instance v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    .line 2909
    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showButton()V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mDoing:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getExplanationFromErrorCode(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$10000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$10100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfLocationType:I

    return v0
.end method

.method static synthetic access$10102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfLocationType:I

    return p1
.end method

.method static synthetic access$10200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCalendar:Z

    return v0
.end method

.method static synthetic access$10302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCalendar:Z

    return p1
.end method

.method static synthetic access$10400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendar:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$10700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCalendarType:I

    return v0
.end method

.method static synthetic access$10702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCalendarType:I

    return p1
.end method

.method static synthetic access$10800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$10900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfRecordAudio:Z

    return v0
.end method

.method static synthetic access$10902(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfRecordAudio:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudio:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$11300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfRecordAudioType:I

    return v0
.end method

.method static synthetic access$11302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfRecordAudioType:I

    return p1
.end method

.method static synthetic access$11400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableBluetooth:Z

    return v0
.end method

.method static synthetic access$11502(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableBluetooth:Z

    return p1
.end method

.method static synthetic access$11600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetooth:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$11700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$11800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$11900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableBluetoothType:I

    return v0
.end method

.method static synthetic access$11902(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableBluetoothType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    return-object v0
.end method

.method static synthetic access$12000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Lcom/zte/heartyservice/common/datatype/VirusScanResult;)Lcom/zte/heartyservice/common/datatype/VirusScanResult;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusScanResult:Lcom/zte/heartyservice/common/datatype/VirusScanResult;

    return-object p1
.end method

.method static synthetic access$12100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableData:Z

    return v0
.end method

.method static synthetic access$12102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableData:Z

    return p1
.end method

.method static synthetic access$12200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableData:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$12400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$12500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableDataType:I

    return v0
.end method

.method static synthetic access$12502(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableDataType:I

    return p1
.end method

.method static synthetic access$12600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableWifi:Z

    return v0
.end method

.method static synthetic access$12702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfEnableWifi:Z

    return p1
.end method

.method static synthetic access$12800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifi:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$12900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinus:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$13100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableWifiType:I

    return v0
.end method

.method static synthetic access$13102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfEnableWifiType:I

    return p1
.end method

.method static synthetic access$13200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCamera:Z

    return v0
.end method

.method static synthetic access$13302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCamera:Z

    return p1
.end method

.method static synthetic access$13400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCamera:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$13600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$13700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCameraType:I

    return v0
.end method

.method static synthetic access$13702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCameraType:I

    return p1
.end method

.method static synthetic access$13800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$13900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLock:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusIntroduce:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$14200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z

    return v0
.end method

.method static synthetic access$14400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isReplace:Z

    return v0
.end method

.method static synthetic access$14402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isReplace:Z

    return p1
.end method

.method static synthetic access$14500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->autoRunReceivers:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$14600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRun:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$14700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$14800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$14900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoVinus:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z

    return v0
.end method

.method static synthetic access$15200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashMap;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->receivers:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$15300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRun:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$15500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$15600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteList:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$15800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$15900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinusDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$16100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ldalvik/system/DexFile;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->dexFile:Ldalvik/system/DexFile;

    return-object v0
.end method

.method static synthetic access$16102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ldalvik/system/DexFile;)Ldalvik/system/DexFile;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->dexFile:Ldalvik/system/DexFile;

    return-object p1
.end method

.method static synthetic access$16200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstall:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$16300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstallImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$16400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->afterInstallCheck()V

    return-void
.end method

.method static synthetic access$16500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/net/Uri;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$16600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/io/File;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$16700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/PackageParser$Package;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    return-object v0
.end method

.method static synthetic access$16800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->analysis()V

    return-void
.end method

.method static synthetic access$16900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Ljava/util/HashSet;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppCheck:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$17000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Ljava/util/Set;[Ljava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$17100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isCheckFinshed:Z

    return v0
.end method

.method static synthetic access$17102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isCheckFinshed:Z

    return p1
.end method

.method static synthetic access$17300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    return-void
.end method

.method static synthetic access$17400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    return-void
.end method

.method static synthetic access$17500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->launchSettingsAppAndFinish()V

    return-void
.end method

.method static synthetic access$17600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method static synthetic access$17700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hideAll()V

    return-void
.end method

.method static synthetic access$17800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hideButton()V

    return-void
.end method

.method static synthetic access$17900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScaning:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScanLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mKey:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    return-object v0
.end method

.method static synthetic access$2002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;)Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mApplicationAdInfo:Lcom/zte/heartyservice/interceptad/ApplicationAdInfo;

    return-object p1
.end method

.method static synthetic access$2100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAdText1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAdUndoInstoduce:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAd:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoAd:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText1:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAd:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAnimationLayout:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$3100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDTotalSize:J

    return-wide v0
.end method

.method static synthetic access$3102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDTotalSize:J

    return-wide p1
.end method

.method static synthetic access$3200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedSize:J

    return-wide v0
.end method

.method static synthetic access$3202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->SDNoUsedSize:J

    return-wide p1
.end method

.method static synthetic access$3300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneTotalSize:J

    return-wide v0
.end method

.method static synthetic access$3302(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneTotalSize:J

    return-wide p1
.end method

.method static synthetic access$3400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)J
    .locals 2
    .parameter "x0"

    .prologue
    .line 79
    iget-wide v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedSize:J

    return-wide v0
.end method

.method static synthetic access$3402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;J)J
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PhoneNoUsedSize:J

    return-wide p1
.end method

.method static synthetic access$3500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/RadioGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isSDUsable:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isSDUsable:Z

    return p1
.end method

.method static synthetic access$3802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installToPhone:Z

    return p1
.end method

.method static synthetic access$3900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfInternet:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfInternet:Z

    return p1
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetwork:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfSendSms:Z

    return v0
.end method

.method static synthetic access$4402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfSendSms:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMS:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfSendSmsType:I

    return v0
.end method

.method static synthetic access$4802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfSendSmsType:I

    return p1
.end method

.method static synthetic access$4900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneCall:Z

    return v0
.end method

.method static synthetic access$5002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneCall:Z

    return p1
.end method

.method static synthetic access$5100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCall:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneCallType:I

    return v0
.end method

.method static synthetic access$5402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneCallType:I

    return p1
.end method

.method static synthetic access$5500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContact:Z

    return v0
.end method

.method static synthetic access$5602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContact:Z

    return p1
.end method

.method static synthetic access$5700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContact:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$6000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactType:I

    return v0
.end method

.method static synthetic access$6002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactType:I

    return p1
.end method

.method static synthetic access$602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mLaunchIntent:Landroid/content/Intent;

    return-object p1
.end method

.method static synthetic access$6100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContactWrite:Z

    return v0
.end method

.method static synthetic access$6202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfContactWrite:Z

    return p1
.end method

.method static synthetic access$6300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWrite:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$6600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactWriteType:I

    return v0
.end method

.method static synthetic access$6602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfContactWriteType:I

    return p1
.end method

.method static synthetic access$6700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$6800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLog:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLog:Z

    return p1
.end method

.method static synthetic access$6900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLog:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I

    return v0
.end method

.method static synthetic access$7000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I

    return p1
.end method

.method static synthetic access$7100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$7200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogType:I

    return v0
.end method

.method static synthetic access$7202(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogType:I

    return p1
.end method

.method static synthetic access$7300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLogWrite:Z

    return v0
.end method

.method static synthetic access$7402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfCallLogWrite:Z

    return p1
.end method

.method static synthetic access$7500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWrite:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$7600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$7800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogWriteType:I

    return v0
.end method

.method static synthetic access$7802(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfCallLogWriteType:I

    return p1
.end method

.method static synthetic access$7900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;ILjava/lang/Object;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$8000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessage:Z

    return v0
.end method

.method static synthetic access$8002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessage:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessage:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$8400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageType:I

    return v0
.end method

.method static synthetic access$8402(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageType:I

    return p1
.end method

.method static synthetic access$8500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessageWrite:Z

    return v0
.end method

.method static synthetic access$8602(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfMessageWrite:Z

    return p1
.end method

.method static synthetic access$8700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWrite:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$8800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$8900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    return-void
.end method

.method static synthetic access$9000(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageWriteType:I

    return v0
.end method

.method static synthetic access$9002(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfMessageWriteType:I

    return p1
.end method

.method static synthetic access$9100(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneInfo:Z

    return v0
.end method

.method static synthetic access$9102(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfPhoneInfo:Z

    return p1
.end method

.method static synthetic access$9200(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfo:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9300(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText2:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method static synthetic access$9500(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneInfoType:I

    return v0
.end method

.method static synthetic access$9502(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->PermissionsOfPhoneInfoType:I

    return p1
.end method

.method static synthetic access$9600(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoDiv:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfLocation:Z

    return v0
.end method

.method static synthetic access$9702(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->hasPermissionsOfLocation:Z

    return p1
.end method

.method static synthetic access$9800(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocation:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText2:Landroid/widget/TextView;

    return-object v0
.end method

.method private afterInstallCheck()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2945
    const/16 v0, 0x13

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2946
    const/16 v0, 0x14

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2950
    const/16 v0, 0xc

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2951
    const/16 v0, 0xd

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2956
    const/16 v0, 0xe

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2957
    const/16 v0, 0xf

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2962
    const/16 v0, 0x10

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2963
    const/16 v0, 0x11

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2968
    const/16 v0, 0x15

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2969
    const/16 v0, 0x16

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendMsg(ILjava/lang/Object;)V

    .line 2971
    return-void
.end method

.method private analysis()V
    .locals 24

    .prologue
    .line 2049
    const/4 v12, 0x0

    .line 2050
    .local v12, localXmlResourceParser:Landroid/content/res/XmlResourceParser;
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    .line 2051
    .local v13, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/util/List<Ljava/lang/String;>;>;"
    new-instance v17, Ljava/util/HashSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/HashSet;-><init>()V

    .line 2052
    .local v17, set:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 2053
    .local v6, autorun:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    const/16 v19, 0x1

    .line 2054
    .local v19, stoppedState:I
    const/16 v20, 0x1

    .line 2061
    .local v20, stoppedStateAutoRun:I
    :try_start_0
    new-instance v5, Landroid/content/res/AssetManager;

    invoke-direct {v5}, Landroid/content/res/AssetManager;-><init>()V

    .line 2062
    .local v5, assmgr:Landroid/content/res/AssetManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->addAssetPath(Ljava/lang/String;)I

    .line 2063
    const-string v21, "AndroidManifest.xml"

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Landroid/content/res/AssetManager;->openXmlResourceParser(Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v12

    .line 2064
    const/4 v10, 0x0

    .line 2065
    .local v10, flag:Z
    const/4 v11, 0x0

    .line 2066
    .local v11, flagAutorun:Z
    const/16 v16, 0x0

    .line 2067
    .local v16, receiverName:Ljava/lang/String;
    const/4 v15, 0x0

    .line 2068
    .local v15, permission:Ljava/lang/String;
    const/4 v4, 0x0

    .line 2069
    .local v4, actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2070
    .local v14, packageName:Ljava/lang/String;
    const/4 v8, 0x1

    .line 2072
    .local v8, defaultEnable:Z
    :goto_0
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 2073
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_1

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "receiver"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_1

    .line 2074
    const-string v21, "http://schemas.android.com/apk/res/android"

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 2075
    const-string v21, "."

    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_0

    .line 2076
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    .line 2078
    :cond_0
    const-string v21, "PackageInstaller"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, " receiverName================"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2107
    const-string v21, "http://schemas.android.com/apk/res/android"

    const-string v22, "enabled"

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-interface {v12, v0, v1, v2}, Landroid/content/res/XmlResourceParser;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 2108
    const/4 v10, 0x1

    .line 2109
    const/4 v11, 0x0

    .line 2110
    new-instance v4, Ljava/util/ArrayList;

    .end local v4           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 2112
    .restart local v4       #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_2

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "action"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_2

    .line 2113
    const-string v21, "http://schemas.android.com/apk/res/android"

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 2115
    .local v3, action:Ljava/lang/String;
    const-string v21, "android."

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2116
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2117
    const-string v21, "android.intent.action.BOOT_COMPLETED"

    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_2

    .line 2118
    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2119
    const/4 v11, 0x1

    .line 2123
    .end local v3           #action:Ljava/lang/String;
    :cond_2
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v21

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_4

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "receiver"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_4

    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v10, v0, :cond_4

    .line 2124
    const/4 v10, 0x0

    .line 2125
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v21

    if-lez v21, :cond_4

    .line 2126
    new-instance v7, Landroid/content/ComponentName;

    move-object/from16 v0, v16

    invoke-direct {v7, v14, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2128
    .local v7, cn:Landroid/content/ComponentName;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v18

    .line 2129
    .local v18, status:I
    packed-switch v18, :pswitch_data_0

    .line 2182
    .end local v18           #status:I
    :cond_3
    :goto_1
    :try_start_2
    move-object/from16 v0, v16

    invoke-virtual {v13, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2185
    .end local v7           #cn:Landroid/content/ComponentName;
    :cond_4
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_5

    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v21

    const-string v22, "uses-permission"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v21

    if-eqz v21, :cond_5

    .line 2186
    const-string v21, "http://schemas.android.com/apk/res/android"

    const-string v22, "name"

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-interface {v12, v0, v1}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 2187
    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 2189
    :cond_5
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 2191
    .end local v4           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .end local v8           #defaultEnable:Z
    .end local v10           #flag:Z
    .end local v11           #flagAutorun:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #permission:Ljava/lang/String;
    .end local v16           #receiverName:Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 2192
    .local v9, e:Ljava/lang/Exception;
    :try_start_3
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2194
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->receivers:Ljava/util/HashMap;

    .line 2195
    if-nez v19, :cond_f

    const/16 v21, 0x1

    :goto_2
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z

    .line 2196
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;

    .line 2197
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->autoRunReceivers:Ljava/util/HashSet;

    .line 2198
    if-nez v20, :cond_10

    const/16 v21, 0x1

    :goto_3
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z

    .line 2199
    if-eqz v12, :cond_6

    .line 2200
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    .line 2203
    .end local v9           #e:Ljava/lang/Exception;
    :cond_6
    :goto_4
    return-void

    .line 2131
    .restart local v4       #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #assmgr:Landroid/content/res/AssetManager;
    .restart local v7       #cn:Landroid/content/ComponentName;
    .restart local v8       #defaultEnable:Z
    .restart local v10       #flag:Z
    .restart local v11       #flagAutorun:Z
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v15       #permission:Ljava/lang/String;
    .restart local v16       #receiverName:Ljava/lang/String;
    .restart local v18       #status:I
    :pswitch_0
    and-int/lit8 v19, v19, 0x1

    .line 2132
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 2133
    and-int/lit8 v20, v20, 0x1

    goto :goto_1

    .line 2137
    :pswitch_1
    and-int/lit8 v19, v19, 0x0

    .line 2138
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 2139
    and-int/lit8 v20, v20, 0x0

    goto :goto_1

    .line 2143
    :pswitch_2
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_7

    .line 2144
    and-int/lit8 v19, v19, 0x0

    .line 2145
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 2146
    and-int/lit8 v20, v20, 0x0

    goto/16 :goto_1

    .line 2149
    :cond_7
    and-int/lit8 v19, v19, 0x1

    .line 2150
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_8

    .line 2151
    and-int/lit8 v20, v20, 0x1

    .line 2154
    :cond_8
    :try_start_4
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_0

    .line 2165
    .end local v18           #status:I
    :catch_1
    move-exception v9

    .line 2166
    .restart local v9       #e:Ljava/lang/Exception;
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v8, v0, :cond_9

    .line 2167
    and-int/lit8 v19, v19, 0x0

    .line 2168
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 2169
    and-int/lit8 v20, v20, 0x0

    goto/16 :goto_1

    .line 2159
    .end local v9           #e:Ljava/lang/Exception;
    .restart local v18       #status:I
    :pswitch_3
    and-int/lit8 v19, v19, 0x1

    .line 2160
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_3

    .line 2161
    and-int/lit8 v20, v20, 0x1

    goto/16 :goto_1

    .line 2172
    .end local v18           #status:I
    .restart local v9       #e:Ljava/lang/Exception;
    :cond_9
    and-int/lit8 v19, v19, 0x1

    .line 2173
    const/16 v21, 0x1

    move/from16 v0, v21

    if-ne v11, v0, :cond_a

    .line 2174
    and-int/lit8 v20, v20, 0x1

    .line 2177
    :cond_a
    :try_start_5
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 2194
    .end local v4           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .end local v7           #cn:Landroid/content/ComponentName;
    .end local v8           #defaultEnable:Z
    .end local v9           #e:Ljava/lang/Exception;
    .end local v10           #flag:Z
    .end local v11           #flagAutorun:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #permission:Ljava/lang/String;
    .end local v16           #receiverName:Ljava/lang/String;
    :catchall_0
    move-exception v21

    move-object/from16 v22, v21

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->receivers:Ljava/util/HashMap;

    .line 2195
    if-nez v19, :cond_11

    const/16 v21, 0x1

    :goto_5
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z

    .line 2196
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;

    .line 2197
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->autoRunReceivers:Ljava/util/HashSet;

    .line 2198
    if-nez v20, :cond_12

    const/16 v21, 0x1

    :goto_6
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z

    .line 2199
    if-eqz v12, :cond_b

    .line 2200
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_b
    throw v22

    .line 2194
    .restart local v4       #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5       #assmgr:Landroid/content/res/AssetManager;
    .restart local v8       #defaultEnable:Z
    .restart local v10       #flag:Z
    .restart local v11       #flagAutorun:Z
    .restart local v14       #packageName:Ljava/lang/String;
    .restart local v15       #permission:Ljava/lang/String;
    .restart local v16       #receiverName:Ljava/lang/String;
    :cond_c
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->receivers:Ljava/util/HashMap;

    .line 2195
    if-nez v19, :cond_d

    const/16 v21, 0x1

    :goto_7
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isBackgroundAutoRunUsable:Z

    .line 2196
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissions:Ljava/util/HashSet;

    .line 2197
    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->autoRunReceivers:Ljava/util/HashSet;

    .line 2198
    if-nez v20, :cond_e

    const/16 v21, 0x1

    :goto_8
    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isAutoRunUsable:Z

    .line 2199
    if-eqz v12, :cond_6

    .line 2200
    invoke-interface {v12}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_4

    .line 2195
    :cond_d
    const/16 v21, 0x0

    goto :goto_7

    .line 2198
    :cond_e
    const/16 v21, 0x0

    goto :goto_8

    .line 2195
    .end local v4           #actions:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    .end local v5           #assmgr:Landroid/content/res/AssetManager;
    .end local v8           #defaultEnable:Z
    .end local v10           #flag:Z
    .end local v11           #flagAutorun:Z
    .end local v14           #packageName:Ljava/lang/String;
    .end local v15           #permission:Ljava/lang/String;
    .end local v16           #receiverName:Ljava/lang/String;
    .restart local v9       #e:Ljava/lang/Exception;
    :cond_f
    const/16 v21, 0x0

    goto/16 :goto_2

    .line 2198
    :cond_10
    const/16 v21, 0x0

    goto/16 :goto_3

    .line 2195
    .end local v9           #e:Ljava/lang/Exception;
    :cond_11
    const/16 v21, 0x0

    goto :goto_5

    .line 2198
    :cond_12
    const/16 v21, 0x0

    goto :goto_6

    .line 2129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private getExplanationFromErrorCode(I)I
    .locals 3
    .parameter "errCode"

    .prologue
    .line 2919
    const-string v0, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Installation error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2920
    sparse-switch p1, :sswitch_data_0

    .line 2936
    const/4 v0, -0x1

    :goto_0
    return v0

    .line 2922
    :sswitch_0
    const v0, 0x7f0a0591

    goto :goto_0

    .line 2924
    :sswitch_1
    const v0, 0x7f0a0592

    goto :goto_0

    .line 2926
    :sswitch_2
    const v0, 0x7f0a0593

    goto :goto_0

    .line 2928
    :sswitch_3
    const v0, 0x7f0a0594

    goto :goto_0

    .line 2930
    :sswitch_4
    const v0, 0x7f0a0599

    goto :goto_0

    .line 2932
    :sswitch_5
    const v0, 0x7f0a059a

    goto :goto_0

    .line 2934
    :sswitch_6
    const v0, 0x7f0a059b

    goto :goto_0

    .line 2920
    nop

    :sswitch_data_0
    .sparse-switch
        -0x68 -> :sswitch_1
        -0x18 -> :sswitch_6
        -0x14 -> :sswitch_5
        -0x12 -> :sswitch_4
        -0x10 -> :sswitch_3
        -0xc -> :sswitch_2
        -0x2 -> :sswitch_0
    .end sparse-switch
.end method

.method private hasPermission(Ljava/util/Set;[Ljava/lang/String;)Z
    .locals 6
    .parameter "set"
    .parameter "subSet"

    .prologue
    .line 2206
    const/4 v4, 0x0

    .line 2207
    .local v4, ret:Z
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 2208
    .local v3, permission:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 2209
    const/4 v4, 0x1

    .line 2213
    .end local v3           #permission:Ljava/lang/String;
    :cond_0
    return v4

    .line 2207
    .restart local v3       #permission:Ljava/lang/String;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private hideAll()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2989
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppCheck:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2991
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoVinus:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2992
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinus:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2993
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinusDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2996
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoAd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2997
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2998
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAd:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2999
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3002
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3003
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3004
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 3006
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3009
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetwork:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3010
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3013
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMS:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3014
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3017
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCall:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3018
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3021
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContact:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3022
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3025
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWrite:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3026
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3029
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3030
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3033
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWrite:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3034
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3037
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessage:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3038
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3041
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWrite:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3042
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3046
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfo:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3047
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3050
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocation:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3051
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3054
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendar:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3055
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3058
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudio:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3059
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3062
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetooth:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3063
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3066
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableData:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3067
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3070
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifi:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3071
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3074
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCamera:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3075
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3081
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLock:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3082
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3085
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRun:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3086
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3089
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRun:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3090
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3093
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteList:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3094
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListDiv:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3098
    return-void
.end method

.method private hideButton()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 2975
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2976
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2977
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2978
    return-void
.end method

.method private init()V
    .locals 5

    .prologue
    const v4, 0x7f080012

    const/4 v3, 0x0

    .line 2470
    const v0, 0x7f0e0219

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScaning:Landroid/widget/ImageView;

    .line 2471
    const v0, 0x7f040008

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->scanAnimation:Landroid/view/animation/Animation;

    .line 2472
    const v0, 0x7f0e0218

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScanLayout:Landroid/view/View;

    .line 2474
    const v0, 0x7f0e0216

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstall:Landroid/widget/TextView;

    .line 2475
    const v0, 0x7f0e0217

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoInstallImage:Landroid/widget/ImageView;

    .line 2484
    const v0, 0x7f0e0223

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppCheck:Landroid/view/View;

    .line 2485
    const v0, 0x7f0e0225

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoVinus:Landroid/view/View;

    .line 2486
    const v0, 0x7f0e0227

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinus:Landroid/view/View;

    .line 2487
    const v0, 0x7f0e022b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoVinusDiv:Landroid/view/View;

    .line 2488
    const v0, 0x7f0e022a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mVirusIntroduce:Landroid/widget/TextView;

    .line 2491
    const v0, 0x7f0e022c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoNoAd:Landroid/view/View;

    .line 2492
    const v0, 0x7f0e022e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAd:Landroid/view/View;

    .line 2493
    const v0, 0x7f0e022f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoUndoAdText1:Landroid/widget/TextView;

    .line 2494
    const v0, 0x7f0e0231

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAdUndoInstoduce:Landroid/widget/TextView;

    .line 2496
    const v0, 0x7f0e0232

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAd:Landroid/view/View;

    .line 2497
    const v0, 0x7f0e0233

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText1:Landroid/widget/TextView;

    .line 2498
    const v0, 0x7f0e0235

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdText2:Landroid/widget/TextView;

    .line 2499
    const v0, 0x7f0e0234

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2500
    const v0, 0x7f0e0236

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAdDiv:Landroid/view/View;

    .line 2503
    const v0, 0x7f0e021f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPositionInfo:Landroid/widget/TextView;

    .line 2504
    const v0, 0x7f0e0220

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstallPos:Landroid/widget/RadioGroup;

    .line 2506
    const v0, 0x7f0e0238

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLayout:Landroid/view/View;

    .line 2507
    const v0, 0x7f0e0239

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPermissionsList:Landroid/widget/TextView;

    .line 2508
    const v0, 0x7f0e023a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoShowAllPermissions:Landroid/widget/TextView;

    .line 2509
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoShowAllPermissions:Landroid/widget/TextView;

    new-instance v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$12;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$12;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2524
    const v0, 0x7f0e023b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetwork:Landroid/view/View;

    .line 2525
    const v0, 0x7f0e023c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkText1:Landroid/widget/TextView;

    .line 2526
    const v0, 0x7f0e023e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkText2:Landroid/widget/TextView;

    .line 2527
    const v0, 0x7f0e023d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2528
    const v0, 0x7f0e023f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAccessNetworkDiv:Landroid/view/View;

    .line 2531
    const v0, 0x7f0e0240

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMS:Landroid/view/View;

    .line 2532
    const v0, 0x7f0e0241

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText1:Landroid/widget/TextView;

    .line 2533
    const v0, 0x7f0e0243

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSText2:Landroid/widget/TextView;

    .line 2534
    const v0, 0x7f0e0242

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2535
    const v0, 0x7f0e0244

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoSendSMSDiv:Landroid/view/View;

    .line 2539
    const v0, 0x7f0e0245

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCall:Landroid/view/View;

    .line 2540
    const v0, 0x7f0e0246

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText1:Landroid/widget/TextView;

    .line 2541
    const v0, 0x7f0e0248

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallText2:Landroid/widget/TextView;

    .line 2542
    const v0, 0x7f0e0247

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2543
    const v0, 0x7f0e0249

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneCallDiv:Landroid/view/View;

    .line 2546
    const v0, 0x7f0e024a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContact:Landroid/view/View;

    .line 2547
    const v0, 0x7f0e024b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText1:Landroid/widget/TextView;

    .line 2548
    const v0, 0x7f0e024d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactText2:Landroid/widget/TextView;

    .line 2549
    const v0, 0x7f0e024c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2550
    const v0, 0x7f0e024e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactDiv:Landroid/view/View;

    .line 2553
    const v0, 0x7f0e024f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWrite:Landroid/view/View;

    .line 2554
    const v0, 0x7f0e0250

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText1:Landroid/widget/TextView;

    .line 2555
    const v0, 0x7f0e0252

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteText2:Landroid/widget/TextView;

    .line 2556
    const v0, 0x7f0e0251

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2557
    const v0, 0x7f0e0253

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoContactWriteDiv:Landroid/view/View;

    .line 2560
    const v0, 0x7f0e0254

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLog:Landroid/view/View;

    .line 2561
    const v0, 0x7f0e0255

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText1:Landroid/widget/TextView;

    .line 2562
    const v0, 0x7f0e0257

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogText2:Landroid/widget/TextView;

    .line 2563
    const v0, 0x7f0e0256

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2564
    const v0, 0x7f0e0258

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogDiv:Landroid/view/View;

    .line 2567
    const v0, 0x7f0e0259

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWrite:Landroid/view/View;

    .line 2568
    const v0, 0x7f0e025a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText1:Landroid/widget/TextView;

    .line 2569
    const v0, 0x7f0e025c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteText2:Landroid/widget/TextView;

    .line 2570
    const v0, 0x7f0e025b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2571
    const v0, 0x7f0e025d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCallLogWriteDiv:Landroid/view/View;

    .line 2575
    const v0, 0x7f0e025e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessage:Landroid/view/View;

    .line 2576
    const v0, 0x7f0e025f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText1:Landroid/widget/TextView;

    .line 2577
    const v0, 0x7f0e0261

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageText2:Landroid/widget/TextView;

    .line 2578
    const v0, 0x7f0e0260

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2579
    const v0, 0x7f0e0262

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageDiv:Landroid/view/View;

    .line 2582
    const v0, 0x7f0e0263

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWrite:Landroid/view/View;

    .line 2583
    const v0, 0x7f0e0264

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText1:Landroid/widget/TextView;

    .line 2584
    const v0, 0x7f0e0266

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteText2:Landroid/widget/TextView;

    .line 2585
    const v0, 0x7f0e0265

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2586
    const v0, 0x7f0e0267

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoMessageWriteDiv:Landroid/view/View;

    .line 2589
    const v0, 0x7f0e0268

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfo:Landroid/view/View;

    .line 2590
    const v0, 0x7f0e0269

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText1:Landroid/widget/TextView;

    .line 2591
    const v0, 0x7f0e026b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoText2:Landroid/widget/TextView;

    .line 2592
    const v0, 0x7f0e026a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2593
    const v0, 0x7f0e026c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoPhoneInfoDiv:Landroid/view/View;

    .line 2596
    const v0, 0x7f0e026d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocation:Landroid/view/View;

    .line 2597
    const v0, 0x7f0e026e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText1:Landroid/widget/TextView;

    .line 2598
    const v0, 0x7f0e0270

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationText2:Landroid/widget/TextView;

    .line 2599
    const v0, 0x7f0e026f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2600
    const v0, 0x7f0e0271

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoLocationDiv:Landroid/view/View;

    .line 2603
    const v0, 0x7f0e0272

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendar:Landroid/view/View;

    .line 2604
    const v0, 0x7f0e0273

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText1:Landroid/widget/TextView;

    .line 2605
    const v0, 0x7f0e0275

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarText2:Landroid/widget/TextView;

    .line 2606
    const v0, 0x7f0e0274

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2607
    const v0, 0x7f0e0276

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCalendarDiv:Landroid/view/View;

    .line 2610
    const v0, 0x7f0e0122

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudio:Landroid/view/View;

    .line 2611
    const v0, 0x7f0e0123

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText1:Landroid/widget/TextView;

    .line 2612
    const v0, 0x7f0e0125

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioText2:Landroid/widget/TextView;

    .line 2613
    const v0, 0x7f0e0124

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2614
    const v0, 0x7f0e0277

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoRecordAudioDiv:Landroid/view/View;

    .line 2617
    const v0, 0x7f0e0278

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetooth:Landroid/view/View;

    .line 2618
    const v0, 0x7f0e0279

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText1:Landroid/widget/TextView;

    .line 2619
    const v0, 0x7f0e027b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothText2:Landroid/widget/TextView;

    .line 2620
    const v0, 0x7f0e027a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2621
    const v0, 0x7f0e027c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableBluetoothDiv:Landroid/view/View;

    .line 2624
    const v0, 0x7f0e027d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableData:Landroid/view/View;

    .line 2625
    const v0, 0x7f0e027e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText1:Landroid/widget/TextView;

    .line 2626
    const v0, 0x7f0e0280

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataText2:Landroid/widget/TextView;

    .line 2627
    const v0, 0x7f0e027f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2628
    const v0, 0x7f0e0281

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableDataDiv:Landroid/view/View;

    .line 2631
    const v0, 0x7f0e0282

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifi:Landroid/view/View;

    .line 2632
    const v0, 0x7f0e0283

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText1:Landroid/widget/TextView;

    .line 2633
    const v0, 0x7f0e0285

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiText2:Landroid/widget/TextView;

    .line 2634
    const v0, 0x7f0e0284

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2635
    const v0, 0x7f0e0286

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoEnableWifiDiv:Landroid/view/View;

    .line 2638
    const v0, 0x7f0e0287

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCamera:Landroid/view/View;

    .line 2639
    const v0, 0x7f0e0288

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText1:Landroid/widget/TextView;

    .line 2640
    const v0, 0x7f0e028a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraText2:Landroid/widget/TextView;

    .line 2641
    const v0, 0x7f0e0289

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2642
    const v0, 0x7f0e028b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoCameraDiv:Landroid/view/View;

    .line 2648
    const v0, 0x7f0e028c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLock:Landroid/view/View;

    .line 2649
    const v0, 0x7f0e028d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockText1:Landroid/widget/TextView;

    .line 2650
    const v0, 0x7f0e028f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockText2:Landroid/widget/TextView;

    .line 2651
    const v0, 0x7f0e028e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2652
    const v0, 0x7f0e0290

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppLockDiv:Landroid/view/View;

    .line 2656
    const v0, 0x7f0e0291

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRun:Landroid/view/View;

    .line 2657
    const v0, 0x7f0e0292

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText1:Landroid/widget/TextView;

    .line 2658
    const v0, 0x7f0e0294

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunText2:Landroid/widget/TextView;

    .line 2659
    const v0, 0x7f0e0293

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2660
    const v0, 0x7f0e0295

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAutoRunDiv:Landroid/view/View;

    .line 2663
    const v0, 0x7f0e0296

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRun:Landroid/view/View;

    .line 2664
    const v0, 0x7f0e0297

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText1:Landroid/widget/TextView;

    .line 2665
    const v0, 0x7f0e0299

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunText2:Landroid/widget/TextView;

    .line 2666
    const v0, 0x7f0e0298

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2667
    const v0, 0x7f0e029a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoBackgroundAutoRunDiv:Landroid/view/View;

    .line 2670
    const v0, 0x7f0e029b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteList:Landroid/view/View;

    .line 2671
    const v0, 0x7f0e029c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListText1:Landroid/widget/TextView;

    .line 2672
    const v0, 0x7f0e029e

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListText2:Landroid/widget/TextView;

    .line 2673
    const v0, 0x7f0e029d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListSwith:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 2674
    const v0, 0x7f0e029f

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfoAppWhiteListDiv:Landroid/view/View;

    .line 2676
    const v0, 0x7f0e00a2

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mButtonView:Landroid/view/View;

    .line 2677
    const v0, 0x7f0e00a3

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    .line 2678
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2679
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2681
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04cd

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2682
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$13;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$13;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2691
    const v0, 0x7f0e00a4

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    .line 2692
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2693
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 2695
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0a04ce

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 2696
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    new-instance v1, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;

    invoke-direct {v1, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$14;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2731
    return-void
.end method

.method private initiateInstall()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 2734
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v2, v2, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iput-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    .line 2737
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    new-array v3, v6, [Ljava/lang/String;

    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->canonicalToCurrentPackageNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 2738
    .local v1, oldName:[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    aget-object v2, v1, v5

    if-eqz v2, :cond_0

    .line 2739
    aget-object v2, v1, v5

    iput-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    .line 2740
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageParser$Package;->setPackageName(Ljava/lang/String;)V

    .line 2744
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v3, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->pkgName:Ljava/lang/String;

    const/16 v4, 0x2000

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2753
    :goto_0
    iget-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.intent.extra.ALLOW_REPLACE"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2754
    :cond_1
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->startInstallConfirm()V

    .line 2762
    :goto_1
    return-void

    .line 2746
    :catch_0
    move-exception v0

    .line 2747
    .local v0, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    .line 2756
    .end local v0           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-boolean v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->localLOGV:Z

    if-eqz v2, :cond_3

    const-string v2, "PackageInstaller"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Replacing existing package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v4, v4, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    :cond_3
    invoke-direct {p0, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_1
.end method

.method private isInstallingUnknownAppsAllowed()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 2765
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "install_non_market_apps"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-lez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private launchSettingsAppAndFinish()V
    .locals 2

    .prologue
    .line 2239
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SECURITY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2240
    .local v0, launchSettingsIntent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2241
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->startActivity(Landroid/content/Intent;)V

    .line 2242
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2243
    return-void
.end method

.method private sendMsg(ILjava/lang/Object;)V
    .locals 2
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 2030
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 2031
    .local v0, message:Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->what:I

    .line 2032
    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2033
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2034
    return-void
.end method

.method private setPmResult(I)V
    .locals 3
    .parameter "pmResult"

    .prologue
    const/4 v1, 0x1

    .line 2770
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2771
    .local v0, result:Landroid/content/Intent;
    const-string v2, "android.intent.extra.INSTALL_RESULT"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2772
    if-ne p1, v1, :cond_0

    const/4 v1, -0x1

    :cond_0
    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->setResult(ILandroid/content/Intent;)V

    .line 2774
    return-void
.end method

.method private showButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2982
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mButtonView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2983
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCancel:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2984
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInstall:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 2985
    return-void
.end method

.method private showDialogInner(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 2247
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->removeDialog(I)V

    .line 2248
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showDialog(I)V

    .line 2249
    return-void
.end method

.method private startInstallConfirm()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2217
    const v0, 0x7f0e021d

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mDoing:Landroid/widget/ImageView;

    .line 2219
    const v0, 0x7f040001

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    check-cast v0, Landroid/view/animation/AnimationSet;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->animation:Landroid/view/animation/Animation;

    .line 2220
    const v0, 0x7f0e0215

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mInfo:Landroid/widget/TextView;

    .line 2222
    const v0, 0x7f0e021c

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mKey:Landroid/view/View;

    .line 2223
    const v0, 0x7f0e021b

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAnimationLayout:Landroid/view/View;

    .line 2227
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScanLayout:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2228
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mScaning:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->scanAnimation:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 2230
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCheckTask:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;

    if-eqz v0, :cond_0

    .line 2231
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCheckTask:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->cancel(Z)Z

    .line 2233
    :cond_0
    new-instance v0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;

    invoke-direct {v0, p0, v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCheckTask:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;

    .line 2234
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mCheckTask:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-virtual {v0, v1, v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$CheckTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 2235
    return-void
.end method

.method private taskGo()V
    .locals 2

    .prologue
    .line 2037
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 2038
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 2039
    monitor-exit v1

    .line 2040
    return-void

    .line 2039
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private taskWaiting()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 2043
    iget-object v1, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->wait:Ljava/lang/Object;

    monitor-enter v1

    .line 2044
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->wait:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 2045
    monitor-exit v1

    .line 2046
    return-void

    .line 2045
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public initView()V
    .locals 11

    .prologue
    const/high16 v10, 0x1000

    const/4 v7, 0x0

    .line 2792
    const/4 v6, 0x0

    .line 2794
    .local v6, systemApp:Z
    const/4 v1, 0x0

    .line 2795
    .local v1, installFlags:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 2797
    .local v5, pm:Landroid/content/pm/PackageManager;
    :try_start_0
    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v9, 0x2000

    invoke-virtual {v5, v8, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v4

    .line 2799
    .local v4, pi:Landroid/content/pm/PackageInfo;
    if-eqz v4, :cond_0

    .line 2800
    or-int/lit8 v1, v1, 0x2

    .line 2801
    iget-object v8, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    .line 2807
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    and-int/lit8 v7, v1, 0x2

    if-eqz v7, :cond_1

    .line 2808
    const-string v7, "PackageInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Replacing package:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2810
    :cond_1
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v7, v7, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    .line 2811
    const-string v7, "PackageInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " nowInstallPackageName ===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, "android.intent.extra.INSTALLER_PACKAGE_NAME"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installerPackageName:Ljava/lang/String;

    .line 2813
    const-string v7, "PackageInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " installerPackageName ===="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2814
    new-instance v3, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    .line 2818
    .local v3, observer:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;
    const-string v7, "PackageInstaller"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " systemApp ==== "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2820
    iget-boolean v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installToPhone:Z

    if-nez v7, :cond_4

    .line 2822
    if-eqz v6, :cond_3

    .line 2824
    const-string v7, "PackageInstaller"

    const-string v8, " auto change where to install "

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2876
    :goto_1
    :try_start_1
    const-string v7, "com.zte.heartyservice"

    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->nowInstallPackageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 2878
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2879
    .local v2, intent:Landroid/content/Intent;
    const/high16 v7, 0x1000

    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2880
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2882
    const-string v7, "com.android.packageinstaller"

    const-string v8, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2883
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2884
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2907
    :goto_2
    return-void

    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #observer:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;
    .restart local v4       #pi:Landroid/content/pm/PackageInfo;
    :cond_2
    move v6, v7

    .line 2801
    goto/16 :goto_0

    .line 2829
    .end local v4           #pi:Landroid/content/pm/PackageInfo;
    .restart local v3       #observer:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;
    :cond_3
    or-int/lit8 v1, v1, 0x8

    .line 2830
    and-int/lit8 v1, v1, -0x11

    goto :goto_1

    .line 2835
    :cond_4
    or-int/lit8 v1, v1, 0x10

    .line 2836
    and-int/lit8 v1, v1, -0x9

    goto :goto_1

    .line 2888
    :cond_5
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installerPackageName:Ljava/lang/String;

    invoke-virtual {v5, v7, v3, v1, v8}, Landroid/content/pm/PackageManager;->installPackage(Landroid/net/Uri;Landroid/content/pm/IPackageInstallObserver;ILjava/lang/String;)V

    .line 2889
    new-instance v2, Landroid/content/Intent;

    const-string v7, "com.zte.heartyservice.intent.action.install_by_heartyservice"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2890
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 2891
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mDoing:Landroid/widget/ImageView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2892
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAnimationLayout:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2893
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mDoing:Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->animation:Landroid/view/animation/Animation;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 2895
    .end local v2           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 2896
    .local v0, e:Ljava/lang/SecurityException;
    new-instance v2, Landroid/content/Intent;

    const-string v7, "android.intent.action.VIEW"

    invoke-direct {v2, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2897
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {v2, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2898
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    const-string v8, "application/vnd.android.package-archive"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2900
    const-string v7, "com.android.packageinstaller"

    const-string v8, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v2, v7, v8}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2901
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2903
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    goto :goto_2

    .line 2805
    .end local v0           #e:Ljava/lang/SecurityException;
    .end local v2           #intent:Landroid/content/Intent;
    .end local v3           #observer:Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$PackageInstallObserver;
    :catch_1
    move-exception v7

    goto/16 :goto_0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .parameter "dialog"

    .prologue
    .line 2786
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    .line 2787
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 2778
    const-string v0, "PackageInstaller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " begin install appxx !!!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->installResult:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2782
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10
    .parameter "icicle"

    .prologue
    const/4 v9, 0x0

    .line 2391
    invoke-super {p0, p1}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2394
    invoke-static {}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->permissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 2397
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2398
    .local v3, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    .line 2399
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    .line 2401
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 2402
    .local v5, scheme:Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, "file"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 2403
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "unexpected scheme "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 2406
    :cond_0
    const-string v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " mPackageURI.getPath() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v8}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2407
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    invoke-virtual {v7}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    .line 2408
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/PackageUtil;->getPackageInfo(Ljava/io/File;)Landroid/content/pm/PackageParser$Package;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    .line 2411
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    if-nez v6, :cond_1

    .line 2412
    const-string v6, "PackageInstaller"

    const-string v7, "Parse error when parsing manifest. Discontinuing installation"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2413
    const/4 v6, 0x3

    invoke-direct {p0, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    .line 2414
    const/4 v6, -0x2

    invoke-direct {p0, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->setPmResult(I)V

    .line 2467
    :goto_0
    return-void

    .line 2419
    :cond_1
    :try_start_0
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v7, "com.zte.heartyservice"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 2421
    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2422
    .local v4, intent22:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2423
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPackageURI:Landroid/net/Uri;

    const-string v7, "application/vnd.android.package-archive"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 2425
    const-string v6, "com.android.packageinstaller"

    const-string v7, "com.android.packageinstaller.PackageInstallerActivity"

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2426
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 2427
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 2437
    .end local v4           #intent22:Landroid/content/Intent;
    :cond_2
    :goto_1
    const v6, 0x7f030097

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->setContentView(I)V

    .line 2439
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->init()V

    .line 2441
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->sourceFile:Ljava/io/File;

    invoke-static {p0, v6, v7}, Lcom/zte/heartyservice/common/utils/PackageUtil;->getAppSnippet(Landroid/app/Activity;Landroid/content/pm/ApplicationInfo;Ljava/io/File;)Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;

    move-result-object v0

    .line 2443
    .local v0, as:Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;
    const v6, 0x7f0e0214

    invoke-static {p0, v0, v6}, Lcom/zte/heartyservice/common/utils/PackageUtil;->initSnippetForNewApp(Landroid/app/Activity;Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;I)Landroid/view/View;

    .line 2445
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getCallingPackage()Ljava/lang/String;

    move-result-object v1

    .line 2446
    .local v1, callerPackage:Ljava/lang/String;
    if-eqz v1, :cond_3

    const-string v6, "android.intent.extra.NOT_UNKNOWN_SOURCE"

    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2449
    :try_start_1
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iput-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    .line 2450
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_3

    .line 2451
    iget-object v6, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_3

    .line 2452
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->initiateInstall()V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 2456
    :catch_0
    move-exception v6

    .line 2461
    :cond_3
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->isInstallingUnknownAppsAllowed()Z

    move-result v6

    if-nez v6, :cond_4

    .line 2463
    const/4 v6, 0x2

    invoke-direct {p0, v6}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->showDialogInner(I)V

    goto :goto_0

    .line 2429
    .end local v0           #as:Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;
    .end local v1           #callerPackage:Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 2431
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "PackageInstaller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " error ============"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-virtual {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->finish()V

    goto :goto_1

    .line 2466
    .end local v2           #e:Ljava/lang/Exception;
    .restart local v0       #as:Lcom/zte/heartyservice/common/utils/PackageUtil$AppSnippet;
    .restart local v1       #callerPackage:Ljava/lang/String;
    :cond_4
    invoke-direct {p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->initiateInstall()V

    goto/16 :goto_0
.end method

.method public onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13
    .parameter "id"
    .parameter "bundle"

    .prologue
    const/4 v9, 0x1

    const/4 v12, 0x0

    const v11, 0x7f0a0174

    const v10, 0x7f0a0173

    .line 2262
    packed-switch p1, :pswitch_data_0

    .line 2386
    const/4 v7, 0x0

    :goto_0
    return-object v7

    .line 2264
    :pswitch_0
    const v6, 0x7f0a046b

    .line 2266
    .local v6, msgId:I
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_0

    .line 2267
    const v6, 0x7f0a046c

    .line 2269
    :cond_0
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a046d

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$3;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$3;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$2;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$2;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 2288
    .end local v6           #msgId:I
    :pswitch_1
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a046e

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a046f

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$5;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$5;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0470

    new-instance v9, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$4;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$4;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto :goto_0

    .line 2313
    :pswitch_2
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0471

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0472

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$6;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$6;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2325
    :pswitch_3
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 2326
    .local v0, appTitle:Ljava/lang/CharSequence;
    const v7, 0x7f0a0474

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2328
    .local v3, dlgText:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0473

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    const v8, 0x7f0a0475

    new-instance v9, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$8;

    invoke-direct {v9, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$8;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v8, v9}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$7;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$7;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2350
    .end local v0           #appTitle:Ljava/lang/CharSequence;
    .end local v3           #dlgText:Ljava/lang/String;
    :pswitch_4
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPkgInfo:Landroid/content/pm/PackageParser$Package;

    iget-object v8, v8, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 2351
    .local v1, appTitle1:Ljava/lang/CharSequence;
    const v7, 0x7f0a0476

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 2353
    .local v4, dlgText1:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0477

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$9;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$9;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2364
    .end local v1           #appTitle1:Ljava/lang/CharSequence;
    .end local v4           #dlgText1:Ljava/lang/String;
    :pswitch_5
    iget-object v7, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mPm:Landroid/content/pm/PackageManager;

    iget-object v8, p0, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->mSourceInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 2365
    .local v2, appTitle2:Ljava/lang/CharSequence;
    const v7, 0x7f0a0479

    new-array v8, v9, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {p0, v7, v8}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 2367
    .local v5, dlgText2:Ljava/lang/String;
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v8, 0x7f0a0478

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$11;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$11;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v11, v8}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    new-instance v8, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$10;

    invoke-direct {v8, p0}, Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity$10;-><init>(Lcom/zte/heartyservice/packageinstaller/PackageInstallerActivity;)V

    invoke-virtual {v7, v10, v8}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v7

    goto/16 :goto_0

    .line 2262
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 0
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 2256
    invoke-super {p0, p1, p2}, Lcom/zte/heartyservice/common/datatype/AbstractHeartyActivity;->onPrepareDialog(ILandroid/app/Dialog;)V

    .line 2257
    check-cast p2, Landroid/app/AlertDialog;

    .end local p2
    invoke-static {p2}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    .line 2258
    return-void
.end method

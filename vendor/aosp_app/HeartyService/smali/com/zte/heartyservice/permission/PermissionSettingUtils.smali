.class public Lcom/zte/heartyservice/permission/PermissionSettingUtils;
.super Ljava/lang/Object;
.source "PermissionSettingUtils.java"


# static fields
.field public static final ACTION_ANTI_PHONE_RECORDING_EVENT:Ljava/lang/String; = "permission.intent.action.ANTI_PHONE_RECORDING_EVENT"

.field public static final ACTION_PERMISSION_EVENT:Ljava/lang/String; = "permission.intent.action.PERMISSION_EVENT"

.field public static final APP_PERMISSION_ASK:I = 0x2

.field public static final APP_PERMISSION_DEFAULT:I = -0x2

.field public static final APP_PERMISSION_DENIED:I = 0x1

.field public static final APP_PERMISSION_GRANTED:I = 0x0

.field public static final APP_PERMISSION_UNSUPPORTED:I = -0x1

.field public static final CONTROL_MODE_PACKAGE:I = 0x0

.field public static final CONTROL_MODE_PERMISSION:I = 0x1

.field private static final DEBUG:Z = false

.field public static final EXTRA_EVENT_TYPE:Ljava/lang/String; = "permission.intent.extra.eventType"

.field public static final EXTRA_NEED_NOTIFY:Ljava/lang/String; = "permission.intent.extra.needNotify"

.field public static final EXTRA_PACKAGE:Ljava/lang/String; = "permission.intent.extra.package"

.field public static final EXTRA_PERMISSION:Ljava/lang/String; = "permission.intent.extra.permission"

.field private static final LAST_CONTROL_MODE:Ljava/lang/String; = "last_control_mode"

.field public static final PACKAGE_ADDED:I = 0x0

.field public static final PACKAGE_REMOVED:I = 0x1

.field public static final PERMISSION_CATEGORY_ACCESS_INTERNET:I = 0x9

.field public static final PERMISSION_CATEGORY_ACCESS_LOCATION:I = 0xa

.field public static final PERMISSION_CATEGORY_AUTO_INVOCATION:I = 0x7

.field public static final PERMISSION_CATEGORY_BLUETOOTH:I = 0xd

.field public static final PERMISSION_CATEGORY_CALENDAR:I = 0xb

.field public static final PERMISSION_CATEGORY_CAMERA:I = 0x12

.field public static final PERMISSION_CATEGORY_CHANGE_DATA:I = 0xe

.field public static final PERMISSION_CATEGORY_CHANGE_WIFI:I = 0xf

.field public static final PERMISSION_CATEGORY_DEFAULT:I = 0x0

.field public static final PERMISSION_CATEGORY_PHONE_CALL:I = 0x2

.field public static final PERMISSION_CATEGORY_PHONE_INFO:I = 0x8

.field public static final PERMISSION_CATEGORY_READ_CALLLOG:I = 0x10

.field public static final PERMISSION_CATEGORY_READ_CONTACT:I = 0x5

.field public static final PERMISSION_CATEGORY_READ_MESSAGE:I = 0x3

.field public static final PERMISSION_CATEGORY_RECORD_AUDIO:I = 0xc

.field public static final PERMISSION_CATEGORY_SEND_MMS:I = 0x13

.field public static final PERMISSION_CATEGORY_SEND_SMS:I = 0x1

.field public static final PERMISSION_CATEGORY_WRITE_CALLLOG:I = 0x11

.field public static final PERMISSION_CATEGORY_WRITE_CONTACT:I = 0x6

.field public static final PERMISSION_CATEGORY_WRITE_MESSAGE:I = 0x4

.field private static final PERMISSION_PERF_NAME:Ljava/lang/String; = "heartservice_permission_pref"

.field private static final SCAN_PERMISSION_NUM:Ljava/lang/String; = "scan_permission_number"

.field private static final SCAN_PKG_NUM:Ljava/lang/String; = "scan_pkg_number"

.field private static final SEND_MMS:Ljava/lang/String; = "android.permission.ZTE_SEND_MMS"

.field private static final TAG:Ljava/lang/String; = "PermissionSettingUtils"

.field private static mContext:Landroid/content/Context;

.field private static mPermissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

.field public static final permissionsOfCalendar:[Ljava/lang/String;

.field public static final permissionsOfCamera:[Ljava/lang/String;

.field public static final permissionsOfEnableBluetooth:[Ljava/lang/String;

.field public static final permissionsOfEnableData:[Ljava/lang/String;

.field public static final permissionsOfEnableWifi:[Ljava/lang/String;

.field public static final permissionsOfInternet:[Ljava/lang/String;

.field public static final permissionsOfLocation:[Ljava/lang/String;

.field public static final permissionsOfPhoneCall:[Ljava/lang/String;

.field public static final permissionsOfPhoneInfo:[Ljava/lang/String;

.field public static final permissionsOfReadCallLog:[Ljava/lang/String;

.field public static final permissionsOfReadContact:[Ljava/lang/String;

.field public static final permissionsOfReadMessage:[Ljava/lang/String;

.field public static final permissionsOfRecordAudio:[Ljava/lang/String;

.field public static final permissionsOfSendSms:[Ljava/lang/String;

.field public static final permissionsOfWriteCallLog:[Ljava/lang/String;

.field public static final permissionsOfWriteContact:[Ljava/lang/String;

.field public static final permissionsOfWriteMessage:[Ljava/lang/String;

.field private static sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

.field private static securityExtentionVersion:I


# instance fields
.field private trustPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field

.field private unTrustPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 76
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.SEND_SMS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfSendSms:[Ljava/lang/String;

    .line 82
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.CALL_PHONE"

    aput-object v1, v0, v3

    const-string v1, "android.permission.PROCESS_OUTGOING_CALLS"

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfPhoneCall:[Ljava/lang/String;

    .line 103
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CONTACTS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadContact:[Ljava/lang/String;

    .line 104
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_CONTACTS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteContact:[Ljava/lang/String;

    .line 107
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALL_LOG"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadCallLog:[Ljava/lang/String;

    .line 108
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_CALL_LOG"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteCallLog:[Ljava/lang/String;

    .line 111
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "android.permission.READ_SMS"

    aput-object v1, v0, v3

    const-string v1, "android.permission.RECEIVE_SMS"

    aput-object v1, v0, v4

    const-string v1, "android.permission.RECEIVE_MMS"

    aput-object v1, v0, v5

    const/4 v1, 0x3

    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadMessage:[Ljava/lang/String;

    .line 115
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.WRITE_SMS"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteMessage:[Ljava/lang/String;

    .line 119
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.READ_PHONE_STATE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfPhoneInfo:[Ljava/lang/String;

    .line 121
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.INTERNET"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfInternet:[Ljava/lang/String;

    .line 123
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    aput-object v1, v0, v3

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfLocation:[Ljava/lang/String;

    .line 126
    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "android.permission.READ_CALENDAR"

    aput-object v1, v0, v3

    const-string v1, "android.permission.WRITE_CALENDAR"

    aput-object v1, v0, v4

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfCalendar:[Ljava/lang/String;

    .line 130
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.RECORD_AUDIO"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfRecordAudio:[Ljava/lang/String;

    .line 132
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableBluetooth:[Ljava/lang/String;

    .line 134
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableData:[Ljava/lang/String;

    .line 136
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableWifi:[Ljava/lang/String;

    .line 138
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "android.permission.CAMERA"

    aput-object v1, v0, v3

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfCamera:[Ljava/lang/String;

    .line 153
    sput-object v6, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    .line 154
    sput-object v6, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mPermissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 155
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->securityExtentionVersion:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 974
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->trustPackages:Ljava/util/ArrayList;

    .line 160
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    .line 975
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    .line 976
    invoke-direct {p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->checkSecurityExtentionEnabled()V

    .line 977
    return-void
.end method

.method private cachePackages()V
    .locals 5

    .prologue
    .line 548
    sget-object v3, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v2

    .line 549
    .local v2, sourcePackages:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    .line 550
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->trustPackages:Ljava/util/ArrayList;

    .line 551
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 552
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_1

    .line 553
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->trustPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 554
    :cond_1
    const-string v3, "com.zte.heartyservice"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.tencent.android.qqplaza4zte"

    iget-object v4, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-object v4, Lcom/zte/heartyservice/common/contant/HeartyServiceIntent;->BUILT_IN_PACKAGE:[Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 559
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 562
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_2
    return-void
.end method

.method private checkSecurityExtentionEnabled()V
    .locals 4

    .prologue
    .line 671
    sget-object v2, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    if-nez v2, :cond_0

    .line 672
    const-string v2, "privacy"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 673
    .local v0, privacy:Landroid/os/IBinder;
    if-nez v0, :cond_1

    .line 680
    .end local v0           #privacy:Landroid/os/IBinder;
    :cond_0
    :goto_0
    return-void

    .line 676
    .restart local v0       #privacy:Landroid/os/IBinder;
    :cond_1
    invoke-static {v0}, Lcom/zte/privacy/IZTEPrivacyManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/zte/privacy/IZTEPrivacyManager;

    move-result-object v1

    .line 677
    .local v1, privacyService:Lcom/zte/privacy/IZTEPrivacyManager;
    new-instance v2, Lcom/zte/privacy/ZTEPrivacyManager;

    sget-object v3, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v1}, Lcom/zte/privacy/ZTEPrivacyManager;-><init>(Landroid/content/Context;Lcom/zte/privacy/IZTEPrivacyManager;)V

    sput-object v2, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    .line 678
    sget-object v2, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v2}, Lcom/zte/privacy/ZTEPrivacyManager;->getSecurityExtentionVersion()I

    move-result v2

    sput v2, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->securityExtentionVersion:I

    goto :goto_0
.end method

.method public static getInstance()Lcom/zte/heartyservice/permission/PermissionSettingUtils;
    .locals 1

    .prologue
    .line 980
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mPermissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    if-nez v0, :cond_0

    .line 981
    new-instance v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    invoke-direct {v0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mPermissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    .line 983
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mPermissionUtils:Lcom/zte/heartyservice/permission/PermissionSettingUtils;

    return-object v0
.end method

.method private getPackageUid(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    const/4 v1, 0x0

    .line 844
    :try_start_0
    sget-object v2, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 845
    .local v0, pkgInfo:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    .line 846
    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v2, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 850
    .end local v0           #pkgInfo:Landroid/content/pm/PackageInfo;
    :cond_0
    :goto_0
    return v1

    .line 848
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method private isValidatedPackage(Landroid/content/pm/PackageInfo;)Z
    .locals 2
    .parameter "pi"

    .prologue
    .line 472
    iget-object v0, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.zte.heartyservice"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Landroid/content/pm/PackageInfo;->sharedUserId:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 473
    :cond_0
    const/4 v0, 0x0

    .line 476
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clearPackagePermissionSetting(Ljava/lang/String;)V
    .locals 2
    .parameter "pkgName"

    .prologue
    .line 966
    sget v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->securityExtentionVersion:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    if-nez v0, :cond_1

    .line 972
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v0, p1}, Lcom/zte/privacy/ZTEPrivacyManager;->clearPackagePermissionSetting(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public disableAllPermissions(Ljava/lang/String;)V
    .locals 7
    .parameter "packageName"

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAllPermissionCategory()Ljava/util/ArrayList;

    move-result-object v0

    .line 186
    .local v0, allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 187
    .local v2, permCategory:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 188
    .local v3, permissionCategory:I
    invoke-virtual {p0, p1, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 189
    const-string v4, "PermissionSettingUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "disableAllPermission::permissionCategory is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", pkg is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v4, 0x1

    invoke-virtual {p0, v3, p1, v4}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->setAppCategoryPermission(ILjava/lang/String;I)V

    goto :goto_0

    .line 193
    .end local v2           #permCategory:Ljava/lang/Integer;
    .end local v3           #permissionCategory:I
    :cond_1
    return-void
.end method

.method public doPermissionScan()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    .locals 18

    .prologue
    .line 631
    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v14

    .line 632
    .local v14, sourcePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAllPermissionCategory()Ljava/util/ArrayList;

    move-result-object v1

    .line 633
    .local v1, allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 634
    .local v4, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v13, 0x0

    .line 636
    .local v13, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v11

    .line 637
    .local v11, pkgNum:I
    const/4 v9, 0x0

    .line 639
    .local v9, permNum:I
    const/4 v2, 0x0

    .line 640
    .local v2, appNum:I
    const/4 v5, 0x0

    .line 642
    .local v5, hasPermission:I
    invoke-virtual {v14}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/PackageInfo;

    .line 643
    .local v10, pi:Landroid/content/pm/PackageInfo;
    const/4 v5, 0x0

    .line 645
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    .line 646
    .local v8, permCategory:Ljava/lang/Integer;
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 647
    .local v3, category:I
    iget-object v15, v10, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v15, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 648
    add-int/lit8 v9, v9, 0x1

    .line 649
    const/4 v5, 0x1

    goto :goto_1

    .line 652
    .end local v3           #category:I
    .end local v8           #permCategory:Ljava/lang/Integer;
    :cond_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 654
    .end local v7           #i$:Ljava/util/Iterator;
    .end local v10           #pi:Landroid/content/pm/PackageInfo;
    :cond_2
    sget-object v15, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    const-string v16, "heartservice_permission_pref"

    const/16 v17, 0x0

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v13

    .line 655
    invoke-interface {v13}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 656
    const-string v15, "scan_pkg_number"

    invoke-interface {v4, v15, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 657
    const-string v15, "scan_permission_number"

    invoke-interface {v4, v15, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 658
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 660
    new-instance v12, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;

    invoke-direct {v12}, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;-><init>()V

    .line 661
    .local v12, scanResult:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    iput v11, v12, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->appnum:I

    .line 662
    iput v9, v12, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->permissionnum:I

    .line 663
    iput v2, v12, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->permissionAppNum:I

    .line 667
    return-object v12
.end method

.method public getAllPermissionCategory()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v7, 0xb

    const/16 v6, 0xa

    const/16 v5, 0x8

    const/4 v4, 0x6

    const/4 v3, 0x1

    .line 395
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 396
    .local v0, allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 399
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 409
    :cond_0
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 411
    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 413
    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 414
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 415
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x11

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 419
    :cond_1
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 420
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 423
    :cond_2
    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 424
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 427
    :cond_3
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v5}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 429
    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 430
    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 433
    :cond_4
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 434
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xd

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    :cond_5
    invoke-static {v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 437
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 439
    :cond_6
    const/16 v1, 0x9

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 440
    new-instance v1, Ljava/lang/Integer;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 443
    :cond_7
    return-object v0
.end method

.method public getAppCategoryPermissionType(ILjava/lang/String;)I
    .locals 7
    .parameter "category"
    .parameter "pkgName"

    .prologue
    const/16 v6, 0xa

    const/4 v3, -0x1

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 683
    sget v5, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->securityExtentionVersion:I

    if-eq v5, v3, :cond_0

    sget-object v5, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    if-nez v5, :cond_2

    :cond_0
    move v1, v3

    .line 839
    :cond_1
    :goto_0
    :pswitch_0
    return v1

    .line 687
    :cond_2
    invoke-virtual {p0, p2, p1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_3

    move v1, v3

    .line 688
    goto :goto_0

    .line 694
    :cond_3
    sget-object v3, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v3, p2}, Lcom/zte/privacy/ZTEPrivacyManager;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    .line 695
    .local v0, setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    if-nez v0, :cond_7

    .line 696
    const/16 v3, 0xf

    if-eq p1, v3, :cond_4

    const/16 v3, 0xd

    if-eq p1, v3, :cond_4

    const/16 v3, 0xe

    if-ne p1, v3, :cond_6

    .line 699
    :cond_4
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v3

    if-ne v3, v1, :cond_5

    move v1, v4

    .line 701
    goto :goto_0

    :cond_5
    move v1, v2

    .line 704
    goto :goto_0

    :cond_6
    move v1, v2

    .line 707
    goto :goto_0

    .line 739
    :cond_7
    const/4 v3, 0x5

    if-ne p1, v3, :cond_8

    .line 740
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 742
    :cond_8
    const/4 v3, 0x6

    if-ne p1, v3, :cond_9

    .line 743
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 745
    :cond_9
    const/16 v3, 0x10

    if-ne p1, v3, :cond_a

    .line 746
    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 747
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calllog:I

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 750
    :cond_a
    const/16 v3, 0x11

    if-ne p1, v3, :cond_b

    .line 751
    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 752
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calllog:I

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 755
    :cond_b
    const/4 v3, 0x3

    if-ne p1, v3, :cond_c

    .line 756
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    iget v4, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    add-int/2addr v3, v4

    iget v4, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    add-int/2addr v3, v4

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 759
    :cond_c
    const/4 v3, 0x4

    if-ne p1, v3, :cond_d

    .line 760
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    if-nez v3, :cond_1

    move v1, v2

    goto :goto_0

    .line 765
    :cond_d
    if-ne p1, v1, :cond_e

    .line 766
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    goto :goto_0

    .line 767
    :cond_e
    if-ne p1, v4, :cond_f

    .line 768
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    goto :goto_0

    .line 769
    :cond_f
    const/16 v3, 0x8

    if-ne p1, v3, :cond_10

    .line 770
    iget v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    goto/16 :goto_0

    .line 771
    :cond_10
    if-ne p1, v6, :cond_11

    .line 772
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    iget v4, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    add-int/2addr v3, v4

    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    .line 774
    :cond_11
    const/16 v3, 0x9

    if-ne p1, v3, :cond_12

    .line 775
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    .line 777
    :cond_12
    const/16 v3, 0xb

    if-ne p1, v3, :cond_14

    .line 778
    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 779
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calendar:I

    iget v4, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calendar:I

    add-int/2addr v3, v4

    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_13
    move v1, v2

    .line 782
    goto/16 :goto_0

    .line 785
    :cond_14
    const/16 v3, 0xc

    if-ne p1, v3, :cond_15

    .line 786
    const/4 v3, 0x6

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 787
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->record_audio:I

    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    .line 789
    :cond_15
    const/16 v3, 0xd

    if-ne p1, v3, :cond_16

    .line 790
    const/4 v3, 0x7

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 791
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->bluetooth:I

    packed-switch v3, :pswitch_data_0

    move v1, v2

    .line 799
    goto/16 :goto_0

    :pswitch_1
    move v1, v2

    .line 793
    goto/16 :goto_0

    :pswitch_2
    move v1, v4

    .line 797
    goto/16 :goto_0

    .line 802
    :cond_16
    const/16 v3, 0xe

    if-ne p1, v3, :cond_17

    .line 803
    const/16 v3, 0x8

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 804
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_net_state:I

    packed-switch v3, :pswitch_data_1

    move v1, v2

    .line 812
    goto/16 :goto_0

    :pswitch_3
    move v1, v2

    .line 806
    goto/16 :goto_0

    :pswitch_4
    move v1, v4

    .line 810
    goto/16 :goto_0

    .line 815
    :cond_17
    const/16 v3, 0xf

    if-ne p1, v3, :cond_18

    .line 816
    const/16 v3, 0x9

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 817
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_wifi_state:I

    packed-switch v3, :pswitch_data_2

    move v1, v2

    .line 825
    goto/16 :goto_0

    :pswitch_5
    move v1, v2

    .line 819
    goto/16 :goto_0

    :pswitch_6
    move v1, v4

    .line 823
    goto/16 :goto_0

    .line 829
    :cond_18
    const/16 v3, 0x12

    if-ne p1, v3, :cond_19

    .line 830
    const/16 v3, 0xb

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 831
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->camera:I

    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    .line 834
    :cond_19
    const/16 v3, 0x13

    if-ne p1, v3, :cond_1a

    .line 835
    const/16 v3, 0xc

    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 836
    iget v3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_mms:I

    if-nez v3, :cond_1

    move v1, v2

    goto/16 :goto_0

    :cond_1a
    move v1, v2

    .line 839
    goto/16 :goto_0

    .line 791
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 804
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch

    .line 817
    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public getLastControlMode()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 600
    const/4 v1, 0x0

    .line 601
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    const-string v3, "heartservice_permission_pref"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 602
    const-string v2, "last_control_mode"

    invoke-interface {v1, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 603
    .local v0, lastMode:I
    return v0
.end method

.method public getLastPermissionScanResults()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 618
    const/4 v3, 0x0

    .line 619
    .local v3, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    const-string v5, "heartservice_permission_pref"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 620
    const-string v4, "scan_pkg_number"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 621
    .local v1, pkgNum:I
    const-string v4, "scan_permission_number"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 622
    .local v0, permNum:I
    new-instance v2, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;

    invoke-direct {v2}, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;-><init>()V

    .line 623
    .local v2, scanResult:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    iput v1, v2, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->appnum:I

    .line 624
    iput v0, v2, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->permissionnum:I

    .line 627
    return-object v2
.end method

.method public getPackagePermissionNum(Ljava/lang/String;)I
    .locals 6
    .parameter "packageName"

    .prologue
    .line 171
    const/4 v4, 0x0

    .line 172
    .local v4, permissionNum:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getAllPermissionCategory()Ljava/util/ArrayList;

    move-result-object v0

    .line 173
    .local v0, allPermissionCategory:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 174
    .local v2, permCategory:Ljava/lang/Integer;
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 175
    .local v3, permissionCategory:I
    invoke-virtual {p0, p1, v3}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    .end local v2           #permCategory:Ljava/lang/Integer;
    .end local v3           #permissionCategory:I
    :cond_1
    return v4
.end method

.method public getPackagesUsingPermissionCategory(I)Ljava/util/List;
    .locals 7
    .parameter "category"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 448
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 449
    .local v4, targetPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 451
    .local v3, sourcePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    if-nez v3, :cond_1

    .line 452
    const/4 v4, 0x0

    .line 461
    .end local v4           #targetPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_0
    return-object v4

    .line 454
    .restart local v4       #targetPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 455
    .local v2, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, p1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 456
    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 457
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "untrusted pkg : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " has using the permission in category : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 458
    .local v1, msg:Ljava/lang/String;
    const-string v5, "PermissionSettingUtils"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getPackagesUsingPermissionCategory(IZ)Ljava/util/List;
    .locals 7
    .parameter "category"
    .parameter "includeSys"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 480
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v2, targetPackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v3

    .line 482
    .local v3, trustSourcePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    const/4 v5, 0x0

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getTrustPackages(Z)Ljava/util/ArrayList;

    move-result-object v4

    .line 484
    .local v4, untrustSourcePackages:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    if-eqz v4, :cond_1

    .line 485
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 486
    .local v1, pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, p1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 487
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 494
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_1
    if-ne v6, p2, :cond_3

    .line 495
    if-eqz v3, :cond_3

    .line 496
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0       #i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 497
    .restart local v1       #pi:Landroid/content/pm/PackageInfo;
    iget-object v5, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v5, p1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isPackagehasPermissionInCategory(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    invoke-direct {p0, v1}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->isValidatedPackage(Landroid/content/pm/PackageInfo;)Z

    move-result v5

    if-ne v6, v5, :cond_2

    .line 499
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 508
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    return-object v2
.end method

.method public getPermissionDescription(I)Ljava/lang/String;
    .locals 3
    .parameter "category"

    .prologue
    const v2, 0x7f0a0286

    .line 267
    sget-object v1, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 279
    .local v0, res:Landroid/content/res/Resources;
    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 280
    const v1, 0x7f0a060b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 319
    :goto_0
    return-object v1

    .line 281
    :cond_0
    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    .line 282
    const v1, 0x7f0a060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 283
    :cond_1
    const/16 v1, 0x10

    if-ne p1, v1, :cond_2

    .line 284
    const v1, 0x7f0a0609

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 285
    :cond_2
    const/4 v1, 0x6

    if-ne p1, v1, :cond_3

    .line 286
    const v1, 0x7f0a060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 287
    :cond_3
    const/4 v1, 0x4

    if-ne p1, v1, :cond_4

    .line 288
    const v1, 0x7f0a060e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 289
    :cond_4
    const/16 v1, 0x11

    if-ne p1, v1, :cond_5

    .line 290
    const v1, 0x7f0a060a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 294
    :cond_5
    const/4 v1, 0x1

    if-ne p1, v1, :cond_6

    .line 295
    const v1, 0x7f0a0282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_6
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    .line 297
    const v1, 0x7f0a0283

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 298
    :cond_7
    const/16 v1, 0x8

    if-ne p1, v1, :cond_8

    .line 299
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 300
    :cond_8
    const/16 v1, 0x9

    if-ne p1, v1, :cond_9

    .line 301
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 302
    :cond_9
    const/16 v1, 0xa

    if-ne p1, v1, :cond_a

    .line 303
    const v1, 0x7f0a0287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 304
    :cond_a
    const/16 v1, 0xb

    if-ne p1, v1, :cond_b

    .line 305
    const v1, 0x7f0a04d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 306
    :cond_b
    const/16 v1, 0xc

    if-ne p1, v1, :cond_c

    .line 307
    const v1, 0x7f0a053d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 308
    :cond_c
    const/16 v1, 0xd

    if-ne p1, v1, :cond_d

    .line 309
    const v1, 0x7f0a053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 310
    :cond_d
    const/16 v1, 0xf

    if-ne p1, v1, :cond_e

    .line 311
    const v1, 0x7f0a0540

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 312
    :cond_e
    const/16 v1, 0xe

    if-ne p1, v1, :cond_f

    .line 313
    const v1, 0x7f0a053f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 314
    :cond_f
    const/16 v1, 0x12

    if-ne p1, v1, :cond_10

    .line 315
    const v1, 0x7f0a0543

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 316
    :cond_10
    const/16 v1, 0x13

    if-ne p1, v1, :cond_11

    .line 317
    const v1, 0x7f0a060f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 319
    :cond_11
    const-string v1, "no such permission"

    goto/16 :goto_0
.end method

.method public getPermissionDescription(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "permission"

    .prologue
    const v2, 0x7f0a0286

    .line 323
    sget-object v1, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 324
    .local v0, res:Landroid/content/res/Resources;
    const-string v1, "android.permission.SEND_SMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 325
    const v1, 0x7f0a0282

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 391
    .end local p1
    :cond_0
    :goto_0
    return-object p1

    .line 326
    .restart local p1
    :cond_1
    const-string v1, "android.permission.CALL_PHONE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 327
    const v1, 0x7f0a0283

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 346
    :cond_2
    const-string v1, "android.permission.READ_CONTACTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 347
    const v1, 0x7f0a060b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 348
    :cond_3
    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 349
    const v1, 0x7f0a060c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 350
    :cond_4
    const-string v1, "android.permission.READ_CALL_LOG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 351
    const v1, 0x7f0a0609

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 352
    :cond_5
    const-string v1, "android.permission.WRITE_CALL_LOG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 353
    const v1, 0x7f0a060a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 354
    :cond_6
    const-string v1, "android.permission.RECEIVE_SMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.permission.READ_SMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.permission.RECEIVE_MMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "android.permission.RECEIVE_WAP_PUSH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 358
    :cond_7
    const v1, 0x7f0a060d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 359
    :cond_8
    const-string v1, "android.permission.WRITE_SMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 360
    const v1, 0x7f0a060e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 364
    :cond_9
    const-string v1, "android.permission.READ_PHONE_INFO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 365
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 366
    :cond_a
    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 368
    :cond_b
    const v1, 0x7f0a0287

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 369
    :cond_c
    const-string v1, "android.permission.READ_PHONE_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 370
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 371
    :cond_d
    const-string v1, "android.permission.READ_CALENDAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "android.permission.WRITE_CALENDAR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 373
    :cond_e
    const v1, 0x7f0a04d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 375
    :cond_f
    const-string v1, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "android.permission.INTERNET"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 377
    :cond_10
    const v1, 0x7f0a0541

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 378
    :cond_11
    const-string v1, "android.permission.RECORD_AUDIO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    .line 379
    const v1, 0x7f0a053d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 380
    :cond_12
    const-string v1, "android.permission.BLUETOOTH_ADMIN"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 381
    const v1, 0x7f0a053e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 382
    :cond_13
    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 383
    const v1, 0x7f0a0540

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 384
    :cond_14
    const-string v1, "android.permission.CHANGE_NETWORK_STATE"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 385
    const v1, 0x7f0a053f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 386
    :cond_15
    const-string v1, "android.permission.CAMERA"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 387
    const v1, 0x7f0a0543

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0

    .line 388
    :cond_16
    const-string v1, "android.permission.ZTE_SEND_MMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 389
    const v1, 0x7f0a060f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_0
.end method

.method public getSecurityExtentionVersion()I
    .locals 1

    .prologue
    .line 587
    sget v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->securityExtentionVersion:I

    return v0
.end method

.method public getTrustPackages(Z)Ljava/util/ArrayList;
    .locals 1
    .parameter "trustFlag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    if-nez p1, :cond_1

    .line 567
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 568
    invoke-direct {p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->cachePackages()V

    .line 570
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    .line 578
    :goto_0
    return-object v0

    .line 572
    :cond_1
    const/4 v0, 0x1

    if-ne v0, p1, :cond_3

    .line 573
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->trustPackages:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 574
    invoke-direct {p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->cachePackages()V

    .line 576
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->trustPackages:Ljava/util/ArrayList;

    goto :goto_0

    .line 578
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPackagehasPermissionInCategory(Ljava/lang/String;I)Z
    .locals 6
    .parameter "packageName"
    .parameter "category"

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x10

    .line 196
    const/4 v0, 0x0

    .line 208
    .local v0, checkPermissions:[Ljava/lang/String;
    const/4 v4, 0x5

    if-ne p2, v4, :cond_1

    .line 209
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadContact:[Ljava/lang/String;

    .line 256
    :cond_0
    :goto_0
    array-length v4, v0

    add-int/lit8 v1, v4, -0x1

    .local v1, i:I
    :goto_1
    if-ltz v1, :cond_15

    .line 257
    aget-object v2, v0, v1

    .line 258
    .local v2, perm:Ljava/lang/String;
    sget-object v4, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v2, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_14

    .line 263
    .end local v2           #perm:Ljava/lang/String;
    :goto_2
    return v3

    .line 210
    .end local v1           #i:I
    :cond_1
    const/4 v4, 0x6

    if-ne p2, v4, :cond_2

    .line 211
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteContact:[Ljava/lang/String;

    goto :goto_0

    .line 212
    :cond_2
    if-ne p2, v5, :cond_4

    .line 213
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_3

    .line 214
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadContact:[Ljava/lang/String;

    goto :goto_0

    .line 216
    :cond_3
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadCallLog:[Ljava/lang/String;

    goto :goto_0

    .line 218
    :cond_4
    const/16 v4, 0x11

    if-ne p2, v4, :cond_6

    .line 219
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v4, v5, :cond_5

    .line 220
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteContact:[Ljava/lang/String;

    goto :goto_0

    .line 222
    :cond_5
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteCallLog:[Ljava/lang/String;

    goto :goto_0

    .line 224
    :cond_6
    const/4 v4, 0x3

    if-ne p2, v4, :cond_7

    .line 225
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfReadMessage:[Ljava/lang/String;

    goto :goto_0

    .line 226
    :cond_7
    const/4 v4, 0x4

    if-ne p2, v4, :cond_8

    .line 227
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfWriteMessage:[Ljava/lang/String;

    goto :goto_0

    .line 231
    :cond_8
    if-eq p2, v3, :cond_9

    const/16 v4, 0x13

    if-ne p2, v4, :cond_a

    .line 233
    :cond_9
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfSendSms:[Ljava/lang/String;

    goto :goto_0

    .line 234
    :cond_a
    const/4 v4, 0x2

    if-ne p2, v4, :cond_b

    .line 235
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfPhoneCall:[Ljava/lang/String;

    goto :goto_0

    .line 236
    :cond_b
    const/16 v4, 0x8

    if-ne p2, v4, :cond_c

    .line 237
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfPhoneInfo:[Ljava/lang/String;

    goto :goto_0

    .line 238
    :cond_c
    const/16 v4, 0x9

    if-ne p2, v4, :cond_d

    .line 239
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfInternet:[Ljava/lang/String;

    goto :goto_0

    .line 240
    :cond_d
    const/16 v4, 0xa

    if-ne p2, v4, :cond_e

    .line 241
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfLocation:[Ljava/lang/String;

    goto :goto_0

    .line 242
    :cond_e
    const/16 v4, 0xb

    if-ne p2, v4, :cond_f

    .line 243
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfCalendar:[Ljava/lang/String;

    goto :goto_0

    .line 244
    :cond_f
    const/16 v4, 0xc

    if-ne p2, v4, :cond_10

    .line 245
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfRecordAudio:[Ljava/lang/String;

    goto :goto_0

    .line 246
    :cond_10
    const/16 v4, 0xd

    if-ne p2, v4, :cond_11

    .line 247
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableBluetooth:[Ljava/lang/String;

    goto :goto_0

    .line 248
    :cond_11
    const/16 v4, 0xe

    if-ne p2, v4, :cond_12

    .line 249
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableData:[Ljava/lang/String;

    goto :goto_0

    .line 250
    :cond_12
    const/16 v4, 0xf

    if-ne p2, v4, :cond_13

    .line 251
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfEnableWifi:[Ljava/lang/String;

    goto/16 :goto_0

    .line 252
    :cond_13
    const/16 v4, 0x12

    if-ne p2, v4, :cond_0

    .line 253
    sget-object v0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->permissionsOfCamera:[Ljava/lang/String;

    goto/16 :goto_0

    .line 256
    .restart local v1       #i:I
    .restart local v2       #perm:Ljava/lang/String;
    :cond_14
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    .line 263
    .end local v2           #perm:Ljava/lang/String;
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_2
.end method

.method public resetPackages()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 582
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    .line 583
    iput-object v0, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->trustPackages:Ljava/util/ArrayList;

    .line 584
    return-void
.end method

.method public setAppCategoryPermission(ILjava/lang/String;I)V
    .locals 8
    .parameter "category"
    .parameter "pkgName"
    .parameter "permissionType"

    .prologue
    const/16 v7, 0x9

    const/16 v6, 0x8

    const/4 v5, 0x6

    const/4 v4, 0x1

    const/16 v3, 0xa

    .line 855
    sget v1, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->securityExtentionVersion:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    if-nez v1, :cond_1

    .line 963
    :cond_0
    :goto_0
    return-void

    .line 859
    :cond_1
    sget-object v1, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v1, p2}, Lcom/zte/privacy/ZTEPrivacyManager;->getPackageSetting(Ljava/lang/String;)Lcom/zte/privacy/ZTEPackagePermissionSetting;

    move-result-object v0

    .line 860
    .local v0, setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    if-nez v0, :cond_2

    .line 861
    new-instance v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;

    .end local v0           #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    invoke-direct {v0}, Lcom/zte/privacy/ZTEPackagePermissionSetting;-><init>()V

    .line 862
    .restart local v0       #setting:Lcom/zte/privacy/ZTEPackagePermissionSetting;
    iput-object p2, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->pkgName:Ljava/lang/String;

    .line 863
    invoke-direct {p0, p2}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->getPackageUid(Ljava/lang/String;)I

    move-result v1

    iput v1, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->uid:I

    .line 886
    :cond_2
    const/4 v1, 0x5

    if-ne p1, v1, :cond_4

    .line 887
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_contacts:I

    .line 962
    :cond_3
    :goto_1
    sget-object v1, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->sPrivacyManager:Lcom/zte/privacy/ZTEPrivacyManager;

    invoke-virtual {v1, v0}, Lcom/zte/privacy/ZTEPrivacyManager;->savePackageSetting(Lcom/zte/privacy/ZTEPackagePermissionSetting;)V

    goto :goto_0

    .line 888
    :cond_4
    if-ne p1, v5, :cond_5

    .line 889
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_contacts:I

    goto :goto_1

    .line 890
    :cond_5
    const/16 v1, 0x10

    if-ne p1, v1, :cond_6

    .line 891
    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 892
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calllog:I

    goto :goto_1

    .line 894
    :cond_6
    const/16 v1, 0x11

    if-ne p1, v1, :cond_7

    .line 895
    invoke-static {v3}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 896
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calllog:I

    goto :goto_1

    .line 898
    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_8

    .line 899
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_sms:I

    .line 900
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_mms:I

    .line 901
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->receive_wap_push:I

    .line 902
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_sms:I

    goto :goto_1

    .line 903
    :cond_8
    const/4 v1, 0x4

    if-ne p1, v1, :cond_9

    .line 904
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_sms:I

    goto :goto_1

    .line 908
    :cond_9
    if-ne p1, v4, :cond_a

    .line 909
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_sms:I

    goto :goto_1

    .line 910
    :cond_a
    const/4 v1, 0x2

    if-ne p1, v1, :cond_b

    .line 911
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->call_phone:I

    goto :goto_1

    .line 912
    :cond_b
    if-ne p1, v6, :cond_c

    .line 913
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_phone_state:I

    goto :goto_1

    .line 914
    :cond_c
    if-ne p1, v3, :cond_d

    .line 915
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_fine_location:I

    .line 916
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_coarse_location:I

    goto :goto_1

    .line 917
    :cond_d
    if-ne p1, v7, :cond_e

    .line 918
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->access_internet:I

    goto :goto_1

    .line 919
    :cond_e
    const/16 v1, 0xb

    if-ne p1, v1, :cond_f

    .line 920
    invoke-static {v4}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 921
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->read_calendar:I

    .line 922
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->write_calendar:I

    goto :goto_1

    .line 925
    :cond_f
    const/16 v1, 0xc

    if-ne p1, v1, :cond_10

    .line 926
    invoke-static {v5}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 927
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->record_audio:I

    goto :goto_1

    .line 929
    :cond_10
    const/16 v1, 0xd

    if-ne p1, v1, :cond_11

    .line 930
    const/4 v1, 0x7

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 931
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->bluetooth:I

    goto :goto_1

    .line 933
    :cond_11
    const/16 v1, 0xe

    if-ne p1, v1, :cond_12

    .line 934
    invoke-static {v6}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 935
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_net_state:I

    goto/16 :goto_1

    .line 937
    :cond_12
    const/16 v1, 0xf

    if-ne p1, v1, :cond_13

    .line 938
    invoke-static {v7}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 939
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->change_wifi_state:I

    goto/16 :goto_1

    .line 942
    :cond_13
    const/16 v1, 0x12

    if-ne p1, v1, :cond_14

    .line 943
    const/16 v1, 0xb

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 944
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->camera:I

    goto/16 :goto_1

    .line 947
    :cond_14
    const/16 v1, 0x13

    if-ne p1, v1, :cond_3

    .line 948
    const/16 v1, 0xc

    invoke-static {v1}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->checkFeatureSurpport(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 949
    iput p3, v0, Lcom/zte/privacy/ZTEPackagePermissionSetting;->send_mms:I

    goto/16 :goto_1
.end method

.method public setLastControlMode(I)V
    .locals 5
    .parameter "mode"

    .prologue
    .line 591
    const/4 v0, 0x0

    .line 592
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v1, 0x0

    .line 593
    .local v1, sharedPreferences:Landroid/content/SharedPreferences;
    sget-object v2, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    const-string v3, "heartservice_permission_pref"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 594
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 595
    const-string v2, "last_control_mode"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 596
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 597
    return-void
.end method

.method public updateCachePackages(Ljava/lang/String;I)V
    .locals 6
    .parameter "packageName"
    .parameter "type"

    .prologue
    .line 518
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    if-nez v3, :cond_0

    .line 545
    :goto_0
    return-void

    .line 521
    :cond_0
    iget-object v4, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    monitor-enter v4

    .line 523
    if-nez p2, :cond_4

    .line 524
    :try_start_0
    sget-object v3, Lcom/zte/heartyservice/common/contant/HeartyServiceIntent;->BUILT_IN_PACKAGE:[Ljava/lang/String;

    invoke-static {p1, v3}, Lcom/zte/heartyservice/common/utils/StringUtils;->stringEquals(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 525
    monitor-exit v4

    goto :goto_0

    .line 544
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 528
    :cond_1
    :try_start_1
    sget-object v3, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/4 v5, 0x0

    invoke-virtual {v3, p1, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 529
    .local v2, pi:Landroid/content/pm/PackageInfo;
    if-eqz v2, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_2

    .line 530
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 532
    :cond_2
    :try_start_3
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0

    .line 544
    .end local v2           #pi:Landroid/content/pm/PackageInfo;
    :cond_3
    :goto_1
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .line 533
    :catch_0
    move-exception v0

    .line 534
    .local v0, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "PermissionSettingUtils"

    const-string v5, "updateCachePackages:: get PackageInfo error!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 536
    .end local v0           #ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_4
    const/4 v3, 0x1

    if-ne p2, v3, :cond_3

    .line 537
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    .line 538
    .restart local v2       #pi:Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 539
    iget-object v3, p0, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->unTrustPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 540
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0
.end method

.method public updatePermissionScanResults()V
    .locals 6

    .prologue
    .line 607
    const/4 v0, 0x0

    .line 608
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const/4 v2, 0x0

    .line 609
    .local v2, sharedPreferences:Landroid/content/SharedPreferences;
    invoke-virtual {p0}, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->doPermissionScan()Lcom/zte/heartyservice/common/datatype/PermissionScanResult;

    move-result-object v1

    .line 610
    .local v1, result:Lcom/zte/heartyservice/common/datatype/PermissionScanResult;
    sget-object v3, Lcom/zte/heartyservice/permission/PermissionSettingUtils;->mContext:Landroid/content/Context;

    const-string v4, "heartservice_permission_pref"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 611
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 612
    const-string v3, "scan_pkg_number"

    iget v4, v1, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->appnum:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 613
    const-string v3, "scan_permission_number"

    iget v4, v1, Lcom/zte/heartyservice/common/datatype/PermissionScanResult;->permissionnum:I

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 614
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 615
    return-void
.end method

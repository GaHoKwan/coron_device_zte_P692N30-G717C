.class public Lcom/zte/heartyservice/power/SwitchTools;
.super Ljava/lang/Object;
.source "SwitchTools.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/power/SwitchTools$ModeName;
    }
.end annotation


# static fields
.field public static DEF_AutoCheckDay:I = 0x0

.field public static DEF_AutoNetTrafficAdjustDay:I = 0x0

.field public static DEF_AutoVirusScanDay:I = 0x0

.field public static DEF_DoNotDisturbSwitch:Z = false

.field public static DEF_SLowBasenet:Z = false

.field public static DEF_SLowSwitch:Z = false

.field public static DEF_STimeBasenet:Z = false

.field public static DEF_TimingSaveElectSwitch:Z = false

.field private static final ONEDAY_MILLIS:J = 0x5265c00L

.field public static final TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter; = null

.field private static sCurMode:I = 0x0

.field private static final tag:Ljava/lang/String; = "SwitchTools"


# instance fields
.field private MODE_BASE_URI:Landroid/net/Uri;

.field private bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private curModeSp:Landroid/content/SharedPreferences;

.field private editor:Landroid/content/SharedPreferences$Editor;

.field private gps_break:Z

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private modifyUri:Landroid/net/Uri;

.field private netdata_break:Z

.field private pofileUri:Landroid/net/Uri;

.field private sp:Landroid/content/SharedPreferences;

.field private wifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x2

    const/4 v0, 0x0

    .line 38
    sput-boolean v0, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    .line 39
    sput-boolean v0, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    .line 40
    sput-boolean v0, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    .line 41
    sput-boolean v2, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowBasenet:Z

    .line 42
    sput-boolean v2, Lcom/zte/heartyservice/power/SwitchTools;->DEF_STimeBasenet:Z

    .line 43
    sput v1, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoCheckDay:I

    .line 44
    sput v1, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoVirusScanDay:I

    .line 45
    sput v1, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoNetTrafficAdjustDay:I

    .line 57
    const/4 v0, -0x1

    sput v0, Lcom/zte/heartyservice/power/SwitchTools;->sCurMode:I

    .line 361
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools$1;

    invoke-direct {v0}, Lcom/zte/heartyservice/power/SwitchTools$1;-><init>()V

    sput-object v0, Lcom/zte/heartyservice/power/SwitchTools;->TWO_DIGIT_FORMATTER:Landroid/widget/NumberPicker$Formatter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->MODE_BASE_URI:Landroid/net/Uri;

    .line 59
    iput-boolean v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->gps_break:Z

    .line 60
    iput-boolean v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->netdata_break:Z

    .line 62
    const-string v0, "content://settings/profile"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->pofileUri:Landroid/net/Uri;

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    .line 67
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    .line 68
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-string v1, "powermanager"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    .line 70
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->editor:Landroid/content/SharedPreferences$Editor;

    .line 71
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->wifiManager:Landroid/net/wifi/WifiManager;

    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 73
    return-void
.end method

.method private setBaseNet(I)V
    .locals 7
    .parameter "basenet"

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 846
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x12

    if-lt v4, v5, :cond_1

    .line 848
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANEMODE_SWITCH"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 849
    .local v1, intent:Landroid/content/Intent;
    const-string v4, "enable"

    if-ne p1, v3, :cond_0

    :goto_0
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 850
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 867
    .end local v1           #intent:Landroid/content/Intent;
    :goto_1
    return-void

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_0
    move v2, v3

    .line 849
    goto :goto_0

    .line 851
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 852
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 859
    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    :try_start_1
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v6, "airplane_mode_on"

    if-ne p1, v3, :cond_2

    move v4, v2

    :goto_2
    invoke-static {v5, v6, v4}, Lcom/zte/heartyservice/common/porting/PortSetting$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 860
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 861
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v4, "state"

    if-ne p1, v3, :cond_3

    :goto_3
    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 863
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/zte/heartyservice/common/porting/PortContext;->sendBroadcastAsUser(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 864
    .end local v1           #intent:Landroid/content/Intent;
    :catch_1
    move-exception v0

    .line 865
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_2
    move v4, v3

    .line 859
    goto :goto_2

    .restart local v1       #intent:Landroid/content/Intent;
    :cond_3
    move v2, v3

    .line 861
    goto :goto_3
.end method

.method private setBrightness(II)V
    .locals 5
    .parameter "Brightness"
    .parameter "BrightnessAutomatic"

    .prologue
    .line 946
    const/4 v0, 0x1

    .line 947
    .local v0, brightnessMode:I
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    .line 948
    const/4 v0, 0x1

    .line 953
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 955
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 957
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "screen_brightness"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 961
    invoke-direct {p0, p1, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setBrightnessD(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    :goto_1
    return-void

    .line 950
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 962
    :catch_0
    move-exception v1

    .line 963
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setBrightnessD(II)V
    .locals 4
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    .line 969
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-class v3, Lcom/zte/heartyservice/power/BrightnessDisplay;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 970
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "brightness"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 971
    const-string v2, "brightness_mode"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 972
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 973
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 977
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 974
    :catch_0
    move-exception v0

    .line 975
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setFeedback(I)V
    .locals 8
    .parameter "feedback"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 930
    :try_start_0
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 931
    .local v1, values:Landroid/content/ContentValues;
    const-string v5, "hapticfeedback"

    if-ne p1, v2, :cond_0

    move v4, v2

    :goto_0
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v5, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 932
    iget-object v4, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->modifyUri:Landroid/net/Uri;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v1, v6, v7}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 937
    .end local v1           #values:Landroid/content/ContentValues;
    :goto_1
    :try_start_1
    iget-object v4, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "haptic_feedback_enabled"

    if-ne p1, v2, :cond_1

    :goto_2
    invoke-static {v4, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 942
    :goto_3
    return-void

    .restart local v1       #values:Landroid/content/ContentValues;
    :cond_0
    move v4, v3

    .line 931
    goto :goto_0

    .line 933
    .end local v1           #values:Landroid/content/ContentValues;
    :catch_0
    move-exception v0

    .line 934
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .end local v0           #e:Ljava/lang/Exception;
    :cond_1
    move v2, v3

    .line 937
    goto :goto_2

    .line 939
    :catch_1
    move-exception v0

    .line 940
    .restart local v0       #e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3
.end method

.method private setGps(I)V
    .locals 4
    .parameter "gps"

    .prologue
    const/4 v1, 0x1

    .line 901
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "gps"

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 906
    :goto_1
    return-void

    .line 901
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 903
    :catch_0
    move-exception v0

    .line 904
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setRotate(I)V
    .locals 3
    .parameter "rotate"

    .prologue
    .line 989
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 994
    :goto_0
    return-void

    .line 991
    :catch_0
    move-exception v0

    .line 992
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setSync(I)V
    .locals 3
    .parameter "sync"

    .prologue
    const/4 v1, 0x1

    .line 922
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-static {v1}, Landroid/content/ContentResolver;->setMasterSyncAutomatically(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 926
    :goto_1
    return-void

    .line 922
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 923
    :catch_0
    move-exception v0

    .line 924
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private setTimeout(I)V
    .locals 3
    .parameter "timeout"

    .prologue
    .line 981
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 985
    :goto_0
    return-void

    .line 982
    :catch_0
    move-exception v0

    .line 983
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private swithingEverything(IIIIIIIIIII)V
    .locals 9
    .parameter "basenet"
    .parameter "netdata"
    .parameter "wifi"
    .parameter "gps"
    .parameter "bluetooth"
    .parameter "sync"
    .parameter "feedback"
    .parameter "brightness"
    .parameter "brightnessAutomatic"
    .parameter "timeout"
    .parameter "rotate"

    .prologue
    .line 998
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/power/SwitchTools;->setBaseNet(I)V

    .line 1000
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/power/SwitchTools;->setNetdate(I)V

    .line 1002
    invoke-virtual {p0, p3}, Lcom/zte/heartyservice/power/SwitchTools;->setWifi(I)V

    .line 1004
    invoke-direct {p0, p4}, Lcom/zte/heartyservice/power/SwitchTools;->setGps(I)V

    .line 1006
    invoke-virtual {p0, p5}, Lcom/zte/heartyservice/power/SwitchTools;->setBluetooth(I)V

    .line 1008
    invoke-direct {p0, p6}, Lcom/zte/heartyservice/power/SwitchTools;->setSync(I)V

    .line 1010
    move/from16 v0, p7

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setFeedback(I)V

    .line 1012
    move/from16 v0, p10

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setTimeout(I)V

    .line 1014
    move/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lcom/zte/heartyservice/power/SwitchTools;->setBrightness(II)V

    .line 1016
    move/from16 v0, p11

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->setRotate(I)V

    .line 1018
    const-wide/16 v2, 0x1388

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-static/range {v2 .. v8}, Lcom/zte/heartyservice/main/HeartyServiceApp;->delayForceSwithingAboutWireless(JIIIII)V

    .line 1020
    return-void
.end method

.method private swithingEverything(ZZZZZZZIZLjava/lang/String;Z)V
    .locals 13
    .parameter "scheme_basenet_on"
    .parameter "scheme_netdata_on"
    .parameter "scheme_wifi_on"
    .parameter "scheme_gps_on"
    .parameter "scheme_bluetooth_on"
    .parameter "scheme_sync_on"
    .parameter "scheme_feedback_on"
    .parameter "brightness_i"
    .parameter "brightnessAutomatic_i"
    .parameter "timeout_s"
    .parameter "rotate_i"

    .prologue
    .line 1041
    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    const/4 v2, 0x1

    .line 1042
    .local v2, basenet:I
    :goto_0
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    const/4 v3, 0x1

    .line 1043
    .local v3, netdata:I
    :goto_1
    const/4 v1, 0x1

    move/from16 v0, p3

    if-ne v0, v1, :cond_2

    const/4 v4, 0x1

    .line 1044
    .local v4, wifi:I
    :goto_2
    const/4 v1, 0x1

    move/from16 v0, p4

    if-ne v0, v1, :cond_3

    const/4 v5, 0x1

    .line 1045
    .local v5, gps:I
    :goto_3
    const/4 v1, 0x1

    move/from16 v0, p5

    if-ne v0, v1, :cond_4

    const/4 v6, 0x1

    .line 1046
    .local v6, bluetooth:I
    :goto_4
    const/4 v1, 0x1

    move/from16 v0, p6

    if-ne v0, v1, :cond_5

    const/4 v7, 0x1

    .line 1047
    .local v7, sync:I
    :goto_5
    const/4 v1, 0x1

    move/from16 v0, p7

    if-ne v0, v1, :cond_6

    const/4 v8, 0x1

    .line 1048
    .local v8, feedback:I
    :goto_6
    move/from16 v9, p8

    .line 1049
    .local v9, brightness:I
    const/4 v1, 0x1

    move/from16 v0, p9

    if-ne v0, v1, :cond_7

    const/4 v10, 0x1

    .line 1050
    .local v10, brightnessAutomatic:I
    :goto_7
    invoke-static/range {p10 .. p10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    .line 1051
    .local v11, timeout:I
    if-eqz p11, :cond_8

    const/4 v12, 0x1

    .local v12, rotate:I
    :goto_8
    move-object v1, p0

    .line 1053
    invoke-direct/range {v1 .. v12}, Lcom/zte/heartyservice/power/SwitchTools;->swithingEverything(IIIIIIIIIII)V

    .line 1054
    return-void

    .line 1041
    .end local v2           #basenet:I
    .end local v3           #netdata:I
    .end local v4           #wifi:I
    .end local v5           #gps:I
    .end local v6           #bluetooth:I
    .end local v7           #sync:I
    .end local v8           #feedback:I
    .end local v9           #brightness:I
    .end local v10           #brightnessAutomatic:I
    .end local v11           #timeout:I
    .end local v12           #rotate:I
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 1042
    .restart local v2       #basenet:I
    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    .line 1043
    .restart local v3       #netdata:I
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 1044
    .restart local v4       #wifi:I
    :cond_3
    const/4 v5, 0x0

    goto :goto_3

    .line 1045
    .restart local v5       #gps:I
    :cond_4
    const/4 v6, 0x0

    goto :goto_4

    .line 1046
    .restart local v6       #bluetooth:I
    :cond_5
    const/4 v7, 0x0

    goto :goto_5

    .line 1047
    .restart local v7       #sync:I
    :cond_6
    const/4 v8, 0x0

    goto :goto_6

    .line 1049
    .restart local v8       #feedback:I
    .restart local v9       #brightness:I
    :cond_7
    const/4 v10, 0x0

    goto :goto_7

    .line 1051
    .restart local v10       #brightnessAutomatic:I
    .restart local v11       #timeout:I
    :cond_8
    const/4 v12, 0x0

    goto :goto_8
.end method


# virtual methods
.method public OpenSmartLow()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 376
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->canStartSmartLowMode()Z

    move-result v0

    if-ne v1, v0, :cond_1

    .line 377
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutTimingSaveElectricity()V

    .line 379
    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSmartLowModeStart(Z)V

    .line 381
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showLowPowerSaveStart()V

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->executeChooseModeLow()V

    .line 385
    :cond_1
    return-void
.end method

.method public OpenTimerOfDoNotDisturb()V
    .locals 1

    .prologue
    .line 543
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfDoNotDisturb(Z)V

    .line 544
    return-void
.end method

.method public OpenTimerOfDoNotDisturb(Z)V
    .locals 33
    .parameter "needSendtIntent"

    .prologue
    .line 547
    const-string v3, "SwitchTools"

    const-string v6, "OpenSmartTime Enter"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_from_hour"

    const/16 v7, 0x17

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 551
    .local v19, fHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_from_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 552
    .local v21, fMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_to_hour"

    const/4 v7, 0x7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 553
    .local v28, tHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "at_night_do_not_disturb_to_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 557
    .local v30, tMinute:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 558
    .local v17, cn:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 559
    .local v16, cf:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 560
    .local v18, ct:Ljava/util/Calendar;
    const/16 v3, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 561
    const/16 v3, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 562
    const/16 v3, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 563
    const/16 v3, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 565
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 566
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 568
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 569
    .local v24, ntime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 570
    .local v22, ftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    .line 571
    .local v31, ttime:J
    move-wide/from16 v26, v31

    .line 573
    .local v26, orgttime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 574
    .local v4, amftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 577
    .local v11, amttime:J
    new-instance v20, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.atnightdonotdisturb.from"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .local v20, fIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 581
    .local v8, pfIntent:Landroid/app/PendingIntent;
    new-instance v29, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.atnightdonotdisturb.to"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 582
    .local v29, tIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 585
    .local v15, ptIntent:Landroid/app/PendingIntent;
    cmp-long v3, v22, v31

    if-gtz v3, :cond_4

    .line 587
    const-string v3, "test"

    const-string v6, "Enter 7:00 --- 23:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 588
    cmp-long v3, v24, v22

    if-ltz v3, :cond_1

    cmp-long v3, v24, v31

    if-gtz v3, :cond_1

    .line 590
    const-string v3, "test"

    const-string v6, "f<n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 593
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 638
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 640
    .local v2, am:Landroid/app/AlarmManager;
    const/4 v3, 0x0

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 642
    const/4 v10, 0x0

    const-wide/32 v13, 0x5265c00

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 645
    return-void

    .line 595
    .end local v2           #am:Landroid/app/AlarmManager;
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v3, v0, :cond_2

    .line 596
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 598
    :cond_2
    cmp-long v3, v24, v22

    if-gez v3, :cond_3

    .line 599
    const-string v3, "test"

    const-string v6, "n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 601
    :cond_3
    cmp-long v3, v24, v31

    if-lez v3, :cond_0

    .line 603
    const-string v3, "test"

    const-string v6, "n>t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 607
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    goto :goto_0

    .line 613
    :cond_4
    const-string v3, "test"

    const-string v6, "Enter 23:00 --- 7:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    .line 616
    cmp-long v3, v24, v22

    if-ltz v3, :cond_5

    .line 617
    const-string v3, "test"

    const-string v6, "f<n<t++++1"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 620
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    goto :goto_0

    .line 624
    :cond_5
    cmp-long v3, v24, v26

    if-gtz v3, :cond_6

    .line 625
    const-string v3, "test"

    const-string v6, "n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v11, v6

    .line 628
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 630
    :cond_6
    const-string v3, "test"

    const-string v6, "t<n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    .line 632
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public OpenTimerOfTimingSaveElectricity()V
    .locals 1

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity(Z)V

    .line 406
    return-void
.end method

.method public OpenTimerOfTimingSaveElectricity(Z)V
    .locals 33
    .parameter "needSendtIntent"

    .prologue
    .line 409
    const-string v3, "SwitchTools"

    const-string v6, "OpenSmartTime Enter"

    invoke-static {v3, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const-string v3, "20140303"

    const-string v6, "OpenTimerOfTimingSaveElectricity"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_from_hour"

    const/16 v7, 0x17

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    .line 414
    .local v19, fHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_from_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v21

    .line 415
    .local v21, fMinute:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_to_hour"

    const/4 v7, 0x7

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v28

    .line 416
    .local v28, tHour:I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v6, "timing_save_electricity_to_minute"

    const/4 v7, 0x0

    invoke-interface {v3, v6, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v30

    .line 420
    .local v30, tMinute:I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v17

    .line 421
    .local v17, cn:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v16

    .line 422
    .local v16, cf:Ljava/util/Calendar;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v18

    .line 423
    .local v18, ct:Ljava/util/Calendar;
    const/16 v3, 0xb

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 424
    const/16 v3, 0xc

    move-object/from16 v0, v16

    move/from16 v1, v21

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 425
    const/16 v3, 0xb

    move-object/from16 v0, v18

    move/from16 v1, v28

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 426
    const/16 v3, 0xc

    move-object/from16 v0, v18

    move/from16 v1, v30

    invoke-virtual {v0, v3, v1}, Ljava/util/Calendar;->set(II)V

    .line 428
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 429
    const/16 v3, 0xd

    const/4 v6, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v6}, Ljava/util/Calendar;->set(II)V

    .line 431
    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v24

    .line 432
    .local v24, ntime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v22

    .line 433
    .local v22, ftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v31

    .line 434
    .local v31, ttime:J
    move-wide/from16 v26, v31

    .line 436
    .local v26, orgttime:J
    invoke-virtual/range {v16 .. v16}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 437
    .local v4, amftime:J
    invoke-virtual/range {v18 .. v18}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v11

    .line 440
    .local v11, amttime:J
    new-instance v20, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.timingsaveelectricity.from"

    move-object/from16 v0, v20

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 441
    .local v20, fIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v20

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    .line 444
    .local v8, pfIntent:Landroid/app/PendingIntent;
    new-instance v29, Landroid/content/Intent;

    const-string v3, "com.zte.powermanager.timingsaveelectricity.to"

    move-object/from16 v0, v29

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 445
    .local v29, tIntent:Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, v29

    invoke-static {v3, v6, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v15

    .line 448
    .local v15, ptIntent:Landroid/app/PendingIntent;
    cmp-long v3, v22, v31

    if-gtz v3, :cond_4

    .line 450
    const-string v3, "test"

    const-string v6, "Enter 7:00 --- 23:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    cmp-long v3, v24, v22

    if-ltz v3, :cond_1

    cmp-long v3, v24, v31

    if-gtz v3, :cond_1

    .line 453
    const-string v3, "test"

    const-string v6, "f<n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 456
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 503
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v3, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    .line 505
    .local v2, am:Landroid/app/AlarmManager;
    invoke-virtual {v2, v8}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 506
    invoke-virtual {v2, v15}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 507
    const/4 v3, 0x0

    const-wide/32 v6, 0x5265c00

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 509
    const/4 v10, 0x0

    const-wide/32 v13, 0x5265c00

    move-object v9, v2

    invoke-virtual/range {v9 .. v15}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 511
    const-string v3, "20140303"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "amftime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    const-string v3, "20140303"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "amttime:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return-void

    .line 458
    .end local v2           #am:Landroid/app/AlarmManager;
    :cond_1
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v3, v0, :cond_2

    .line 459
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 461
    :cond_2
    cmp-long v3, v24, v22

    if-gez v3, :cond_3

    .line 462
    const-string v3, "test"

    const-string v6, "n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 464
    :cond_3
    cmp-long v3, v24, v31

    if-lez v3, :cond_0

    .line 466
    const-string v3, "test"

    const-string v6, "n>t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    .line 470
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    goto :goto_0

    .line 476
    :cond_4
    const-string v3, "test"

    const-string v6, "Enter 23:00 --- 7:00 mode"

    invoke-static {v3, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    const-wide/32 v6, 0x5265c00

    add-long/2addr v11, v6

    .line 480
    cmp-long v3, v24, v22

    if-ltz v3, :cond_5

    .line 481
    const-string v3, "test"

    const-string v6, "f<n<t++++1"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 484
    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    goto/16 :goto_0

    .line 488
    :cond_5
    cmp-long v3, v24, v26

    if-gtz v3, :cond_6

    .line 489
    const-string v3, "test"

    const-string v6, "n<t"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    const-wide/32 v6, 0x5265c00

    sub-long/2addr v11, v6

    .line 492
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 494
    :cond_6
    const-string v3, "test"

    const-string v6, "t<n<f"

    invoke-static {v3, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    const/4 v3, 0x1

    move/from16 v0, p1

    if-ne v3, v0, :cond_0

    .line 496
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    move-object/from16 v0, v29

    invoke-virtual {v3, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0
.end method

.method public ShutDoNotDisturb()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 649
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 651
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.zte.powermanager.atnightdonotdisturb.from"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 652
    .local v1, fIntent:Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.zte.powermanager.atnightdonotdisturb.to"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 653
    .local v4, tIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 655
    .local v2, pfIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 657
    .local v3, ptIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 658
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 660
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStart()Z

    move-result v5

    if-ne v8, v5, :cond_0

    .line 661
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDonotDisturbStart(Z)V

    .line 662
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->executeCurrentInterceptMode()V

    .line 663
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isDonotDisturbStartToastShow()Z

    move-result v5

    if-ne v8, v5, :cond_0

    .line 664
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setDonotDisturbStartToastShow(Z)V

    .line 665
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const v6, 0x7f0a03eb

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 669
    :cond_0
    return-void
.end method

.method public ShutSmartLow()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 388
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart()Z

    move-result v1

    if-ne v4, v1, :cond_0

    .line 389
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setSmartLowModeStart(Z)V

    .line 390
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->executeCurrentMode()V

    .line 392
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->showLowPowerSaveStop()V

    .line 397
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v2, "timing_save_electricity_switch"

    sget-boolean v3, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 398
    .local v0, timingSaveElectricitySwitch:Z
    if-ne v4, v0, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity()V

    .line 402
    .end local v0           #timingSaveElectricitySwitch:Z
    :cond_0
    return-void
.end method

.method public ShutTimingSaveElectricity()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 517
    const-string v5, "20140303"

    const-string v6, "ShutTimingSaveElectricity"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->editor:Landroid/content/SharedPreferences$Editor;

    const-string v6, "smart_time_going"

    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 520
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-string v6, "alarm"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 522
    .local v0, am:Landroid/app/AlarmManager;
    new-instance v1, Landroid/content/Intent;

    const-string v5, "com.zte.powermanager.timingsaveelectricity.from"

    invoke-direct {v1, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 523
    .local v1, fIntent:Landroid/content/Intent;
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.zte.powermanager.timingsaveelectricity.to"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 524
    .local v4, tIntent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v1, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 526
    .local v2, pfIntent:Landroid/app/PendingIntent;
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-static {v5, v7, v4, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 528
    .local v3, ptIntent:Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 529
    invoke-virtual {v0, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 531
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isSmartLowModeStart()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStart()Z

    move-result v5

    if-ne v8, v5, :cond_0

    .line 532
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimingSaveElectricityStart(Z)V

    .line 533
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->executeCurrentModeWithoutToast()V

    .line 534
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isTimingSaveElectricityStartToastShow()Z

    move-result v5

    if-ne v8, v5, :cond_0

    .line 535
    invoke-static {v7}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setTimingSaveElectricityStartToastShow(Z)V

    .line 536
    iget-object v5, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const v6, 0x7f0a03e7

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 540
    :cond_0
    return-void
.end method

.method public clearSaveSetting()V
    .locals 7

    .prologue
    .line 112
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 113
    .local v0, SaveModeUri:Landroid/net/Uri;
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 114
    return-void
.end method

.method public convertPositionToId(I)I
    .locals 9
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 320
    const-string v0, "SwitchTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converetPositionToId Enter: position = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->MODE_BASE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 323
    .local v6, cr:Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 324
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 325
    .local v7, id:I
    const-string v0, "mode_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 326
    .local v8, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 327
    const-string v0, "SwitchTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "after convert: name = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; id = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    return v7
.end method

.method public convertPositionToName(I)Ljava/lang/String;
    .locals 8
    .parameter "position"

    .prologue
    const/4 v2, 0x0

    .line 332
    const-string v0, "SwitchTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "converetPositionToId Enter: position = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->MODE_BASE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 335
    .local v6, cr:Landroid/database/Cursor;
    invoke-interface {v6, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 336
    const-string v0, "mode_name"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 337
    .local v7, name:Ljava/lang/String;
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 338
    return-object v7
.end method

.method public executeChooseInterceptMode()V
    .locals 4

    .prologue
    .line 1073
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v2, "donotdisturbsetting"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1074
    .local v0, id:I
    packed-switch v0, :pswitch_data_0

    .line 1082
    :goto_0
    return-void

    .line 1076
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->set2OnlyAcceptWhiteList(Landroid/content/Context;)V

    goto :goto_0

    .line 1079
    :pswitch_1
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->set2InterceptAll(Landroid/content/Context;)V

    goto :goto_0

    .line 1074
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public executeChooseMode()V
    .locals 4

    .prologue
    .line 1057
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v2, "choosemode"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1058
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 1059
    return-void
.end method

.method public executeChooseModeLow()V
    .locals 4

    .prologue
    .line 1062
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v2, "choosemodeLow"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    add-int/lit8 v0, v1, 0x1

    .line 1063
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 1064
    return-void
.end method

.method public executeCurrentInterceptMode()V
    .locals 2

    .prologue
    .line 1085
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->reset2CurrentInterceptMode(Landroid/content/Context;)V

    .line 1086
    return-void
.end method

.method public executeCurrentMode()V
    .locals 4

    .prologue
    .line 823
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v2, "current_mode_id"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 824
    .local v0, id:I
    const-string v1, "SwitchTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "After Shut SmartTime executeCurrentMode: currentId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 826
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->getPosition(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/zte/heartyservice/power/SwitchTools;->convertPositionToName(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 827
    return-void
.end method

.method public executeCurrentModeWithoutToast()V
    .locals 4

    .prologue
    .line 830
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->isSaveSettingExist()Z

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 831
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingSaveSetting()V

    .line 832
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->clearSaveSetting()V

    .line 837
    :goto_0
    return-void

    .line 834
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v2, "current_mode_id"

    const/4 v3, 0x4

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 835
    .local v0, id:I
    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    goto :goto_0
.end method

.method public executeSmartLowMode()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 215
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const v12, 0x7f0a01d4

    const/4 v13, 0x1

    invoke-static {v0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 228
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_low_basenet"

    sget-boolean v13, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowBasenet:Z

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 229
    .local v1, scheme_basenet_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_low_wifi"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 230
    .local v3, scheme_wifi_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_low_bluetooth"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 231
    .local v5, scheme_bluetooth_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_low_gps"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 232
    .local v4, scheme_gps_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_low_netdata"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 233
    .local v2, scheme_netdata_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_low_feedback"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 234
    .local v7, scheme_feedback_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_low_sync"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 235
    .local v6, scheme_sync_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_brightness_seekbar_slv"

    const/16 v13, 0x14

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 237
    .local v8, brightness:I
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_brightness_seekbar_sla"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 239
    .local v9, brightnessAutomatic:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_timeout_sl"

    const-string v13, "15000"

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 240
    .local v10, timeout:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_rotate"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .local v11, rotate:Z
    move-object v0, p0

    .line 243
    invoke-direct/range {v0 .. v11}, Lcom/zte/heartyservice/power/SwitchTools;->swithingEverything(ZZZZZZZIZLjava/lang/String;Z)V

    .line 244
    return-void
.end method

.method public executeSmartTimeFmode()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    .line 247
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const v12, 0x7f0a01d5

    const/4 v13, 0x1

    invoke-static {v0, v12, v13}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 260
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_basenet"

    sget-boolean v13, Lcom/zte/heartyservice/power/SwitchTools;->DEF_STimeBasenet:Z

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 262
    .local v1, scheme_basenet_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_wifi"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 263
    .local v3, scheme_wifi_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_bluetooth"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 264
    .local v5, scheme_bluetooth_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_gps"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    .line 265
    .local v4, scheme_gps_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_netdata"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 266
    .local v2, scheme_netdata_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_feedback"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 267
    .local v7, scheme_feedback_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_sync"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 268
    .local v6, scheme_sync_on:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_brightness_seekbar_stv"

    const/16 v13, 0x14

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v8

    .line 270
    .local v8, brightness:I
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_brightness_seekbar_sta"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 272
    .local v9, brightnessAutomatic:Z
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_timeout_st"

    const-string v13, "15000"

    invoke-interface {v0, v12, v13}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 273
    .local v10, timeout:Ljava/lang/String;
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v12, "smart_time_rotate"

    invoke-interface {v0, v12, v14}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    .local v11, rotate:Z
    move-object v0, p0

    .line 276
    invoke-direct/range {v0 .. v11}, Lcom/zte/heartyservice/power/SwitchTools;->swithingEverything(ZZZZZZZIZLjava/lang/String;Z)V

    .line 278
    return-void
.end method

.method public executeWhenMyModeSetChange()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 1067
    sget v0, Lcom/zte/heartyservice/power/SwitchTools;->sCurMode:I

    if-ne v0, v1, :cond_0

    .line 1068
    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/power/SwitchTools;->switchingMode(I)V

    .line 1070
    :cond_0
    return-void
.end method

.method public forceSwithingAboutWireless(IIIII)V
    .locals 0
    .parameter "netdata"
    .parameter "wifi"
    .parameter "gps"
    .parameter "bluetooth"
    .parameter "sync"

    .prologue
    .line 1024
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/power/SwitchTools;->setNetdate(I)V

    .line 1026
    invoke-virtual {p0, p2}, Lcom/zte/heartyservice/power/SwitchTools;->setWifi(I)V

    .line 1028
    invoke-direct {p0, p3}, Lcom/zte/heartyservice/power/SwitchTools;->setGps(I)V

    .line 1030
    invoke-virtual {p0, p4}, Lcom/zte/heartyservice/power/SwitchTools;->setBluetooth(I)V

    .line 1032
    invoke-direct {p0, p5}, Lcom/zte/heartyservice/power/SwitchTools;->setSync(I)V

    .line 1034
    return-void
.end method

.method public getAllModeNameAndCorrespondingID()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/power/SwitchTools$ModeName;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 281
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 282
    .local v8, result:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/power/SwitchTools$ModeName;>;"
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->MODE_BASE_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 285
    .local v6, cr:Landroid/database/Cursor;
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 286
    invoke-interface {v6, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 287
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools$ModeName;

    const-string v1, "mode_name"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lcom/zte/heartyservice/power/SwitchTools$ModeName;-><init>(Lcom/zte/heartyservice/power/SwitchTools;Ljava/lang/String;I)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 285
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 291
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 292
    return-object v8
.end method

.method public getCurrentBaseNetState()I
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 676
    const/4 v1, -0x1

    .line 677
    .local v1, basenet_state:I
    const/4 v0, -0x1

    .line 679
    .local v0, airplane_mode_on:I
    :try_start_0
    iget-object v4, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v5, "airplane_mode_on"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 686
    :goto_0
    if-ne v0, v3, :cond_0

    const/4 v1, 0x0

    .line 687
    :goto_1
    const-string v3, "SwitchTools"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCurrentBaseNetState: BASENET STATE = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    return v1

    .line 681
    :catch_0
    move-exception v2

    .line 682
    .local v2, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "SwitchTools"

    const-string v5, "Settings: AirPlaneMode Setting Not Found Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    const/4 v0, 0x1

    goto :goto_0

    .end local v2           #e:Landroid/provider/Settings$SettingNotFoundException;
    :cond_0
    move v1, v3

    .line 686
    goto :goto_1
.end method

.method public getCurrentBluetoothState()I
    .locals 5

    .prologue
    .line 750
    const/4 v0, 0x0

    .line 752
    .local v0, bluetooth_state:I
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 756
    :goto_0
    const-string v2, "SwitchTools"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentBluetoothState: BlUETOOTH STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    return v0

    .line 752
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 753
    :catch_0
    move-exception v1

    .line 754
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentBrightnessAutomatic()I
    .locals 4

    .prologue
    .line 741
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness_mode"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 743
    .local v0, brightness_automatic:I
    const-string v1, "SwitchTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentBrightnessAutomatic: BRIGHTNESS AUTOMATIC = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    return v0
.end method

.method public getCurrentBrightnessValue()I
    .locals 4

    .prologue
    .line 733
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_brightness"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 735
    .local v0, brightness:I
    const-string v1, "SwitchTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentBrightnessValue: BRIGHTNESS VALUE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    return v0
.end method

.method public getCurrentFeedBackState()I
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v2, 0x0

    .line 797
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->sp:Landroid/content/SharedPreferences;

    const-string v1, "is_use_profile_mode"

    invoke-interface {v0, v1, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    .line 798
    .local v9, profileMode:Z
    const/4 v7, -0x1

    .line 799
    .local v7, feedback:I
    if-eqz v9, :cond_0

    .line 800
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Landroid/provider/Settings$System;->CONTENT_URI:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 802
    .local v6, cr:Landroid/database/Cursor;
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 803
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "current_profile"

    invoke-static {v0, v1, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    .line 805
    .local v8, profileId:I
    const-string v0, "SwitchTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentFeedbackState!!!!!!!!!!: Current ProfileId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 808
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->pofileUri:Landroid/net/Uri;

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->modifyUri:Landroid/net/Uri;

    .line 810
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->modifyUri:Landroid/net/Uri;

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 811
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 812
    const-string v0, "hapticfeedback"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 813
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 818
    .end local v6           #cr:Landroid/database/Cursor;
    .end local v8           #profileId:I
    :goto_0
    const-string v0, "SwitchTools"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCurrentFeedBackState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    return v7

    .line 815
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    goto :goto_0
.end method

.method public getCurrentGpsState()I
    .locals 3

    .prologue
    .line 713
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "location_providers_allowed"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 715
    .local v0, gps_state:Ljava/lang/String;
    const-string v1, "gps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 716
    const-string v1, "SwitchTools"

    const-string v2, "getCurrentGPSState: GPS STATE = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 717
    const/4 v1, 0x1

    .line 720
    :goto_0
    return v1

    .line 719
    :cond_0
    const-string v1, "SwitchTools"

    const-string v2, "getCurrentGPSState: GPS STATE = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 720
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentNetDataState()I
    .locals 5

    .prologue
    .line 693
    const/4 v1, -0x1

    .line 695
    .local v1, netdata_state:I
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v3, "mobile_data"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 702
    :goto_0
    const-string v2, "SwitchTools"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCurrentNetDataState: NETDATA STATE = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return v1

    .line 697
    :catch_0
    move-exception v0

    .line 698
    .local v0, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v2, "SwitchTools"

    const-string v3, "netData Exception: SettingNotFound\ufffd\ufffd"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const/4 v1, 0x1

    .line 700
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public getCurrentRotateState()I
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 773
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "accelerometer_rotation"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public getCurrentSyncState()I
    .locals 3

    .prologue
    .line 762
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/content/ContentResolver;->getMasterSyncAutomatically()Z

    move-result v0

    .line 763
    .local v0, sync_state:Z
    if-eqz v0, :cond_0

    .line 764
    const-string v1, "SwitchTools"

    const-string v2, "getCurrentSyncState: SYNC STATE = 1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 765
    const/4 v1, 0x1

    .line 768
    :goto_0
    return v1

    .line 767
    :cond_0
    const-string v1, "SwitchTools"

    const-string v2, "getCurrentSyncState: SYNC STATE = 0"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCurrentTimeout()I
    .locals 4

    .prologue
    .line 726
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "screen_off_timeout"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 728
    .local v0, timeout:I
    const-string v1, "SwitchTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentTimeout: TIMEOUT = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    return v0
.end method

.method public getCurrentWifiState()I
    .locals 4

    .prologue
    .line 707
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->wifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 708
    .local v0, wifi_state:I
    :goto_0
    const-string v1, "SwitchTools"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCurrentWifiState: WIFI STATE = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 709
    return v0

    .line 707
    .end local v0           #wifi_state:I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormatTimeout()I
    .locals 2

    .prologue
    .line 778
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentTimeout()I

    move-result v0

    .line 779
    .local v0, timeout:I
    const/16 v1, 0x3a98

    if-ne v0, v1, :cond_0

    .line 780
    const v1, 0x7f0a019d

    .line 792
    :goto_0
    return v1

    .line 781
    :cond_0
    const/16 v1, 0x7530

    if-ne v0, v1, :cond_1

    .line 782
    const v1, 0x7f0a019e

    goto :goto_0

    .line 783
    :cond_1
    const v1, 0xea60

    if-ne v0, v1, :cond_2

    .line 784
    const v1, 0x7f0a019f

    goto :goto_0

    .line 785
    :cond_2
    const v1, 0x1d4c0

    if-ne v0, v1, :cond_3

    .line 786
    const v1, 0x7f0a01a0

    goto :goto_0

    .line 787
    :cond_3
    const v1, 0x493e0

    if-ne v0, v1, :cond_4

    .line 788
    const v1, 0x7f0a01a1

    goto :goto_0

    .line 789
    :cond_4
    const v1, 0x927c0

    if-ne v0, v1, :cond_5

    .line 790
    const v1, 0x7f0a01a2

    goto :goto_0

    .line 792
    :cond_5
    const v1, 0x7f0a01a3

    goto :goto_0
.end method

.method public getPosition(I)I
    .locals 9
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 342
    const/4 v8, 0x3

    .line 343
    .local v8, position:I
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->MODE_BASE_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "_id"

    aput-object v5, v2, v4

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 345
    .local v6, cr:Landroid/database/Cursor;
    if-eqz v6, :cond_1

    .line 346
    const/4 v7, 0x0

    .local v7, i:I
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-ge v7, v0, :cond_0

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 348
    const-string v0, "_id"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    if-ne p1, v0, :cond_2

    .line 350
    move v8, v7

    .line 355
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 358
    .end local v7           #i:I
    :cond_1
    return v8

    .line 346
    .restart local v7       #i:I
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0
.end method

.method public getStringFromModeList(Ljava/util/List;)[Ljava/lang/String;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/zte/heartyservice/power/SwitchTools$ModeName;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 307
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/power/SwitchTools$ModeName;>;"
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 309
    .local v1, sb:Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/zte/heartyservice/power/SwitchTools$ModeName;

    iget-object v2, v2, Lcom/zte/heartyservice/power/SwitchTools$ModeName;->name:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public isSaveSettingExist()Z
    .locals 9

    .prologue
    .line 117
    const/4 v7, 0x0

    .line 118
    .local v7, ret:Z
    sget-object v1, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 119
    .local v1, SaveModeUri:Landroid/net/Uri;
    const/4 v6, 0x0

    .line 121
    .local v6, cr:Landroid/database/Cursor;
    :try_start_0
    iget-object v0, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x0

    const-string v3, "_id=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/16 v8, 0xa

    invoke-static {v8}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 123
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    const/4 v7, 0x1

    .line 127
    :cond_0
    if-eqz v6, :cond_1

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 131
    :cond_1
    return v7

    .line 127
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 128
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v0
.end method

.method public saveCurrentSetting()V
    .locals 15

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->isSaveSettingExist()Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    .line 109
    :goto_0
    return-void

    .line 79
    :cond_0
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 80
    .local v11, values:Landroid/content/ContentValues;
    const-string v13, "_id"

    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 81
    const-string v13, "mode_name"

    const-string v14, "save"

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 82
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentBaseNetState()I

    move-result v1

    .line 83
    .local v1, basenet:I
    const-string v13, "base_net"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 84
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentNetDataState()I

    move-result v7

    .line 85
    .local v7, netdata:I
    const-string v13, "net_data"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 86
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentWifiState()I

    move-result v12

    .line 87
    .local v12, wifi:I
    const-string v13, "wifi"

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 88
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentGpsState()I

    move-result v6

    .line 89
    .local v6, gps:I
    const-string v13, "gps"

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 90
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentBrightnessAutomatic()I

    move-result v3

    .line 91
    .local v3, brightnessAutomatic:I
    const-string v13, "brightness_auto"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 92
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentBrightnessValue()I

    move-result v4

    .line 93
    .local v4, brightnessValue:I
    const-string v13, "brightness"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 94
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentTimeout()I

    move-result v10

    .line 95
    .local v10, timeout:I
    const-string v13, "timeout"

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 96
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentFeedBackState()I

    move-result v5

    .line 97
    .local v5, feedback:I
    const-string v13, "feedback"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 98
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentBluetoothState()I

    move-result v2

    .line 99
    .local v2, bluetooth:I
    const-string v13, "bluetooth"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 100
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentSyncState()I

    move-result v9

    .line 101
    .local v9, sync:I
    const-string v13, "sync"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 102
    invoke-virtual {p0}, Lcom/zte/heartyservice/power/SwitchTools;->getCurrentRotateState()I

    move-result v8

    .line 103
    .local v8, rotate:I
    const-string v13, "rotate"

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 104
    const-string v13, "intelligent"

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v11, v13, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 106
    sget-object v0, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 108
    .local v0, SaveModeUri:Landroid/net/Uri;
    iget-object v13, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v14, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v13, v14, v11}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto/16 :goto_0
.end method

.method public setBluetooth(I)V
    .locals 2
    .parameter "bluetooth"

    .prologue
    .line 910
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 911
    :try_start_0
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 918
    :cond_0
    :goto_0
    return-void

    .line 912
    :cond_1
    if-nez p1, :cond_0

    .line 913
    iget-object v1, p0, Lcom/zte/heartyservice/power/SwitchTools;->bluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->disable()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 915
    :catch_0
    move-exception v0

    .line 916
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public setNetdate(I)V
    .locals 4
    .parameter "netdata"

    .prologue
    const/4 v0, 0x1

    .line 870
    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 879
    :goto_0
    return-void

    .line 874
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isSecurityTestVersion()Z

    move-result v1

    if-ne v1, v0, :cond_2

    .line 875
    const-string v1, "com.zte.heartyservice"

    const-string v2, "android.permission.CHANGE_NETWORK_STATE"

    if-ne p1, v0, :cond_1

    :goto_1
    const/16 v3, -0x270f

    invoke-static {v1, v2, v0, v3}, Lcom/zte/heartyservice/main/HeartyServiceApp;->doReceivePermissionAskEvent(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 877
    :cond_2
    invoke-virtual {p0, p1}, Lcom/zte/heartyservice/power/SwitchTools;->setRelNetdate(I)V

    goto :goto_0
.end method

.method public setRelNetdate(I)V
    .locals 5
    .parameter "netdata"

    .prologue
    const/4 v2, 0x1

    .line 883
    :try_start_0
    iget-object v3, p0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 885
    .local v0, cm:Landroid/net/ConnectivityManager;
    if-ne p1, v2, :cond_0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->setMobileDataEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 889
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :goto_1
    return-void

    .line 885
    .restart local v0       #cm:Landroid/net/ConnectivityManager;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 886
    .end local v0           #cm:Landroid/net/ConnectivityManager;
    :catch_0
    move-exception v1

    .line 887
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public setWifi(I)V
    .locals 3
    .parameter "wifi"

    .prologue
    const/4 v1, 0x1

    .line 893
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/power/SwitchTools;->wifiManager:Landroid/net/wifi/WifiManager;

    if-ne p1, v1, :cond_0

    :goto_0
    invoke-virtual {v2, v1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 897
    :goto_1
    return-void

    .line 893
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 894
    :catch_0
    move-exception v0

    .line 895
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public switchingMode(I)V
    .locals 18
    .parameter "id"

    .prologue
    .line 174
    sput p1, Lcom/zte/heartyservice/power/SwitchTools;->sCurMode:I

    .line 175
    sget-object v2, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 176
    .local v2, SaveModeUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 178
    .local v15, cr:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string v4, "_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v5, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v16

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 180
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 181
    const-string v1, "base_net"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 183
    .local v4, basenet:I
    const-string v1, "net_data"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 185
    .local v5, netdata:I
    const-string v1, "wifi"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 186
    .local v6, wifi:I
    const-string v1, "gps"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 187
    .local v7, gps:I
    const-string v1, "timeout"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 189
    .local v13, timeout:I
    const-string v1, "brightness"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 191
    .local v11, brightness:I
    const-string v1, "brightness_auto"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 193
    .local v12, brightnessAutomatic:I
    const-string v1, "feedback"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 195
    .local v10, feedback:I
    const-string v1, "bluetooth"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 197
    .local v8, bluetooth:I
    const-string v1, "sync"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 198
    .local v9, sync:I
    const-string v1, "rotate"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .local v14, rotate:I
    move-object/from16 v3, p0

    .line 200
    invoke-direct/range {v3 .. v14}, Lcom/zte/heartyservice/power/SwitchTools;->swithingEverything(IIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    .end local v4           #basenet:I
    .end local v5           #netdata:I
    .end local v6           #wifi:I
    .end local v7           #gps:I
    .end local v8           #bluetooth:I
    .end local v9           #sync:I
    .end local v10           #feedback:I
    .end local v11           #brightness:I
    .end local v12           #brightnessAutomatic:I
    .end local v13           #timeout:I
    .end local v14           #rotate:I
    :cond_0
    if-eqz v15, :cond_1

    .line 206
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 210
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v16, "com.zte.heartyservice.appwidget.WidgetReceiver.updatePowerMode"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    return-void

    .line 205
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_2

    .line 206
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

.method public switchingSaveSetting()V
    .locals 18

    .prologue
    .line 135
    sget-object v2, Lcom/zte/heartyservice/power/Modes$ModeColumns;->CONTENT_URI:Landroid/net/Uri;

    .line 136
    .local v2, SaveModeUri:Landroid/net/Uri;
    const/4 v15, 0x0

    .line 138
    .local v15, cr:Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContentResolver:Landroid/content/ContentResolver;

    const/4 v3, 0x0

    const-string v4, "_id=?"

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v5, v0, [Ljava/lang/String;

    const/16 v16, 0x0

    const/16 v17, 0xa

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v5, v16

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 140
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    const-string v1, "base_net"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 143
    .local v4, basenet:I
    const-string v1, "net_data"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    .line 145
    .local v5, netdata:I
    const-string v1, "wifi"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 146
    .local v6, wifi:I
    const-string v1, "gps"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 147
    .local v7, gps:I
    const-string v1, "timeout"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    .line 149
    .local v13, timeout:I
    const-string v1, "brightness"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    .line 151
    .local v11, brightness:I
    const-string v1, "brightness_auto"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    .line 153
    .local v12, brightnessAutomatic:I
    const-string v1, "feedback"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 155
    .local v10, feedback:I
    const-string v1, "bluetooth"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    .line 157
    .local v8, bluetooth:I
    const-string v1, "sync"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 158
    .local v9, sync:I
    const-string v1, "rotate"

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v15, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    .local v14, rotate:I
    move-object/from16 v3, p0

    .line 160
    invoke-direct/range {v3 .. v14}, Lcom/zte/heartyservice/power/SwitchTools;->swithingEverything(IIIIIIIIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    .end local v4           #basenet:I
    .end local v5           #netdata:I
    .end local v6           #wifi:I
    .end local v7           #gps:I
    .end local v8           #bluetooth:I
    .end local v9           #sync:I
    .end local v10           #feedback:I
    .end local v11           #brightness:I
    .end local v12           #brightnessAutomatic:I
    .end local v13           #timeout:I
    .end local v14           #rotate:I
    :cond_0
    if-eqz v15, :cond_1

    .line 166
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/zte/heartyservice/power/SwitchTools;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/content/Intent;

    const-string v16, "com.zte.heartyservice.appwidget.WidgetReceiver.updatePowerMode"

    move-object/from16 v0, v16

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 171
    return-void

    .line 165
    :catchall_0
    move-exception v1

    if-eqz v15, :cond_2

    .line 166
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v1
.end method

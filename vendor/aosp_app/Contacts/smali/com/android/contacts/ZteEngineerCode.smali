.class public Lcom/android/contacts/ZteEngineerCode;
.super Ljava/lang/Object;
.source "ZteEngineerCode.java"


# static fields
.field public static final ACTION_BATTERY_LOG:Ljava/lang/String; = "com.zte.engineer.action.BATTERY_LOG"

.field public static final ACTION_FRONT_CAMERA_TEST:Ljava/lang/String; = "com.zte.engineer.action.FRONT_CAMERA_TEST"

.field public static final ACTION_GPS_TEST:Ljava/lang/String; = "com.zte.engineer.action.GPS_TEST"

.field public static final ACTION_LAUNCHER_TEST_LIST:Ljava/lang/String; = "com.zte.engineer.action.TEST_LIST"

.field public static final ACTION_MAIN_CAMERA_TEST:Ljava/lang/String; = "com.zte.engineer.action.MAIN_CAMERA_TEST"

.field public static final ACTION_SELF_TEST:Ljava/lang/String; = "com.zte.engineer.action.SELF_TEST"

.field public static final ACTION_TP_CHECK_TEST:Ljava/lang/String; = "com.zte.engineer.action.TP_CHECK_TEST"

.field public static final ACTION_TP_FWLOAD_TEST:Ljava/lang/String; = "com.zte.engineer.action.TP_FWLOAD_TEST"

.field public static final ACTION_TP_RESEARCH_TEST:Ljava/lang/String; = "com.zte.engineer.action.TP_RESEARCH_TEST"

.field public static final BATTERY_LOG:Ljava/lang/String; = "*983*25#"

.field public static final BOARD_CODE:Ljava/lang/String; = "*983*7#"

.field public static final CHIPER_TEST:Ljava/lang/String; = "*983*24474636#"

.field public static final DOWNLOAD_PRODUCT_FLAG:Ljava/lang/String; = "*983*647#"

.field public static final DOWNLOAD_SMS_FLAG:Ljava/lang/String; = "*983*648#"

.field private static final EDITNUMBER:I = 0x1

.field public static final ENGINEERCODE_LISTVIEW:Ljava/lang/String; = "*987*0#"

.field public static final FACTORY_RECOVER:Ljava/lang/String; = "*983*57#"

.field public static final FRONT_CAMERA:Ljava/lang/String; = "*983*463#"

.field public static final GPS_TEST:Ljava/lang/String; = "*983*47#"

.field public static final MAIN_CAMERA:Ljava/lang/String; = "*983*464#"

.field public static final MTK_ENGINEERMODE:Ljava/lang/String; = "*983*3640#"

.field public static final MTK_SYSLOG:Ljava/lang/String; = "*983*120#"

.field public static final NETWORK_LOCK_STATE:Ljava/lang/String; = "*983*239#"

.field public static final NETWORK_TYPE_MODE:Ljava/lang/String; = "*#0001#"

.field private static final OPTION:Ljava/lang/String; = "option"

.field public static final PRODUCE_INFO:Ljava/lang/String; = "*983*154#"

.field public static final RING_VIBRATOR_TEST:Ljava/lang/String; = "*983*5392#"

.field public static final SELF_TEST:Ljava/lang/String; = "*983*70#"

.field public static final SET_GPIO_HIGH:Ljava/lang/String; = "*983*789#"

.field public static final SMS_EDITNUMBER:Ljava/lang/String; = "*983*2#"

.field public static final SMS_FACTORY:Ljava/lang/String; = "*983*3#"

.field public static final SMS_START:Ljava/lang/String; = "*983*1#"

.field public static final SMS_STATE:Ljava/lang/String; = "*983*8634#"

.field public static final TEST_LIST:Ljava/lang/String; = "*983*0#"

.field public static final TP_CHECK:Ljava/lang/String; = "*983*869#"

.field public static final TP_FWLOAD:Ljava/lang/String; = "*#00#"

.field public static final TP_RESEARCH:Ljava/lang/String; = "*983*868#"

.field public static final ZTE_CUSTOM_VERSION_CMD:Ljava/lang/String; = "*983*1275#"

.field public static final ZTE_HARDWARE_TEST_BT:Ljava/lang/String; = "*983*28#"

.field public static final ZTE_HARDWARE_TEST_WIFI:Ljava/lang/String; = "*983*93#"

.field public static final ZTE_VERSION_CMD:Ljava/lang/String; = "*983*32#"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static handleZteEngineerCode(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 8
    .parameter "context"
    .parameter "input"

    .prologue
    const/high16 v7, 0x1000

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 71
    if-nez p1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return v4

    .line 74
    :cond_1
    const-string v6, "*983*0#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 75
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.zte.engineer.action.TEST_LIST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 77
    goto :goto_0

    .line 78
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    const-string v6, "*983*70#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 79
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.zte.engineer.action.SELF_TEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 80
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 81
    goto :goto_0

    .line 82
    .end local v2           #intent:Landroid/content/Intent;
    :cond_3
    const-string v6, "*983*25#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 83
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.zte.engineer.action.BATTERY_LOG"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 85
    goto :goto_0

    .line 87
    .end local v2           #intent:Landroid/content/Intent;
    :cond_4
    const-string v6, "*983*463#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 88
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.zte.engineer.action.FRONT_CAMERA_TEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 89
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 90
    goto :goto_0

    .line 91
    .end local v2           #intent:Landroid/content/Intent;
    :cond_5
    const-string v6, "*983*464#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 92
    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.zte.engineer.action.MAIN_CAMERA_TEST"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 94
    goto :goto_0

    .line 103
    .end local v2           #intent:Landroid/content/Intent;
    :cond_6
    const-string v6, "*983*869#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 104
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 105
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.TPCheck"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 107
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 108
    goto :goto_0

    .line 110
    .end local v2           #intent:Landroid/content/Intent;
    :cond_7
    const-string v6, "*#00#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 111
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 112
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.TouchScreenFwload"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 115
    goto/16 :goto_0

    .line 117
    .end local v2           #intent:Landroid/content/Intent;
    :cond_8
    const-string v6, "*983*789#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 118
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 119
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.engineermode"

    const-string v6, "com.mediatek.engineermode.io.SetGpioHigh"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 121
    goto/16 :goto_0

    .line 122
    .end local v2           #intent:Landroid/content/Intent;
    :cond_9
    const-string v6, "*983*647#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 123
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 124
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.DownloadFlagProduct"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 125
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 126
    goto/16 :goto_0

    .line 127
    .end local v2           #intent:Landroid/content/Intent;
    :cond_a
    const-string v6, "*983*648#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 128
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 129
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.DownloadAndSms"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 131
    goto/16 :goto_0

    .line 132
    .end local v2           #intent:Landroid/content/Intent;
    :cond_b
    const-string v6, "*983*120#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 133
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 134
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.mtklogger"

    const-string v6, "com.mediatek.mtklogger.MainActivity"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 137
    goto/16 :goto_0

    .line 138
    .end local v2           #intent:Landroid/content/Intent;
    :cond_c
    const-string v6, "*983*5392#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 139
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 140
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.RingerVibTest"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 142
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 143
    goto/16 :goto_0

    .line 145
    .end local v2           #intent:Landroid/content/Intent;
    :cond_d
    const-string v6, "*983*47#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 146
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 147
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.mediatek.ygps"

    const-string v6, "com.mediatek.ygps.YgpsActivity"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 149
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 150
    goto/16 :goto_0

    .line 151
    .end local v2           #intent:Landroid/content/Intent;
    :cond_e
    const-string v6, "*987*0#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 152
    new-instance v4, Landroid/content/Intent;

    const-string v6, "com.zte.engineer.action.EngineerCodeListView"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 153
    goto/16 :goto_0

    .line 154
    :cond_f
    const-string v6, "*983*154#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 155
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 156
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.ProduceInfoListView"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 159
    goto/16 :goto_0

    .line 160
    .end local v2           #intent:Landroid/content/Intent;
    :cond_10
    const-string v6, "*983*7#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 161
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 162
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.BoardCode"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 165
    goto/16 :goto_0

    .line 166
    .end local v2           #intent:Landroid/content/Intent;
    :cond_11
    const-string v6, "*983*32#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 167
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 168
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v4, "Public Version Information"

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v6, "ro.build.display.id"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const-string v6, "OK"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->show()V

    move v4, v5

    .line 173
    goto/16 :goto_0

    .line 174
    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    :cond_12
    const-string v6, "*983*1275#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    .line 176
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 177
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.VersionInfo"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 191
    goto/16 :goto_0

    .line 206
    .end local v2           #intent:Landroid/content/Intent;
    :cond_13
    const-string v6, "*983*57#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14

    .line 208
    new-instance v3, Landroid/content/Intent;

    const-string v4, "com.zte.smssecurity.action.startservice"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 209
    .local v3, startSmssecurity:Landroid/content/Intent;
    const-string v4, "factory_reset"

    invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 210
    invoke-virtual {p0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 212
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 213
    .local v1, factoryIntent:Landroid/content/Intent;
    const-string v4, "com.android.settings"

    const-string v6, "com.android.settings.Settings$PrivacySettingsActivity"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    const-string v4, "do_factory_reset"

    const-string v6, "FactoryMode"

    invoke-virtual {v1, v4, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 215
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 216
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 217
    goto/16 :goto_0

    .line 218
    .end local v1           #factoryIntent:Landroid/content/Intent;
    .end local v3           #startSmssecurity:Landroid/content/Intent;
    :cond_14
    const-string v6, "*983*3640#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_15

    .line 219
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.provider.Telephony.SECRET_CODE"

    const-string v6, "android_secret_code://3646633"

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v2, v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 221
    .restart local v2       #intent:Landroid/content/Intent;
    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    move v4, v5

    .line 222
    goto/16 :goto_0

    .line 223
    .end local v2           #intent:Landroid/content/Intent;
    :cond_15
    const-string v6, "*983*239#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_16

    .line 224
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 225
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.NetlockInfo"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {v2, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 228
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 229
    goto/16 :goto_0

    .line 255
    .end local v2           #intent:Landroid/content/Intent;
    :cond_16
    const-string v6, "*#0001#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_17

    .line 256
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 257
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.NetWorkType"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 259
    const-string v4, "option"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 260
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 261
    goto/16 :goto_0

    .line 265
    .end local v2           #intent:Landroid/content/Intent;
    :cond_17
    const-string v6, "*983*24474636#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 267
    const-string v4, "djb"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "--djb--*983*24474636#  input = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 269
    .restart local v2       #intent:Landroid/content/Intent;
    const-string v4, "com.zte.engineer"

    const-string v6, "com.zte.engineer.ChiperTest"

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    const-string v4, "option"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 272
    invoke-virtual {p0, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    move v4, v5

    .line 273
    goto/16 :goto_0
.end method

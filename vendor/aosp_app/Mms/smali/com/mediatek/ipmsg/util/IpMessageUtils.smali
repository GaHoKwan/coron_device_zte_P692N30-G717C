.class public Lcom/mediatek/ipmsg/util/IpMessageUtils;
.super Ljava/lang/Object;
.source "IpMessageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;
    }
.end annotation


# static fields
.field public static final ACTIVATE:I = 0x1

.field public static final CACHE_PATH:Ljava/lang/String; = null

.field private static final DUAL_SIM:I = 0x0

.field public static final IPMSG_ACTIVATION_STATUS_ACTION:I = 0x7

.field public static final IPMSG_BACKUP_MSG_STATUS_ACTION:I = 0xb

.field public static final IPMSG_DOWNLOAD_ATTACH_STATUS_ACTION:I = 0x9

.field public static final IPMSG_ERROR_ACTION:I = 0x0

.field public static final IPMSG_IM_STATUS_ACTION:I = 0x5

.field public static final IPMSG_IPMESSAGE_CONTACT_UPDATE:I = 0xe

.field public static final IPMSG_IP_MESSAGE_STATUS_ACTION:I = 0x8

.field public static final IPMSG_NEW_MESSAGE_ACTION:I = 0x1

.field public static final IPMSG_NOTIFICATION_TAG:Ljava/lang/String; = "Mms/noti"

.field public static final IPMSG_REFRESH_CONTACT_LIST_ACTION:I = 0x2

.field public static final IPMSG_REFRESH_GROUP_LIST_ACTION:I = 0x3

.field public static final IPMSG_RESTORE_MSG_STATUS_ACTION:I = 0xc

.field public static final IPMSG_SAVE_HISTORY_ACTION:I = 0x6

.field public static final IPMSG_SERCIVE_STATUS_ACTION:I = 0x4

.field public static final IPMSG_SET_PROFILE_RESULT_ACTION:I = 0xa

.field public static final IPMSG_SIM_INFO_ACTION:I = 0xf

.field public static final IPMSG_UPDATE_GROUP_INFO:I = 0xd

.field public static final IP_MESSAGE_FILE_PATH:Ljava/lang/String; = null

.field private static final MY_URL_SPAN:Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan; = null

.field public static final PLUGIN_METANAME:Ljava/lang/String; = "class"

.field public static final PLUGIN_VERSION:Ljava/lang/String; = "2.0.0"

.field public static final SDCARD_SIZE_RESERVED:I = 0x1400

.field public static final SELECTION_CONTACT_RESULT:Ljava/lang/String; = "contactId"

.field private static final SIM_SELECTION_MODE_ACTIVATION:I = 0x0

.field private static final SIM_SELECTION_MODE_ENABLED:I = 0x1

.field private static final SINGLE_SIM:I = -0x1

.field private static final SMS_BODY_PROJECTION_WITH_IPMSG_ID:[Ljava/lang/String; = null

.field private static final SMS_DRAFT_WHERE:Ljava/lang/String; = "type=3"

.field private static final SMS_ID_INDEX:I = 0x0

.field private static final SMS_IPMSG_ID_INDEX:I = 0x1

.field private static final TAG:Ljava/lang/String; = "Mms/ipmsg/utils"

.field public static final UNCONSTRAINED:I = -0x1

.field public static final WALLPAPER_PATH:Ljava/lang/String; = "/data/data/com.android.providers.telephony/app_wallpaper"

.field public static final WELCOME:I

.field private static sActivationDialog:Landroid/app/AlertDialog;

.field public static sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 117
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "ipmsg_id"

    aput-object v2, v0, v1

    sput-object v0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->SMS_BODY_PROJECTION_WITH_IPMSG_ID:[Ljava/lang/String;

    .line 126
    sput-object v3, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    .line 339
    sput-object v3, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sActivationDialog:Landroid/app/AlertDialog;

    .line 340
    new-instance v0, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;

    invoke-direct {v0, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;-><init>(Lcom/mediatek/ipmsg/util/IpMessageUtils$1;)V

    sput-object v0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->MY_URL_SPAN:Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;

    .line 1209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iSMS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->IP_MESSAGE_FILE_PATH:Ljava/lang/String;

    .line 1210
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "iSMS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Cache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->CACHE_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 563
    return-void
.end method

.method static synthetic access$100()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 114
    sget-object v0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sActivationDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$102(Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"

    .prologue
    .line 114
    sput-object p0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sActivationDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$200(Landroid/app/Activity;III)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 114
    invoke-static {p0, p1, p2, p3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivitionDlg(Landroid/app/Activity;III)V

    return-void
.end method

.method static synthetic access$300(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"

    .prologue
    .line 114
    invoke-static {p0, p1, p2, p3, p4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showSimSelectionDialog(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V

    return-void
.end method

.method public static addIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V
    .locals 2
    .parameter "context"
    .parameter "notiListener"

    .prologue
    .line 310
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getNotificationsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/mms/ipmessage/NotificationsManager;->registerNotificationsListener(Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 312
    return-void
.end method

.method public static checkCurrentIpMessageServiceStatus(Landroid/app/Activity;ZLandroid/os/Handler;I)Z
    .locals 21
    .parameter "activityContext"
    .parameter "allowSwitchCard"
    .parameter "ipMsgHandler"
    .parameter "activityType"

    .prologue
    .line 350
    const-string v17, "Mms/ipmsg/utils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkCurrentIpMessageServiceStatus(): context = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    if-nez p0, :cond_0

    .line 352
    const-string v17, "Mms/ipmsg/utils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkCurrentIpMessageServiceStatus(): context = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    new-instance v19, Ljava/lang/Exception;

    invoke-direct/range {v19 .. v19}, Ljava/lang/Exception;-><init>()V

    invoke-static/range {v17 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 353
    const/16 v17, 0x0

    .line 487
    :goto_0
    return v17

    .line 355
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->getIpMessagServiceId(Landroid/content/Context;)I

    move-result v17

    if-nez v17, :cond_1

    .line 356
    const-string v17, "Mms/ipmsg/utils"

    const-string v18, "checkCurrentIpMessageServiceStatus(): service is not exist. return false!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    const/16 v17, 0x0

    goto :goto_0

    .line 360
    :cond_1
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;)Z

    move-result v9

    .line 361
    .local v9, isServiceEnabled:Z
    invoke-static/range {p0 .. p0}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;)Z

    move-result v8

    .line 362
    .local v8, isServiceActivated:Z
    const-string v17, "Mms/ipmsg/utils"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "checkCurrentIpMessageServiceStatus(): isServiceEnabled = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, ", isServiceActivated = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    const-string v17, "Mms/ipmsg/utils"

    const-string v18, "checkCurrentIpMessageServiceStatus(): Dual SIM."

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 368
    .local v14, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v12

    .line 369
    .local v12, sim1Info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimInfoBySlot(Landroid/content/Context;I)Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    move-result-object v13

    .line 370
    .local v13, sim2Info:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    if-eqz v12, :cond_2

    .line 371
    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_2
    if-eqz v13, :cond_3

    .line 374
    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 376
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    if-nez v17, :cond_5

    .line 378
    const-string v17, "Mms/ipmsg/utils"

    const-string v18, "checkCurrentIpMessageServiceStatus(): No SIM card!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v17

    const/16 v18, 0xeb

    invoke-virtual/range {v17 .. v18}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, content:Ljava/lang/String;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v5, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/widget/Toast;->show()V

    .line 487
    .end local v5           #content:Ljava/lang/String;
    :cond_4
    :goto_1
    const/16 v17, 0x0

    goto/16 :goto_0

    .line 382
    :cond_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_8

    .line 384
    const-string v17, "Mms/ipmsg/utils"

    const-string v18, "checkCurrentIpMessageServiceStatus(): One SIM card!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    if-eqz v9, :cond_6

    .line 386
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 387
    :cond_6
    if-eqz v8, :cond_7

    .line 388
    const/16 v18, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V

    goto :goto_1

    .line 392
    :cond_7
    const/16 v18, 0x1

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivitionDlg(Landroid/app/Activity;III)V

    goto :goto_1

    .line 397
    :cond_8
    const-string v17, "Mms/ipmsg/utils"

    const-string v18, "checkCurrentIpMessageServiceStatus(): Two SIM card!"

    invoke-static/range {v17 .. v18}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "sms_sim_setting"

    const-wide/16 v19, -0x5

    invoke-static/range {v17 .. v20}, Lcom/mediatek/encapsulation/android/provider/EncapsulatedSettings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v6

    .line 401
    .local v6, defaultSimId:J
    const-wide/16 v17, -0x1

    cmp-long v17, v6, v17

    if-eqz v17, :cond_f

    const-wide/16 v17, -0x5

    cmp-long v17, v6, v17

    if-eqz v17, :cond_f

    .line 404
    if-eqz v9, :cond_d

    .line 405
    long-to-int v0, v6

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v17

    if-eqz v17, :cond_9

    .line 406
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 407
    :cond_9
    long-to-int v0, v6

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;I)Z

    move-result v17

    if-eqz v17, :cond_a

    .line 408
    const/16 v17, 0x0

    long-to-int v0, v6

    move/from16 v18, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V

    goto/16 :goto_1

    .line 410
    :cond_a
    if-eqz p1, :cond_c

    .line 411
    const-wide/16 v15, 0x0

    .line 412
    .local v15, switchSimId:J
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v17

    cmp-long v17, v17, v6

    if-nez v17, :cond_b

    .line 413
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v15

    .line 417
    :goto_2
    move-object/from16 v0, p0

    move-wide v1, v15

    invoke-static {v0, v1, v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showSwitchSimDialog(Landroid/app/Activity;J)V

    goto/16 :goto_1

    .line 415
    :cond_b
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v15

    goto :goto_2

    .line 419
    .end local v15           #switchSimId:J
    :cond_c
    const/16 v18, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v19

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v17, v0

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    move/from16 v2, v17

    move/from16 v3, v19

    move-object/from16 v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V

    goto/16 :goto_1

    .line 422
    :cond_d
    if-eqz v8, :cond_e

    long-to-int v0, v6

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;I)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 423
    long-to-int v0, v6

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-static {v0, v14, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V

    goto/16 :goto_1

    .line 427
    :cond_e
    const/16 v17, 0x1

    long-to-int v0, v6

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivitionDlg(Landroid/app/Activity;III)V

    goto/16 :goto_1

    .line 432
    :cond_f
    if-eqz v9, :cond_10

    if-nez p2, :cond_10

    .line 433
    const/16 v17, 0x1

    goto/16 :goto_0

    .line 434
    :cond_10
    if-eqz v8, :cond_13

    .line 436
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;I)Z

    move-result v10

    .line 438
    .local v10, isSimActivated0:Z
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/mms/MmsConfig;->isActivated(Landroid/content/Context;I)Z

    move-result v11

    .line 440
    .local v11, isSimActivated1:Z
    if-eqz v10, :cond_11

    if-eqz v11, :cond_11

    .line 441
    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-static {v0, v14, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V

    goto/16 :goto_1

    .line 443
    :cond_11
    if-eqz v10, :cond_12

    .line 444
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-static {v0, v14, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V

    goto/16 :goto_1

    .line 446
    :cond_12
    if-eqz v11, :cond_4

    .line 447
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual/range {v17 .. v17}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v17

    move-wide/from16 v0, v17

    long-to-int v0, v0

    move/from16 v17, v0

    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-static {v0, v14, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V

    goto/16 :goto_1

    .line 452
    .end local v10           #isSimActivated0:Z
    .end local v11           #isSimActivated1:Z
    :cond_13
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v14, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->showSimSelectionDialog(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V

    goto/16 :goto_1
.end method

.method private static computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 12
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    const/4 v6, 0x1

    const/4 v11, -0x1

    .line 1538
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-double v4, v7

    .line 1539
    .local v4, w:D
    iget v7, p0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-double v0, v7

    .line 1541
    .local v0, h:D
    if-ne p2, v11, :cond_1

    move v2, v6

    .line 1543
    .local v2, lowerBound:I
    :goto_0
    if-ne p1, v11, :cond_2

    const/16 v3, 0x80

    .line 1546
    .local v3, upperBound:I
    :goto_1
    if-ge v3, v2, :cond_3

    .line 1555
    .end local v2           #lowerBound:I
    :cond_0
    :goto_2
    return v2

    .line 1541
    .end local v3           #upperBound:I
    :cond_1
    mul-double v7, v4, v0

    int-to-double v9, p2

    div-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v2, v7

    goto :goto_0

    .line 1543
    .restart local v2       #lowerBound:I
    :cond_2
    int-to-double v7, p1

    div-double v7, v4, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->floor(D)D

    move-result-wide v7

    int-to-double v9, p1

    div-double v9, v0, v9

    invoke-static {v9, v10}, Ljava/lang/Math;->floor(D)D

    move-result-wide v9

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->min(DD)D

    move-result-wide v7

    double-to-int v3, v7

    goto :goto_1

    .line 1550
    .restart local v3       #upperBound:I
    :cond_3
    if-ne p2, v11, :cond_4

    if-ne p1, v11, :cond_4

    move v2, v6

    .line 1551
    goto :goto_2

    .line 1552
    :cond_4
    if-eq p1, v11, :cond_0

    move v2, v3

    .line 1555
    goto :goto_2
.end method

.method public static computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 3
    .parameter "options"
    .parameter "minSideLength"
    .parameter "maxNumOfPixels"

    .prologue
    .line 1521
    invoke-static {p0, p1, p2}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->computeInitialSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v0

    .line 1524
    .local v0, initialSize:I
    const/16 v2, 0x8

    if-gt v0, v2, :cond_0

    .line 1525
    const/4 v1, 0x1

    .line 1526
    .local v1, roundedSize:I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 1527
    shl-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1530
    .end local v1           #roundedSize:I
    :cond_0
    add-int/lit8 v2, v0, 0x7

    div-int/lit8 v2, v2, 0x8

    mul-int/lit8 v1, v2, 0x8

    .line 1533
    .restart local v1       #roundedSize:I
    :cond_1
    return v1
.end method

.method public static copy(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "src"
    .parameter "dest"

    .prologue
    .line 1427
    const/4 v2, 0x0

    .line 1428
    .local v2, is:Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 1430
    .local v5, os:Ljava/io/OutputStream;
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1431
    .local v7, out:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1432
    invoke-virtual {v7}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v8

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 1436
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8

    .line 1437
    .end local v2           #is:Ljava/io/InputStream;
    .local v3, is:Ljava/io/InputStream;
    :try_start_1
    new-instance v6, Ljava/io/BufferedOutputStream;

    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v8}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9

    .line 1439
    .end local v5           #os:Ljava/io/OutputStream;
    .local v6, os:Ljava/io/OutputStream;
    const/16 v8, 0x100

    :try_start_2
    new-array v0, v8, [B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1440
    .local v0, b:[B
    const/4 v4, 0x0

    .line 1442
    .local v4, len:I
    :goto_0
    :try_start_3
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v8, -0x1

    if-eq v4, v8, :cond_4

    .line 1443
    const/4 v8, 0x0

    invoke-virtual {v6, v0, v8, v4}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1447
    :catch_0
    move-exception v1

    .line 1448
    .local v1, e:Ljava/io/IOException;
    :try_start_4
    const-string v8, "Mms/ipmsg/utils"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1450
    if-eqz v3, :cond_1

    .line 1452
    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1461
    .end local v1           #e:Ljava/io/IOException;
    :cond_1
    :goto_1
    if-eqz v6, :cond_2

    .line 1463
    :try_start_6
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    :cond_2
    :goto_2
    move-object v5, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .line 1469
    .end local v0           #b:[B
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len:I
    .restart local v2       #is:Ljava/io/InputStream;
    :cond_3
    :goto_3
    return-void

    .line 1446
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v0       #b:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v6       #os:Ljava/io/OutputStream;
    :cond_4
    :try_start_7
    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    .line 1450
    if-eqz v3, :cond_1

    .line 1452
    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_1

    .line 1453
    :catch_1
    move-exception v1

    .line 1454
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_9
    const-string v8, "Mms/ipmsg/utils"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_2

    goto :goto_1

    .line 1458
    .end local v0           #b:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v4           #len:I
    :catch_2
    move-exception v1

    move-object v5, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .line 1459
    .end local v3           #is:Ljava/io/InputStream;
    .local v1, e:Ljava/io/FileNotFoundException;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_4
    :try_start_a
    const-string v8, "Mms/ipmsg/utils"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 1461
    if-eqz v5, :cond_3

    .line 1463
    :try_start_b
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_3

    goto :goto_3

    .line 1464
    :catch_3
    move-exception v1

    .line 1465
    .local v1, e:Ljava/io/IOException;
    const-string v8, "Mms/ipmsg/utils"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    .line 1450
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v0       #b:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v6       #os:Ljava/io/OutputStream;
    :catchall_0
    move-exception v8

    if-eqz v3, :cond_5

    .line 1452
    :try_start_c
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/FileNotFoundException; {:try_start_c .. :try_end_c} :catch_2

    .line 1450
    :cond_5
    :goto_5
    :try_start_d
    throw v8
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_d} :catch_2

    .line 1461
    .end local v0           #b:[B
    .end local v4           #len:I
    :catchall_1
    move-exception v8

    move-object v5, v6

    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    :goto_6
    if-eqz v5, :cond_6

    .line 1463
    :try_start_e
    invoke-virtual {v5}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_4

    .line 1461
    :cond_6
    :goto_7
    throw v8

    .line 1464
    :catch_4
    move-exception v1

    .line 1465
    .restart local v1       #e:Ljava/io/IOException;
    const-string v9, "Mms/ipmsg/utils"

    const-string v10, ""

    invoke-static {v9, v10, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7

    .line 1453
    .end local v1           #e:Ljava/io/IOException;
    .end local v2           #is:Ljava/io/InputStream;
    .end local v5           #os:Ljava/io/OutputStream;
    .restart local v0       #b:[B
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v4       #len:I
    .restart local v6       #os:Ljava/io/OutputStream;
    :catch_5
    move-exception v1

    .line 1454
    .restart local v1       #e:Ljava/io/IOException;
    :try_start_f
    const-string v9, "Mms/ipmsg/utils"

    const-string v10, ""

    invoke-static {v9, v10, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .line 1453
    :catch_6
    move-exception v1

    .line 1454
    const-string v8, "Mms/ipmsg/utils"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_f} :catch_2

    goto :goto_1

    .line 1464
    .end local v1           #e:Ljava/io/IOException;
    :catch_7
    move-exception v1

    .line 1465
    .restart local v1       #e:Ljava/io/IOException;
    const-string v8, "Mms/ipmsg/utils"

    const-string v9, ""

    invoke-static {v8, v9, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 1461
    .end local v0           #b:[B
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #len:I
    .end local v6           #os:Ljava/io/OutputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    .restart local v5       #os:Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    goto :goto_6

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catchall_3
    move-exception v8

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_6

    .line 1458
    :catch_8
    move-exception v1

    goto :goto_4

    .end local v2           #is:Ljava/io/InputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    :catch_9
    move-exception v1

    move-object v2, v3

    .end local v3           #is:Ljava/io/InputStream;
    .restart local v2       #is:Ljava/io/InputStream;
    goto :goto_4
.end method

.method public static createLoseSDCardNotice(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "resId"

    .prologue
    .line 865
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x8b

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x66

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 871
    return-void
.end method

.method public static deleteIpMessage(Landroid/content/Context;Ljava/util/Collection;ZI)V
    .locals 12
    .parameter "ct"
    .parameter
    .parameter "delImportant"
    .parameter "maxSmsId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;ZI)V"
        }
    .end annotation

    .prologue
    .line 824
    .local p1, threads:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ipmsg_id > 0 AND _id <= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 825
    .local v4, selection:Ljava/lang/String;
    if-eqz p1, :cond_1

    .line 826
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 827
    const-string v0, "Mms/ipmsg/utils"

    const-string v1, "threads list is empty!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    :goto_0
    return-void

    .line 830
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getThreadListString(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v11

    .line 831
    .local v11, threadList:Ljava/lang/String;
    const-string v0, "Mms/ipmsg/utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "threadList:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND thread_id IN ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 834
    .end local v11           #threadList:Ljava/lang/String;
    :cond_1
    const/4 v7, 0x0

    .line 835
    .local v7, cursor:Landroid/database/Cursor;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v3, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v3, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 837
    if-eqz v7, :cond_3

    .line 838
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v0

    new-array v10, v0, [J

    .line 839
    .local v10, ids:[J
    const/4 v8, 0x0

    .line 840
    .local v8, i:I
    :goto_1
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 841
    add-int/lit8 v9, v8, 0x1

    .end local v8           #i:I
    .local v9, i:I
    const/4 v0, 0x0

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    aput-wide v0, v10, v8

    .line 842
    const-string v0, "Mms/ipmsg/utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "id"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v9, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v9, -0x1

    aget-wide v2, v10, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v8, v9

    .end local v9           #i:I
    .restart local v8       #i:I
    goto :goto_1

    .line 844
    :cond_2
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 849
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v10, p2, v1}, Lcom/mediatek/mms/ipmessage/MessageManager;->deleteIpMsg([JZZ)V

    goto/16 :goto_0

    .line 846
    .end local v8           #i:I
    .end local v10           #ids:[J
    :cond_3
    const-string v0, "Mms/ipmsg/utils"

    const-string v1, "delete ipmessage query get cursor null!"

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public static deleteIpMessageDraft(Landroid/content/Context;Lcom/android/mms/data/Conversation;Lcom/android/mms/data/WorkingMessage;)Z
    .locals 16
    .parameter "context"
    .parameter "conv"
    .parameter "workingMessage"

    .prologue
    .line 1087
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIpMessageDraft(): threadId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v14

    .line 1091
    .local v14, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-gtz v2, :cond_0

    .line 1092
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIpMessageDraft(): no draft, threadId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    const/4 v2, 0x0

    .line 1124
    :goto_0
    return v2

    .line 1096
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v14, v15}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1097
    .local v4, threadUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/mediatek/ipmsg/util/IpMessageUtils;->SMS_BODY_PROJECTION_WITH_IPMSG_ID:[Ljava/lang/String;

    const-string v6, "type=3"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 1099
    .local v9, c:Landroid/database/Cursor;
    const-wide/16 v12, 0x0

    .line 1100
    .local v12, msgId:J
    const-wide/16 v10, 0x0

    .line 1101
    .local v10, ipMsgId:J
    if-eqz v9, :cond_2

    .line 1103
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1104
    const/4 v2, 0x1

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 1105
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_1

    .line 1106
    const/4 v2, 0x0

    invoke-interface {v9, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v12

    .line 1110
    :cond_1
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 1114
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_4

    .line 1115
    const-wide/16 v2, 0x0

    cmp-long v2, v10, v2

    if-lez v2, :cond_3

    .line 1116
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [J

    const/4 v5, 0x0

    aput-wide v12, v3, v5

    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-virtual {v2, v3, v5, v6}, Lcom/mediatek/mms/ipmessage/MessageManager;->deleteIpMsg([JZZ)V

    .line 1117
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIpMessageDraft(): Delete IP message draft, msgId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1121
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 1110
    :catchall_0
    move-exception v2

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1119
    :cond_3
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    goto :goto_1

    .line 1123
    :cond_4
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "deleteIpMessageDraft(): No IP message draft, msgId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1124
    const/4 v2, 0x0

    goto/16 :goto_0
.end method

.method public static formatAudioTime(I)Ljava/lang/String;
    .locals 3
    .parameter "duration"

    .prologue
    .line 900
    const-string v0, ""

    .line 901
    .local v0, result:Ljava/lang/String;
    const/16 v1, 0x3c

    if-le p0, v1, :cond_1

    .line 902
    rem-int/lit8 v1, p0, 0x3c

    if-nez v1, :cond_0

    .line 903
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p0, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 913
    :goto_0
    return-object v0

    .line 905
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v2, p0, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    rem-int/lit8 v2, p0, 0x3c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 907
    :cond_1
    if-lez p0, :cond_2

    .line 908
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 911
    :cond_2
    const-string v0, "no duration"

    goto :goto_0
.end method

.method public static formatFileSize(I)Ljava/lang/String;
    .locals 6
    .parameter "size"

    .prologue
    .line 874
    const-string v2, ""

    .line 875
    .local v2, result:Ljava/lang/String;
    const/high16 v1, 0x10

    .line 876
    .local v1, oneMb:I
    const/16 v0, 0x400

    .line 877
    .local v0, oneKb:I
    if-le p0, v1, :cond_1

    .line 878
    rem-int v4, p0, v1

    div-int/lit8 v3, v4, 0x64

    .line 879
    .local v3, s:I
    if-nez v3, :cond_0

    .line 880
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 896
    .end local v3           #s:I
    :goto_0
    return-object v2

    .line 882
    .restart local v3       #s:I
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int v5, p0, v1

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "MB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 884
    .end local v3           #s:I
    :cond_1
    if-le p0, v0, :cond_3

    .line 885
    rem-int v4, p0, v0

    div-int/lit8 v3, v4, 0x64

    .line 886
    .restart local v3       #s:I
    if-nez v3, :cond_2

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 889
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int v5, p0, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "KB"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 891
    .end local v3           #s:I
    :cond_3
    if-lez p0, :cond_4

    .line 892
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "B"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 894
    :cond_4
    const-string v2, "invalid size"

    goto :goto_0
.end method

.method public static getActionTypeByAction(Ljava/lang/String;)I
    .locals 3
    .parameter "action"

    .prologue
    const/4 v0, 0x0

    .line 256
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 306
    :goto_0
    return v0

    .line 259
    :cond_0
    const-string v1, "com.mediatek.mms.ipmessage.newMessage"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 260
    const/4 v0, 0x1

    goto :goto_0

    .line 262
    :cond_1
    const-string v1, "com.mediatek.mms.ipmessage.refreshContactList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 263
    const/4 v0, 0x2

    goto :goto_0

    .line 265
    :cond_2
    const-string v1, "com.mediatek.mms.ipmessage.refreshGroupList"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 266
    const/4 v0, 0x3

    goto :goto_0

    .line 268
    :cond_3
    const-string v1, "com.mediatek.mms.ipmessage.serviceStatus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 269
    const/4 v0, 0x4

    goto :goto_0

    .line 271
    :cond_4
    const-string v1, "com.mediatek.mms.ipmessage.IMStatus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 272
    const/4 v0, 0x5

    goto :goto_0

    .line 274
    :cond_5
    const-string v1, "com.mediatek.mms.ipmessage.saveHistroy"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 275
    const/4 v0, 0x6

    goto :goto_0

    .line 277
    :cond_6
    const-string v1, "com.mediatek.mms.ipmessage.activationStatus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 278
    const/4 v0, 0x7

    goto :goto_0

    .line 280
    :cond_7
    const-string v1, "com.mediatek.mms.ipmessage.messageStatus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 281
    const/16 v0, 0x8

    goto :goto_0

    .line 283
    :cond_8
    const-string v1, "com.mediatek.mms.ipmessage.downloadAttachStatus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 284
    const/16 v0, 0x9

    goto :goto_0

    .line 286
    :cond_9
    const-string v1, "com.mediatek.mms.ipmessage.setProfileResult"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 287
    const/16 v0, 0xa

    goto :goto_0

    .line 289
    :cond_a
    const-string v1, "com.mediatek.mms.ipmessage.backupMsgStatus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 290
    const/16 v0, 0xb

    goto :goto_0

    .line 292
    :cond_b
    const-string v1, "com.mediatek.mms.ipmessage.restoreMsgStatus"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 293
    const/16 v0, 0xc

    goto :goto_0

    .line 295
    :cond_c
    const-string v1, "com.mediatek.mms.ipmessage.updateGroup"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 296
    const/16 v0, 0xd

    goto/16 :goto_0

    .line 298
    :cond_d
    const-string v1, "com.mediatek.mms.ipmessage.contactUpdate"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 299
    const/16 v0, 0xe

    goto/16 :goto_0

    .line 301
    :cond_e
    const-string v1, "com.mediatek.mms.ipmessage.SIMInfoChanged"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 302
    const/16 v0, 0xf

    goto/16 :goto_0

    .line 305
    :cond_f
    const-string v1, "Mms/ipmsg/utils"

    const-string v2, "getActionTypeByAction(): Unknown ipmessage action."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static declared-synchronized getActivitiesManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ActivitiesManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 157
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getActivitiesManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ActivitiesManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getBitmapByPath(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;II)Landroid/graphics/Bitmap;
    .locals 13
    .parameter "path"
    .parameter "options"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 1567
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_0

    if-lez p2, :cond_0

    if-gtz p3, :cond_1

    .line 1568
    :cond_0
    const-string v10, "Mms/ipmsg/utils"

    const-string v11, "parm is error."

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1569
    const/4 v0, 0x0

    .line 1603
    :goto_0
    return-object v0

    .line 1572
    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1573
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 1574
    const-string v10, "Mms/ipmsg/utils"

    const-string v11, "file not exist!"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1575
    const/4 v0, 0x0

    goto :goto_0

    .line 1577
    :cond_2
    const/4 v4, 0x0

    .line 1579
    .local v4, in:Ljava/io/FileInputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .end local v4           #in:Ljava/io/FileInputStream;
    .local v5, in:Ljava/io/FileInputStream;
    move-object v4, v5

    .line 1583
    .end local v5           #in:Ljava/io/FileInputStream;
    .restart local v4       #in:Ljava/io/FileInputStream;
    :goto_1
    if-eqz p1, :cond_3

    .line 1584
    invoke-static/range {p2 .. p3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getScreenRegion(II)Landroid/graphics/Rect;

    move-result-object v8

    .line 1585
    .local v8, r:Landroid/graphics/Rect;
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    .line 1586
    .local v9, w:I
    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v3

    .line 1587
    .local v3, h:I
    if-le v9, v3, :cond_4

    move v7, v9

    .line 1588
    .local v7, maxSize:I
    :goto_2
    mul-int v10, v9, v3

    invoke-static {p1, v7, v10}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->computeSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v6

    .line 1589
    .local v6, inSimpleSize:I
    iput v6, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1590
    const/4 v10, 0x0

    iput-boolean v10, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1592
    .end local v3           #h:I
    .end local v6           #inSimpleSize:I
    .end local v7           #maxSize:I
    .end local v8           #r:Landroid/graphics/Rect;
    .end local v9           #w:I
    :cond_3
    const/4 v0, 0x0

    .line 1594
    .local v0, bm:Landroid/graphics/Bitmap;
    const/4 v10, 0x0

    :try_start_1
    invoke-static {v4, v10, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v0

    .line 1599
    :goto_3
    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1600
    :catch_0
    move-exception v1

    .line 1601
    .local v1, e:Ljava/io/IOException;
    const-string v10, "Mms/ipmsg/utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "IOException:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1580
    .end local v0           #bm:Landroid/graphics/Bitmap;
    .end local v1           #e:Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 1581
    .local v1, e:Ljava/io/FileNotFoundException;
    const-string v10, "Mms/ipmsg/utils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "FileNotFoundException:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .end local v1           #e:Ljava/io/FileNotFoundException;
    .restart local v3       #h:I
    .restart local v8       #r:Landroid/graphics/Rect;
    .restart local v9       #w:I
    :cond_4
    move v7, v3

    .line 1587
    goto :goto_2

    .line 1595
    .end local v3           #h:I
    .end local v8           #r:Landroid/graphics/Rect;
    .end local v9           #w:I
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :catch_2
    move-exception v1

    .line 1596
    .local v1, e:Ljava/lang/OutOfMemoryError;
    const-string v10, "Mms/ipmsg/utils"

    const-string v11, "bitmap decode failed, catch outmemery error"

    invoke-static {v10, v11}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public static getCachePath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 1212
    const/4 v0, 0x0

    .line 1213
    .local v0, path:Ljava/lang/String;
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getSDCardPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 1214
    .local v1, sdCardPath:Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1215
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/ipmsg/util/IpMessageUtils;->CACHE_PATH:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1217
    :cond_0
    return-object v0
.end method

.method public static declared-synchronized getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 165
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 173
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getContactManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ContactManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getDefaultFM(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 7
    .parameter "context"
    .parameter "bThisYear"

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 963
    invoke-static {p0}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 964
    .local v1, order:[C
    if-eqz v1, :cond_3

    .line 965
    if-eqz p1, :cond_2

    .line 966
    aget-char v2, v1, v4

    const/16 v3, 0x79

    if-eq v2, v3, :cond_0

    aget-char v2, v1, v4

    const/16 v3, 0x59

    if-ne v2, v3, :cond_1

    .line 967
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    .local v0, fm:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 969
    .end local v0           #fm:Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fm:Ljava/lang/String;
    goto :goto_0

    .line 972
    .end local v0           #fm:Ljava/lang/String;
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-char v3, v1, v6

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0       #fm:Ljava/lang/String;
    goto :goto_0

    .line 976
    .end local v0           #fm:Ljava/lang/String;
    :cond_3
    const-string v0, "MM/DD"

    .restart local v0       #fm:Ljava/lang/String;
    goto :goto_0
.end method

.method public static getExifOrientation(Ljava/lang/String;)I
    .locals 8
    .parameter "filepath"

    .prologue
    const/4 v7, -0x1

    .line 1262
    const/4 v0, 0x0

    .line 1263
    .local v0, degree:I
    const/4 v2, 0x0

    .line 1266
    .local v2, exif:Landroid/media/ExifInterface;
    :try_start_0
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .end local v2           #exif:Landroid/media/ExifInterface;
    .local v3, exif:Landroid/media/ExifInterface;
    move-object v2, v3

    .line 1271
    .end local v3           #exif:Landroid/media/ExifInterface;
    .restart local v2       #exif:Landroid/media/ExifInterface;
    :goto_0
    if-eqz v2, :cond_0

    .line 1272
    const-string v5, "Orientation"

    invoke-virtual {v2, v5, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v4

    .line 1273
    .local v4, orientation:I
    if-eq v4, v7, :cond_0

    .line 1275
    packed-switch v4, :pswitch_data_0

    .line 1293
    .end local v4           #orientation:I
    :cond_0
    :goto_1
    :pswitch_0
    return v0

    .line 1267
    :catch_0
    move-exception v1

    .line 1268
    .local v1, ex:Ljava/io/IOException;
    const-string v5, "Mms/ipmsg/utils"

    const-string v6, "getExifOrientation():"

    invoke-static {v5, v6, v1}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1277
    .end local v1           #ex:Ljava/io/IOException;
    .restart local v4       #orientation:I
    :pswitch_1
    const/16 v0, 0x5a

    .line 1278
    goto :goto_1

    .line 1281
    :pswitch_2
    const/16 v0, 0xb4

    .line 1282
    goto :goto_1

    .line 1285
    :pswitch_3
    const/16 v0, 0x10e

    .line 1286
    goto :goto_1

    .line 1275
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public static getFileSize(Ljava/lang/String;)I
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v2, -0x1

    .line 1415
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1422
    :goto_0
    return v2

    .line 1418
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1419
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->length()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    long-to-int v2, v2

    goto :goto_0

    .line 1420
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1421
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Mms/ipmsg/utils"

    const-string v4, "getFileSize():"

    invoke-static {v3, v4, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static declared-synchronized getGroupManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/GroupManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 191
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getGroupManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/GroupManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getIpMessageCaption(Lcom/mediatek/mms/ipmessage/message/IpMessage;)Ljava/lang/String;
    .locals 5
    .parameter "ipMessage"

    .prologue
    .line 1128
    const-string v2, "Mms/ipmsg/utils"

    const-string v3, "getIpMessageCaption()"

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1129
    const-string v0, ""

    .line 1130
    .local v0, caption:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v1

    .line 1131
    .local v1, type:I
    packed-switch v1, :pswitch_data_0

    .line 1158
    .end local p0
    :goto_0
    :pswitch_0
    return-object v0

    .line 1133
    .restart local p0
    :pswitch_1
    check-cast p0, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    .end local p0
    invoke-virtual {p0}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->getCaption()Ljava/lang/String;

    move-result-object v0

    .line 1134
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpMessageCaption(): Get pic caption, caption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1137
    .restart local p0
    :pswitch_2
    check-cast p0, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;

    .end local p0
    invoke-virtual {p0}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->getCaption()Ljava/lang/String;

    move-result-object v0

    .line 1138
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpMessageCaption(): Get audio caption, caption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1141
    .restart local p0
    :pswitch_3
    check-cast p0, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    .end local p0
    invoke-virtual {p0}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->getCaption()Ljava/lang/String;

    move-result-object v0

    .line 1142
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpMessageCaption(): Get video caption, caption = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;
    .locals 2
    .parameter "context"

    .prologue
    .line 132
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    if-nez v0, :cond_0

    .line 133
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->initIpMessagePlugin(Landroid/content/Context;)V

    .line 135
    :cond_0
    sget-object v0, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getIpMessageStatusResourceId(I)I
    .locals 2
    .parameter "status"

    .prologue
    .line 1191
    const/4 v0, 0x0

    .line 1192
    .local v0, id:I
    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    .line 1193
    const v0, 0x7f0200f5

    .line 1205
    :cond_0
    :goto_0
    return v0

    .line 1194
    :cond_1
    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    .line 1195
    const v0, 0x7f0200f2

    goto :goto_0

    .line 1196
    :cond_2
    const/4 v1, 0x5

    if-ne p0, v1, :cond_3

    .line 1197
    const v0, 0x7f0200f3

    goto :goto_0

    .line 1198
    :cond_3
    if-nez p0, :cond_4

    .line 1199
    const v0, 0x7f0200a8

    goto :goto_0

    .line 1200
    :cond_4
    const/4 v1, 0x6

    if-ne p0, v1, :cond_5

    .line 1201
    const v0, 0x7f0200f4

    goto :goto_0

    .line 1202
    :cond_5
    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    .line 1203
    const v0, 0x7f0200a8

    goto :goto_0
.end method

.method public static getMemPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "c"

    .prologue
    .line 1221
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 199
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getNotificationsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/NotificationsManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 182
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getNotificationsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/NotificationsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getOptions(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 2
    .parameter "path"

    .prologue
    .line 1607
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1608
    .local v0, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1609
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 1610
    return-object v0
.end method

.method public static declared-synchronized getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 216
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getSDCardPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "c"

    .prologue
    .line 1225
    const/4 v1, 0x0

    .line 1226
    .local v1, sdDir:Ljava/io/File;
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    .line 1228
    .local v2, sdStatus:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1229
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    .line 1239
    :goto_0
    return-object v3

    .line 1232
    :cond_0
    const-string v3, "mounted"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1234
    .local v0, sdCardExist:Z
    if-eqz v0, :cond_1

    .line 1235
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 1236
    invoke-virtual {v1}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 1239
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getSDCardStatus()Z
    .locals 5

    .prologue
    .line 1243
    const/4 v0, 0x0

    .line 1244
    .local v0, ret:Z
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    .line 1245
    .local v1, sdStatus:Ljava/lang/String;
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSDCardStatus(): sdStatus = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1246
    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1247
    const/4 v0, 0x1

    .line 1249
    :cond_0
    return v0
.end method

.method public static getSDcardAvailableSpace()J
    .locals 8

    .prologue
    .line 1253
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    .line 1254
    .local v4, path:Ljava/io/File;
    new-instance v5, Landroid/os/StatFs;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 1255
    .local v5, stat:Landroid/os/StatFs;
    invoke-virtual {v5}, Landroid/os/StatFs;->getBlockSize()I

    move-result v6

    int-to-long v2, v6

    .line 1256
    .local v2, blockSize:J
    invoke-virtual {v5}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v6

    int-to-long v0, v6

    .line 1258
    .local v0, availableBlocks:J
    mul-long v6, v0, v2

    return-wide v6
.end method

.method private static getScreenRegion(II)Landroid/graphics/Rect;
    .locals 2
    .parameter "width"
    .parameter "height"

    .prologue
    const/4 v1, 0x0

    .line 1508
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v1, v1, p0, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static declared-synchronized getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 207
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getServiceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ServiceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getSettingsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/SettingsManager;
    .locals 3
    .parameter "context"

    .prologue
    .line 224
    const-class v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v1

    :try_start_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getSettingsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/SettingsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getShortTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "time"

    .prologue
    .line 925
    const/16 v0, 0xb00

    .line 927
    .local v0, formatFlags:I
    or-int/lit8 v0, v0, 0x1

    .line 928
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getThreadListString(Ljava/util/Collection;)Ljava/lang/String;
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 812
    .local p0, threads:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Long;>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 813
    .local v3, threadList:Ljava/lang/StringBuilder;
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 814
    .local v1, thread:J
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 815
    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 817
    .end local v1           #thread:J
    :cond_0
    const-string v4, "Mms/ipmsg/utils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "threadList:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 818
    const/4 v4, 0x0

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getTimeDividerString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 18
    .parameter "context"
    .parameter "when"

    .prologue
    .line 933
    new-instance v17, Landroid/text/format/Time;

    invoke-direct/range {v17 .. v17}, Landroid/text/format/Time;-><init>()V

    .line 934
    .local v17, then:Landroid/text/format/Time;
    move-object/from16 v0, v17

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/text/format/Time;->set(J)V

    .line 935
    new-instance v14, Landroid/text/format/Time;

    invoke-direct {v14}, Landroid/text/format/Time;-><init>()V

    .line 936
    .local v14, now:Landroid/text/format/Time;
    invoke-virtual {v14}, Landroid/text/format/Time;->setToNow()V

    .line 939
    const v13, 0x80b00

    .line 943
    .local v13, formatFlags:I
    move-object/from16 v0, v17

    iget v4, v0, Landroid/text/format/Time;->year:I

    iget v5, v14, Landroid/text/format/Time;->year:I

    if-eq v4, v5, :cond_1

    .line 944
    or-int/lit8 v13, v13, 0x14

    .line 958
    :cond_0
    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    invoke-static {v0, v1, v2, v13}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    :goto_0
    return-object v4

    .line 945
    :cond_1
    move-object/from16 v0, v17

    iget v4, v0, Landroid/text/format/Time;->yearDay:I

    iget v5, v14, Landroid/text/format/Time;->yearDay:I

    if-eq v4, v5, :cond_2

    .line 947
    or-int/lit8 v13, v13, 0x10

    .line 948
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    .line 949
    .local v10, curDate:Ljava/util/Date;
    new-instance v3, Ljava/util/Date;

    invoke-virtual {v10}, Ljava/util/Date;->getYear()I

    move-result v4

    invoke-virtual {v10}, Ljava/util/Date;->getMonth()I

    move-result v5

    invoke-virtual {v10}, Ljava/util/Date;->getDate()I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-direct/range {v3 .. v9}, Ljava/util/Date;-><init>(IIIIII)V

    .line 950
    .local v3, cur:Ljava/util/Date;
    const-wide/32 v15, 0x5265c00

    .line 951
    .local v15, oneDay:J
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    sub-long v11, v4, p1

    .line 952
    .local v11, elapsedTime:J
    cmp-long v4, v11, v15

    if-gez v4, :cond_0

    const-wide/16 v4, 0x0

    cmp-long v4, v11, v4

    if-lez v4, :cond_0

    .line 953
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b014e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 956
    .end local v3           #cur:Ljava/util/Date;
    .end local v10           #curDate:Ljava/util/Date;
    .end local v11           #elapsedTime:J
    .end local v15           #oneDay:J
    :cond_2
    const v4, 0x7f0b014d

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private static declared-synchronized initIpMessagePlugin(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    .line 139
    const-class v2, Lcom/mediatek/ipmsg/util/IpMessageUtils;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 141
    :try_start_1
    const-class v1, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2.0.0"

    const-string v4, "class"

    const/4 v5, 0x0

    new-array v5, v5, [Landroid/content/pm/Signature;

    invoke-static {p0, v1, v3, v4, v5}, Lcom/mediatek/encapsulation/com/mediatek/pluginmanager/EncapsulatedPluginManager;->createPluginObject(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/Signature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    sput-object v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    .line 143
    const-string v1, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sIpMessagePlugin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/util/AndroidException; {:try_start_1 .. :try_end_1} :catch_0

    .line 149
    :cond_0
    :goto_0
    monitor-exit v2

    return-void

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, e:Landroid/util/AndroidException;
    :try_start_2
    new-instance v1, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;

    invoke-direct {v1, p0}, Lcom/mediatek/mms/ipmessage/IpMessagePluginImpl;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    .line 146
    const-string v1, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "default sIpMessagePlugin = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sIpMessagePlugin:Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 139
    .end local v0           #e:Landroid/util/AndroidException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static isAudio(Ljava/lang/String;)Z
    .locals 10
    .parameter "name"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1027
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return v6

    .line 1030
    :cond_1
    const/16 v8, 0xa

    new-array v2, v8, [Ljava/lang/String;

    const-string v8, ".amr"

    aput-object v8, v2, v6

    const-string v8, ".ogg"

    aput-object v8, v2, v7

    const/4 v8, 0x2

    const-string v9, ".mp3"

    aput-object v9, v2, v8

    const/4 v8, 0x3

    const-string v9, ".aac"

    aput-object v9, v2, v8

    const/4 v8, 0x4

    const-string v9, ".ape"

    aput-object v9, v2, v8

    const/4 v8, 0x5

    const-string v9, ".flac"

    aput-object v9, v2, v8

    const/4 v8, 0x6

    const-string v9, ".wma"

    aput-object v9, v2, v8

    const/4 v8, 0x7

    const-string v9, ".wav"

    aput-object v9, v2, v8

    const/16 v8, 0x8

    const-string v9, ".mp2"

    aput-object v9, v2, v8

    const/16 v8, 0x9

    const-string v9, ".mid"

    aput-object v9, v2, v8

    .line 1031
    .local v2, extArrayString:[Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 1032
    .local v5, path:Ljava/lang/String;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/String;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 1033
    .local v1, ext:Ljava/lang/String;
    invoke-virtual {v5, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    move v6, v7

    .line 1034
    goto :goto_0

    .line 1032
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method public static isExistsFile(Ljava/lang/String;)Z
    .locals 5
    .parameter "filepath"

    .prologue
    const/4 v2, 0x0

    .line 1402
    :try_start_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1409
    :goto_0
    return v2

    .line 1405
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1406
    .local v1, file:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 1407
    .end local v1           #file:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1408
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "Mms/ipmsg/utils"

    const-string v4, "isExistsFile():"

    invoke-static {v3, v4, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static isFileStatusOk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "path"

    .prologue
    const/16 v2, 0x67

    const/4 v0, 0x0

    .line 983
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 984
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 998
    :goto_0
    return v0

    .line 988
    :cond_0
    invoke-static {p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 989
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 993
    :cond_1
    invoke-static {p1}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x20

    if-le v1, v2, :cond_2

    .line 994
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x68

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 998
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isPic(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 1002
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1010
    :cond_0
    :goto_0
    return v1

    .line 1005
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1006
    .local v0, path:Ljava/lang/String;
    const-string v2, ".png"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".jpg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".bmp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".gif"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1008
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isValidAttach(Ljava/lang/String;Z)Z
    .locals 3
    .parameter "path"
    .parameter "inspectSize"

    .prologue
    const/4 v0, 0x0

    .line 853
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->isExistsFile(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_1

    .line 854
    :cond_0
    const-string v1, "Mms/ipmsg/utils"

    const-string v2, "isValidAttach: file is not exist, or size is 0"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 861
    :goto_0
    return v0

    .line 857
    :cond_1
    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0x20

    if-le v1, v2, :cond_2

    .line 858
    const-string v1, "Mms/ipmsg/utils"

    const-string v2, "file size is too large"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 861
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isVideo(Ljava/lang/String;)Z
    .locals 3
    .parameter "name"

    .prologue
    const/4 v1, 0x0

    .line 1015
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1022
    :cond_0
    :goto_0
    return v1

    .line 1018
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    .line 1019
    .local v0, path:Ljava/lang/String;
    const-string v2, ".mp4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, ".3gp"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1020
    :cond_2
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static nmsStream2File([BLjava/lang/String;)V
    .locals 6
    .parameter "stream"
    .parameter "filepath"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1478
    const/4 v2, 0x0

    .line 1480
    .local v2, outStream:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1481
    .local v1, f:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1482
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 1484
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1485
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1487
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 1488
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1489
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .local v3, outStream:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, p0}, Ljava/io/OutputStream;->write([B)V

    .line 1490
    invoke-virtual {v3}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1495
    if-eqz v3, :cond_3

    .line 1497
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1498
    const/4 v2, 0x0

    .line 1505
    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1491
    .end local v1           #f:Ljava/io/File;
    :catch_0
    move-exception v0

    .line 1492
    .local v0, e:Ljava/io/IOException;
    :goto_1
    :try_start_3
    const-string v4, "Mms/ipmsg/utils"

    const-string v5, "nmsStream2File():"

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1493
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1495
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    :goto_2
    if-eqz v2, :cond_2

    .line 1497
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1498
    const/4 v2, 0x0

    .line 1495
    :cond_2
    throw v4

    .line 1499
    :catch_1
    move-exception v0

    .line 1500
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/ipmsg/utils"

    const-string v5, "nmsStream2File():"

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1499
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v1       #f:Ljava/io/File;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :catch_2
    move-exception v0

    .line 1500
    .restart local v0       #e:Ljava/io/IOException;
    const-string v4, "Mms/ipmsg/utils"

    const-string v5, "nmsStream2File():"

    invoke-static {v4, v5, v0}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1501
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1495
    .end local v0           #e:Ljava/io/IOException;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_2

    .line 1491
    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2           #outStream:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/FileOutputStream;
    :cond_3
    move-object v2, v3

    .end local v3           #outStream:Ljava/io/FileOutputStream;
    .restart local v2       #outStream:Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static readIpMessageDraft(Landroid/content/Context;Lcom/android/mms/data/Conversation;Lcom/android/mms/data/WorkingMessage;)Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .locals 18
    .parameter "context"
    .parameter "conv"
    .parameter "workingMessage"

    .prologue
    .line 1041
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIpMessageDraft(): threadId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/android/mms/data/Conversation;->getThreadId()J

    move-result-wide v16

    .line 1045
    .local v16, threadId:J
    const-wide/16 v2, 0x0

    cmp-long v2, v16, v2

    if-gtz v2, :cond_0

    .line 1046
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readDraftIpMessage(): no draft, threadId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-wide/from16 v0, v16

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1047
    const/4 v11, 0x0

    .line 1083
    :goto_0
    return-object v11

    .line 1050
    :cond_0
    sget-object v2, Landroid/provider/Telephony$Sms$Conversations;->CONTENT_URI:Landroid/net/Uri;

    move-wide/from16 v0, v16

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    .line 1051
    .local v4, threadUri:Landroid/net/Uri;
    const-string v9, ""

    .line 1053
    .local v9, body:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v5, Lcom/mediatek/ipmsg/util/IpMessageUtils;->SMS_BODY_PROJECTION_WITH_IPMSG_ID:[Ljava/lang/String;

    const-string v6, "type=3"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object/from16 v2, p0

    invoke-static/range {v2 .. v8}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 1055
    .local v10, c:Landroid/database/Cursor;
    const-wide/16 v14, 0x0

    .line 1056
    .local v14, msgId:J
    const-wide/16 v12, 0x0

    .line 1057
    .local v12, ipMsgId:J
    if-eqz v10, :cond_2

    .line 1059
    :try_start_0
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1060
    const/4 v2, 0x1

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    .line 1061
    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_1

    .line 1062
    const/4 v2, 0x0

    invoke-interface {v10, v2}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v14

    .line 1066
    :cond_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1070
    :cond_2
    const-wide/16 v2, 0x0

    cmp-long v2, v14, v2

    if-lez v2, :cond_3

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-lez v2, :cond_3

    .line 1071
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getMessageManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/MessageManager;

    move-result-object v2

    invoke-virtual {v2, v14, v15}, Lcom/mediatek/mms/ipmessage/MessageManager;->getIpMsgInfo(J)Lcom/mediatek/mms/ipmessage/message/IpMessage;

    move-result-object v11

    .line 1073
    .local v11, ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/mms/data/WorkingMessage;->asyncDeleteDraftSmsMessage(Lcom/android/mms/data/Conversation;)V

    .line 1075
    if-eqz v11, :cond_3

    .line 1076
    const/4 v2, 0x2

    invoke-virtual {v11, v2}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->setStatus(I)V

    .line 1077
    const/4 v2, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/android/mms/data/WorkingMessage;->clearConversation(Lcom/android/mms/data/Conversation;Z)V

    .line 1078
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIpMessageDraft(): Get IP message draft, msgId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1066
    .end local v11           #ipMessage:Lcom/mediatek/mms/ipmessage/message/IpMessage;
    :catchall_0
    move-exception v2

    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v2

    .line 1082
    :cond_3
    const-string v2, "Mms/ipmsg/utils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "readIpMessageDraft(): No IP message draft, msgId = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1083
    const/4 v11, 0x0

    goto/16 :goto_0
.end method

.method public static removeIpMsgNotificationListeners(Landroid/content/Context;Lcom/mediatek/mms/ipmessage/INotificationsListener;)V
    .locals 2
    .parameter "context"
    .parameter "notiListener"

    .prologue
    .line 315
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getIpMessagePlugin(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/mms/ipmessage/IIpMessagePlugin;->getNotificationsManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/NotificationsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/mediatek/mms/ipmessage/NotificationsManager;->unregisterNotificationsListener(Lcom/mediatek/mms/ipmessage/INotificationsListener;)V

    .line 317
    return-void
.end method

.method public static resizeImage(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    .locals 12
    .parameter "bitmap"
    .parameter "w"
    .parameter "h"
    .parameter "needRecycle"

    .prologue
    const/4 v1, 0x0

    .line 1316
    if-nez p0, :cond_1

    .line 1317
    const/4 v9, 0x0

    .line 1335
    :cond_0
    :goto_0
    return-object v9

    .line 1320
    :cond_1
    move-object v0, p0

    .line 1321
    .local v0, bitmapOrg:Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 1322
    .local v3, width:I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 1323
    .local v4, height:I
    move v8, p1

    .line 1324
    .local v8, newWidth:I
    move v7, p2

    .line 1326
    .local v7, newHeight:I
    int-to-float v2, v8

    int-to-float v6, v3

    div-float v11, v2, v6

    .line 1327
    .local v11, scaleWidth:F
    int-to-float v2, v7

    int-to-float v6, v4

    div-float v10, v2, v6

    .line 1328
    .local v10, scaleHeight:F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1329
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v11, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 1331
    const/4 v6, 0x1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v9

    .line 1332
    .local v9, resizedBitmap:Landroid/graphics/Bitmap;
    if-eqz p3, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    if-eq v0, v9, :cond_0

    .line 1333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_0
.end method

.method public static resizeImg(Ljava/lang/String;F)[B
    .locals 15
    .parameter "path"
    .parameter "maxLength"

    .prologue
    .line 1339
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getExifOrientation(Ljava/lang/String;)I

    move-result v3

    .line 1340
    .local v3, d:I
    new-instance v8, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v8}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 1341
    .local v8, options:Landroid/graphics/BitmapFactory$Options;
    const/4 v12, 0x1

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1342
    invoke-static {p0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1343
    .local v2, bitmap:Landroid/graphics/Bitmap;
    const/4 v12, 0x0

    iput-boolean v12, v8, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 1345
    iget v12, v8, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v13, v8, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1346
    .local v7, l:I
    int-to-float v12, v7

    div-float v12, v12, p1

    float-to-int v1, v12

    .line 1347
    .local v1, be:I
    if-gtz v1, :cond_0

    .line 1348
    const/4 v1, 0x1

    .line 1350
    :cond_0
    iput v1, v8, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 1352
    invoke-static {p0, v8}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1353
    if-nez v2, :cond_2

    .line 1354
    const/4 v10, 0x0

    .line 1397
    :cond_1
    :goto_0
    return-object v10

    .line 1356
    :cond_2
    if-eqz v3, :cond_3

    .line 1357
    invoke-static {v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 1360
    :cond_3
    const-string v12, "\\."

    invoke-virtual {p0, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1361
    .local v11, tempStrArry:[Ljava/lang/String;
    array-length v12, v11

    add-int/lit8 v12, v12, -0x1

    aget-object v5, v11, v12

    .line 1362
    .local v5, filePostfix:Ljava/lang/String;
    const/4 v6, 0x0

    .line 1363
    .local v6, formatType:Landroid/graphics/Bitmap$CompressFormat;
    const-string v12, "PNG"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 1364
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    .line 1376
    :goto_1
    const/16 v9, 0x64

    .line 1377
    .local v9, quality:I
    const/4 v12, 0x1

    if-ne v1, v12, :cond_a

    .line 1378
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getFileSize(Ljava/lang/String;)I

    move-result v12

    const v13, 0xc800

    if-le v12, v13, :cond_4

    .line 1379
    const/16 v9, 0x1e

    .line 1385
    :cond_4
    :goto_2
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1386
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v2, v6, v9, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1387
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    .line 1388
    .local v10, tempArry:[B
    if-eqz v0, :cond_1

    .line 1390
    :try_start_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1394
    :goto_3
    const/4 v0, 0x0

    goto :goto_0

    .line 1365
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v9           #quality:I
    .end local v10           #tempArry:[B
    :cond_5
    const-string v12, "JPG"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-nez v12, :cond_6

    const-string v12, "JPEG"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 1366
    :cond_6
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1367
    :cond_7
    const-string v12, "GIF"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 1368
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1369
    :cond_8
    const-string v12, "BMP"

    invoke-virtual {v5, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 1370
    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    goto :goto_1

    .line 1372
    :cond_9
    const-string v12, "Mms/ipmsg/utils"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "resizeImg(): Can\'t compress the image,because can\'t support the format:"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/mediatek/encapsulation/MmsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1373
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 1382
    .restart local v9       #quality:I
    :cond_a
    const/16 v9, 0x1e

    goto :goto_2

    .line 1391
    .restart local v0       #baos:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #tempArry:[B
    :catch_0
    move-exception v4

    .line 1392
    .local v4, e:Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_3
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .parameter "b"
    .parameter "degrees"

    .prologue
    const/high16 v3, 0x4000

    .line 1297
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 1298
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 1299
    .local v5, m:Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 1301
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 1302
    .local v7, b2:Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 1303
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1304
    move-object p0, v7

    .line 1312
    .end local v5           #m:Landroid/graphics/Matrix;
    .end local v7           #b2:Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 1306
    .restart local v5       #m:Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .line 1308
    .local v8, ex:Ljava/lang/OutOfMemoryError;
    const-string v0, "Mms/ipmsg/utils"

    const-string v1, "OutOfMemoryError."

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static setIpMessageCaption(Lcom/mediatek/mms/ipmessage/message/IpMessage;Ljava/lang/String;)Lcom/mediatek/mms/ipmessage/message/IpMessage;
    .locals 2
    .parameter "ipMessage"
    .parameter "caption"

    .prologue
    .line 1162
    invoke-virtual {p0}, Lcom/mediatek/mms/ipmessage/message/IpMessage;->getType()I

    move-result v0

    .line 1163
    .local v0, type:I
    packed-switch v0, :pswitch_data_0

    .line 1187
    :goto_0
    :pswitch_0
    return-object p0

    :pswitch_1
    move-object v1, p0

    .line 1165
    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;

    invoke-virtual {v1, p1}, Lcom/mediatek/mms/ipmessage/message/IpImageMessage;->setCaption(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_2
    move-object v1, p0

    .line 1168
    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;

    invoke-virtual {v1, p1}, Lcom/mediatek/mms/ipmessage/message/IpVoiceMessage;->setCaption(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    move-object v1, p0

    .line 1171
    check-cast v1, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;

    invoke-virtual {v1, p1}, Lcom/mediatek/mms/ipmessage/message/IpVideoMessage;->setCaption(Ljava/lang/String;)V

    goto :goto_0

    .line 1163
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static shouldShowTimeDivider(JJ)Z
    .locals 10
    .parameter "curTime"
    .parameter "nextTime"

    .prologue
    .line 917
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 918
    .local v8, curDate:Ljava/util/Date;
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, p2, p3}, Ljava/util/Date;-><init>(J)V

    .line 919
    .local v9, nextDate:Ljava/util/Date;
    new-instance v0, Ljava/util/Date;

    invoke-virtual {v8}, Ljava/util/Date;->getYear()I

    move-result v1

    invoke-virtual {v8}, Ljava/util/Date;->getMonth()I

    move-result v2

    invoke-virtual {v8}, Ljava/util/Date;->getDate()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v6}, Ljava/util/Date;-><init>(IIIIII)V

    .line 920
    .local v0, cur:Ljava/util/Date;
    new-instance v1, Ljava/util/Date;

    invoke-virtual {v9}, Ljava/util/Date;->getYear()I

    move-result v2

    invoke-virtual {v9}, Ljava/util/Date;->getMonth()I

    move-result v3

    invoke-virtual {v9}, Ljava/util/Date;->getDate()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-direct/range {v1 .. v7}, Ljava/util/Date;-><init>(IIIIII)V

    .line 921
    .local v1, next:Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private static showActivateOrEnableIpMessageServiceDialog(Landroid/app/Activity;Ljava/util/List;IILandroid/os/Handler;)V
    .locals 11
    .parameter "activityContext"
    .parameter
    .parameter "simId"
    .parameter "mode"
    .parameter "ipMsgHandler"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;II",
            "Landroid/os/Handler;",
            ")V"
        }
    .end annotation

    .prologue
    .line 707
    .local p1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const-string v0, "Mms/ipmsg/utils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showEnableIpMessageServiceDialog(): context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simInfoList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", simId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    if-nez p3, :cond_0

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    const/16 v1, 0x93

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v8

    .line 714
    .local v8, title:Ljava/lang/String;
    :goto_0
    if-nez p3, :cond_1

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    const/16 v1, 0x96

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v7

    .line 719
    .local v7, message:Ljava/lang/String;
    :goto_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v9

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    const/16 v1, 0x92

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v10

    new-instance v0, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;

    move v1, p3

    move v2, p2

    move-object v3, p0

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/mediatek/ipmsg/util/IpMessageUtils$5;-><init>(IILandroid/app/Activity;Ljava/util/List;Landroid/os/Handler;)V

    invoke-virtual {v9, v10, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/mediatek/ipmsg/util/IpMessageUtils$4;

    invoke-direct {v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils$4;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    .line 777
    .local v6, enableDialog:Landroid/app/AlertDialog;
    invoke-virtual {v6}, Landroid/app/Dialog;->show()V

    .line 778
    return-void

    .line 709
    .end local v6           #enableDialog:Landroid/app/AlertDialog;
    .end local v7           #message:Ljava/lang/String;
    .end local v8           #title:Ljava/lang/String;
    :cond_0
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    const/16 v1, 0x97

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    .line 714
    .restart local v8       #title:Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v0

    const/16 v1, 0x98

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_1
.end method

.method private static showActivitionDlg(Landroid/app/Activity;III)V
    .locals 22
    .parameter "activityContext"
    .parameter "mode"
    .parameter "simId"
    .parameter "activeType"

    .prologue
    .line 492
    const-string v18, "Mms/ipmsg/utils"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "showActivitionDlg(): context = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", mode = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", simId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 494
    invoke-static/range {p0 .. p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    .line 495
    .local v6, factory:Landroid/view/LayoutInflater;
    const v18, 0x7f040008

    const/16 v19, 0x0

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v6, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v17

    .line 496
    .local v17, view:Landroid/view/View;
    const v18, 0x7f0f0016

    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 497
    .local v14, textView:Landroid/widget/TextView;
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v19

    if-nez p1, :cond_0

    const/16 v18, 0x8f

    :goto_0
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v12

    .line 500
    .local v12, termContent:Ljava/lang/String;
    new-instance v10, Landroid/text/SpannableString;

    invoke-direct {v10, v12}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 501
    .local v10, ss:Landroid/text/SpannableString;
    new-instance v18, Landroid/text/style/URLSpan;

    const-string v19, "noting"

    invoke-direct/range {v18 .. v19}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v19

    const/16 v20, 0x91

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v19

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v10, v0, v1, v2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 506
    invoke-virtual {v14, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 507
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 508
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v13

    .line 509
    .local v13, text:Ljava/lang/CharSequence;
    instance-of v0, v13, Landroid/text/Spannable;

    move/from16 v18, v0

    if-eqz v18, :cond_2

    .line 510
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    move-result v5

    .line 511
    .local v5, end:I
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    check-cast v9, Landroid/text/Spannable;

    .line 512
    .local v9, sp:Landroid/text/Spannable;
    const/16 v18, 0x0

    const-class v19, Landroid/text/style/URLSpan;

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v9, v0, v5, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v16

    check-cast v16, [Landroid/text/style/URLSpan;

    .line 513
    .local v16, urls:[Landroid/text/style/URLSpan;
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11, v13}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 514
    .local v11, style:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->clearSpans()V

    .line 515
    move-object/from16 v4, v16

    .local v4, arr$:[Landroid/text/style/URLSpan;
    array-length v8, v4

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_1

    aget-object v15, v4, v7

    .line 516
    .local v15, url:Landroid/text/style/URLSpan;
    sget-object v18, Lcom/mediatek/ipmsg/util/IpMessageUtils;->MY_URL_SPAN:Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->setActivity(Landroid/app/Activity;)V

    .line 517
    sget-object v18, Lcom/mediatek/ipmsg/util/IpMessageUtils;->MY_URL_SPAN:Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;

    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;->setSimId(I)V

    .line 518
    sget-object v18, Lcom/mediatek/ipmsg/util/IpMessageUtils;->MY_URL_SPAN:Lcom/mediatek/ipmsg/util/IpMessageUtils$MyURLSpan;

    invoke-interface {v9, v15}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v19

    invoke-interface {v9, v15}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v20

    const/16 v21, 0x21

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v11, v0, v1, v2, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 515
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 497
    .end local v4           #arr$:[Landroid/text/style/URLSpan;
    .end local v5           #end:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #sp:Landroid/text/Spannable;
    .end local v10           #ss:Landroid/text/SpannableString;
    .end local v11           #style:Landroid/text/SpannableStringBuilder;
    .end local v12           #termContent:Ljava/lang/String;
    .end local v13           #text:Ljava/lang/CharSequence;
    .end local v15           #url:Landroid/text/style/URLSpan;
    .end local v16           #urls:[Landroid/text/style/URLSpan;
    :cond_0
    const/16 v18, 0x90

    goto/16 :goto_0

    .line 520
    .restart local v4       #arr$:[Landroid/text/style/URLSpan;
    .restart local v5       #end:I
    .restart local v7       #i$:I
    .restart local v8       #len$:I
    .restart local v9       #sp:Landroid/text/Spannable;
    .restart local v10       #ss:Landroid/text/SpannableString;
    .restart local v11       #style:Landroid/text/SpannableStringBuilder;
    .restart local v12       #termContent:Ljava/lang/String;
    .restart local v13       #text:Ljava/lang/CharSequence;
    .restart local v16       #urls:[Landroid/text/style/URLSpan;
    :cond_1
    invoke-virtual {v14, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    .end local v4           #arr$:[Landroid/text/style/URLSpan;
    .end local v5           #end:I
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v9           #sp:Landroid/text/Spannable;
    .end local v11           #style:Landroid/text/SpannableStringBuilder;
    .end local v16           #urls:[Landroid/text/style/URLSpan;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getChatManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ChatManager;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ChatManager;->addActivatePromptStatistics(I)V

    .line 525
    new-instance v19, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v20

    if-nez p1, :cond_3

    const/16 v18, 0x8e

    :goto_2
    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v19

    const/16 v20, 0x92

    invoke-virtual/range {v19 .. v20}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v19

    new-instance v20, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;

    move-object/from16 v0, v20

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    invoke-direct {v0, v1, v2, v3}, Lcom/mediatek/ipmsg/util/IpMessageUtils$2;-><init>(IILandroid/app/Activity;)V

    invoke-virtual/range {v18 .. v20}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    new-instance v19, Lcom/mediatek/ipmsg/util/IpMessageUtils$1;

    invoke-direct/range {v19 .. v19}, Lcom/mediatek/ipmsg/util/IpMessageUtils$1;-><init>()V

    invoke-virtual/range {v18 .. v19}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v18

    sput-object v18, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sActivationDialog:Landroid/app/AlertDialog;

    .line 560
    sget-object v18, Lcom/mediatek/ipmsg/util/IpMessageUtils;->sActivationDialog:Landroid/app/AlertDialog;

    invoke-virtual/range {v18 .. v18}, Landroid/app/Dialog;->show()V

    .line 561
    return-void

    .line 525
    :cond_3
    const/16 v18, 0x8d

    goto :goto_2
.end method

.method public static showInviteIpMsgConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 3
    .parameter "context"
    .parameter "listener"

    .prologue
    .line 321
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x1010355

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0273

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x8c

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0295

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0b0296

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 329
    return-void
.end method

.method private static showSimSelectionDialog(Landroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;I)V
    .locals 17
    .parameter "activityContext"
    .parameter
    .parameter "mode"
    .parameter "ipMsgHandler"
    .parameter "activityType"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;",
            ">;I",
            "Landroid/os/Handler;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p1, simInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    const-string v1, "Mms/ipmsg/utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSimSelectionDialogForActivation(): context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 600
    const-string v1, "Mms/ipmsg/utils"

    const-string v2, "showSimSelectionDialogForActivation(): No SIM card!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0xeb

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v9

    .line 603
    .local v9, content:Ljava/lang/String;
    const/4 v1, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v9, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 703
    .end local v9           #content:Ljava/lang/String;
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 606
    const-string v1, "Mms/ipmsg/utils"

    const-string v2, "showSimSelectionDialogForActivation(): One SIM card!"

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    new-instance v13, Landroid/content/Intent;

    sget-object v1, Lcom/mediatek/mms/ipmessage/IpMessageConsts$RemoteActivities;->ACTIVITION:Ljava/lang/String;

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 608
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "sim_id"

    const/4 v1, 0x0

    move-object/from16 v0, p1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    invoke-virtual {v1}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v5

    long-to-int v1, v5

    invoke-virtual {v13, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 609
    move-object/from16 v0, p0

    invoke-static {v0, v13}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 612
    .end local v13           #intent:Landroid/content/Intent;
    :cond_1
    const-string v1, "Mms/ipmsg/utils"

    const-string v2, "showSimSelectionDialogForActivation(): Two SIM cards! Show SIM selection dialog."

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 614
    .local v10, entries:Ljava/util/List;,"Ljava/util/List<Ljava/util/Map<Ljava/lang/String;*>;>;"
    const/4 v12, 0x0

    .local v12, i:I
    :goto_1
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v12, v1, :cond_8

    .line 615
    move-object/from16 v0, p1

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;

    .line 616
    .local v14, simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 618
    .local v11, entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "simIcon"

    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimBackgroundLightRes()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 619
    invoke-static {}, Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;->getDefault()Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;

    move-result-object v1

    move-object/from16 v0, p1

    invoke-static {v12, v0, v1}, Lcom/android/mms/ui/MessageUtils;->getSimStatus(ILjava/util/List;Lcom/mediatek/encapsulation/com/mediatek/telephony/EncapsulatedTelephonyManagerEx;)I

    move-result v16

    .line 620
    .local v16, state:I
    const-string v1, "simStatus"

    invoke-static/range {v16 .. v16}, Lcom/android/mms/ui/MessageUtils;->getSimStatusResource(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v1

    long-to-int v1, v1

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/mms/MmsConfig;->isServiceEnabled(Landroid/content/Context;I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    const-string v1, "Mms/ipmsg/utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show ipmessage icon, simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    const-string v1, "ipmsg_indicator"

    const/16 v2, 0x232a

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    :goto_2
    const-string v15, ""

    .line 629
    .local v15, simNumber:Ljava/lang/String;
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 630
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDispalyNumberFormat()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 653
    :cond_2
    :goto_3
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 654
    const-string v1, "simNumberShort"

    invoke-virtual {v11, v1, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 658
    :goto_4
    const-string v1, "simName"

    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 659
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 660
    const-string v1, "simNumber"

    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 664
    :goto_5
    const-string v1, "suggested"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 665
    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 614
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    .line 625
    .end local v15           #simNumber:Ljava/lang/String;
    :cond_3
    const-string v1, "Mms/ipmsg/utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hide ipmessage icon, simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getSimId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 626
    const-string v1, "ipmsg_indicator"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 633
    .restart local v15       #simNumber:Ljava/lang/String;
    :pswitch_0
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_4

    .line 634
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v15

    goto :goto_3

    .line 636
    :cond_4
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 638
    goto :goto_3

    .line 640
    :pswitch_1
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_5

    .line 641
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 643
    :cond_5
    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v14}, Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;->getNumber()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    .line 645
    goto/16 :goto_3

    .line 647
    :pswitch_2
    const-string v15, ""

    .line 648
    goto/16 :goto_3

    .line 656
    :cond_6
    const-string v1, "simNumberShort"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 662
    :cond_7
    const-string v1, "simNumber"

    const-string v2, ""

    invoke-virtual {v11, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_5

    .line 667
    .end local v11           #entry:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14           #simInfo:Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;
    .end local v15           #simNumber:Ljava/lang/String;
    .end local v16           #state:I
    :cond_8
    move-object/from16 v0, p0

    invoke-static {v10, v0}, Lcom/android/mms/ui/MessageUtils;->createSimpleAdapter(Ljava/util/List;Landroid/content/Context;)Landroid/widget/SimpleAdapter;

    move-result-object v7

    .line 668
    .local v7, a:Landroid/widget/SimpleAdapter;
    move-object/from16 v4, p1

    .line 669
    .local v4, currentSimInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/encapsulation/android/telephony/EncapsulatedSimInfoManager;>;"
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 670
    .local v8, b:Landroid/app/AlertDialog$Builder;
    if-nez p2, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x95

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    :goto_6
    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 675
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 676
    new-instance v1, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;

    move/from16 v2, p2

    move-object/from16 v3, p0

    move/from16 v5, p4

    move-object/from16 v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/ipmsg/util/IpMessageUtils$3;-><init>(ILandroid/app/Activity;Ljava/util/List;ILandroid/os/Handler;)V

    invoke-virtual {v8, v7, v1}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 702
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    goto/16 :goto_0

    .line 670
    :cond_9
    invoke-static/range {p0 .. p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v1

    const/16 v2, 0x99

    invoke-virtual {v1, v2}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_6

    .line 630
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static showSwitchSimDialog(Landroid/app/Activity;J)V
    .locals 4
    .parameter "activityContext"
    .parameter "simId"

    .prologue
    .line 781
    const-string v1, "Mms/ipmsg/utils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSwitchSimDialog(): context = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", simId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/encapsulation/MmsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x9a

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x9b

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getResourceManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ResourceManager;

    move-result-object v2

    const/16 v3, 0x9c

    invoke-virtual {v2, v3}, Lcom/mediatek/mms/ipmessage/ResourceManager;->getSingleString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;

    invoke-direct {v3, p0, p1, p2}, Lcom/mediatek/ipmsg/util/IpMessageUtils$7;-><init>(Landroid/app/Activity;J)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/mediatek/ipmsg/util/IpMessageUtils$6;

    invoke-direct {v2}, Lcom/mediatek/ipmsg/util/IpMessageUtils$6;-><init>()V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 808
    .local v0, switchDialog:Landroid/app/AlertDialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 809
    return-void
.end method

.method public static startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 228
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActivitiesManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ActivitiesManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/mms/ipmessage/ActivitiesManager;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 229
    return-void
.end method

.method public static startRemoteActivityForResult(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 232
    invoke-static {p0}, Lcom/mediatek/ipmsg/util/IpMessageUtils;->getActivitiesManager(Landroid/content/Context;)Lcom/mediatek/mms/ipmessage/ActivitiesManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/mediatek/mms/ipmessage/ActivitiesManager;->startRemoteActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 233
    return-void
.end method

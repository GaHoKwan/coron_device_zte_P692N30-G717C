.class public Lcom/zte/heartyservice/indicator/Notifier;
.super Ljava/lang/Object;
.source "Notifier.java"


# static fields
.field public static final INTENT_TAB_INDEX_NAME:Ljava/lang/String; = "tabIndex"

.field private static final NOTIFICATION_ABNORMAL_EVENT:I = 0x8

.field private static final NOTIFICATION_AD:I = 0x9

.field private static final NOTIFICATION_APPUPDATE:I = 0xb

.field private static final NOTIFICATION_AUTOCHECK:I = 0xa

.field private static final NOTIFICATION_COMPLEX:I = 0x4

.field public static final NOTIFICATION_EXTRA:Ljava/lang/String; = "notification_extra"

.field private static final NOTIFICATION_FLOW:I = 0x6

.field private static final NOTIFICATION_INTERCEPT:I = 0x2

.field public static final NOTIFICATION_KEY:Ljava/lang/String; = "notification_key"

.field private static final NOTIFICATION_MAIN:I = 0x0

.field private static final NOTIFICATION_OPTIMIZATION:I = 0x5

.field private static final NOTIFICATION_PERMISSION:I = 0x3

.field private static final NOTIFICATION_PRIVACY:I = 0x7

.field private static final NOTIFICATION_VIRUS:I = 0x1

.field private static final REQUEST_FLOW:I = 0x2

.field private static final REQUEST_MESSAGE:I = 0x1

.field private static final REQUEST_TITLE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Notifier"

.field private static final debug:Z = true

.field private static garbageNeedClear:Z

.field private static mInstance:Lcom/zte/heartyservice/indicator/Notifier;

.field private static mPrivacyCall:I

.field private static mPrivacyCall_ring:I

.field private static mPrivacyMms:I

.field private static mPrivacyMms_ring:I

.field public static needSound:Z


# instance fields
.field private adNotice:I

.field private currentSimState:I

.field private iconBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mWindowManager:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    sput v0, Lcom/zte/heartyservice/indicator/Notifier;->mPrivacyCall:I

    .line 105
    sput v0, Lcom/zte/heartyservice/indicator/Notifier;->mPrivacyMms:I

    .line 106
    sput v0, Lcom/zte/heartyservice/indicator/Notifier;->mPrivacyCall_ring:I

    .line 107
    sput v0, Lcom/zte/heartyservice/indicator/Notifier;->mPrivacyMms_ring:I

    .line 108
    sput-boolean v0, Lcom/zte/heartyservice/indicator/Notifier;->garbageNeedClear:Z

    .line 531
    sput-boolean v0, Lcom/zte/heartyservice/indicator/Notifier;->needSound:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->adNotice:I

    .line 121
    iput-object p1, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    .line 123
    iget-object v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->mNotificationManager:Landroid/app/NotificationManager;

    .line 124
    const-string v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->mWindowManager:Landroid/view/IWindowManager;

    .line 125
    return-void
.end method

.method public static getInstance()Lcom/zte/heartyservice/indicator/Notifier;
    .locals 2

    .prologue
    .line 114
    sget-object v0, Lcom/zte/heartyservice/indicator/Notifier;->mInstance:Lcom/zte/heartyservice/indicator/Notifier;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lcom/zte/heartyservice/indicator/Notifier;

    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/indicator/Notifier;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/zte/heartyservice/indicator/Notifier;->mInstance:Lcom/zte/heartyservice/indicator/Notifier;

    .line 117
    :cond_0
    sget-object v0, Lcom/zte/heartyservice/indicator/Notifier;->mInstance:Lcom/zte/heartyservice/indicator/Notifier;

    return-object v0
.end method

.method private getPowerMode()Ljava/lang/String;
    .locals 10

    .prologue
    .line 791
    new-instance v6, Lcom/zte/heartyservice/power/SwitchTools;

    iget-object v7, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 792
    .local v6, switchTools:Lcom/zte/heartyservice/power/SwitchTools;
    iget-object v7, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const-string v8, "powermanager"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 793
    .local v5, sp:Landroid/content/SharedPreferences;
    const-string v7, "current_mode_id"

    const/4 v8, 0x4

    invoke-interface {v5, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 794
    .local v1, modeId:I
    invoke-virtual {v6, v1}, Lcom/zte/heartyservice/power/SwitchTools;->getPosition(I)I

    move-result v3

    .line 795
    .local v3, position:I
    iget-object v7, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 796
    .local v4, res:Landroid/content/res/Resources;
    const v7, 0x7f070048

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 797
    .local v2, modes:[Ljava/lang/String;
    aget-object v0, v2, v3

    .line 798
    .local v0, mode:Ljava/lang/String;
    return-object v0
.end method

.method private isRunningForeground(Landroid/content/Context;)Z
    .locals 8
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 552
    const-string v3, "activity"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 553
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {v0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v3, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 554
    .local v1, cn:Landroid/content/ComponentName;
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 555
    .local v2, currentPackageName:Ljava/lang/String;
    const-string v3, "Notifier"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " \tcurrentPackageName  =="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.tencent.android.qqplaza4zte"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    .line 561
    :goto_0
    return v3

    :cond_0
    move v3, v5

    goto :goto_0
.end method

.method private static needSound()Z
    .locals 2

    .prologue
    .line 533
    sget-boolean v0, Lcom/zte/heartyservice/indicator/Notifier;->needSound:Z

    .line 534
    .local v0, ret:Z
    const/4 v1, 0x0

    sput-boolean v1, Lcom/zte/heartyservice/indicator/Notifier;->needSound:Z

    .line 535
    return v0
.end method

.method private setFlowNew(Landroid/widget/RemoteViews;)V
    .locals 31
    .parameter "view"

    .prologue
    .line 675
    const/4 v14, 0x0

    .line 676
    .local v14, message1:Ljava/lang/String;
    const/4 v15, 0x0

    .line 677
    .local v15, message2:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v20

    .line 687
    .local v20, res:Landroid/content/res/Resources;
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v23

    .line 688
    .local v23, simManager:Lcom/zte/heartyservice/msim/SimManager;
    const/16 v24, -0x1

    .line 689
    .local v24, subscription:I
    invoke-virtual/range {v23 .. v23}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 690
    invoke-virtual/range {v23 .. v23}, Lcom/zte/heartyservice/msim/SimManager;->getDataSim()I

    move-result v24

    .line 692
    :cond_0
    const/4 v2, -0x1

    move/from16 v0, v24

    if-ne v0, v2, :cond_4

    .line 693
    const v2, 0x7f0e0212

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 699
    :goto_0
    invoke-virtual/range {v23 .. v23}, Lcom/zte/heartyservice/msim/SimManager;->hasSimReady()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 700
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v16

    .line 701
    .local v16, netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getNetScanResult(I)Lcom/zte/heartyservice/common/datatype/NetScanResult;

    move-result-object v17

    .line 702
    .local v17, nsr:Lcom/zte/heartyservice/common/datatype/NetScanResult;
    if-eqz v17, :cond_2

    .line 703
    const/4 v11, 0x0

    .line 704
    .local v11, flow1:Ljava/lang/String;
    const/4 v12, 0x0

    .line 705
    .local v12, flow2:Ljava/lang/String;
    new-instance v9, Ljava/text/DecimalFormat;

    const-string v2, "###.#M"

    invoke-direct {v9, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 706
    .local v9, df:Ljava/text/DecimalFormat;
    new-instance v10, Ljava/text/DecimalFormat;

    const-string v2, "###.##G"

    invoke-direct {v10, v2}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 707
    .local v10, dfG:Ljava/text/DecimalFormat;
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/zte/heartyservice/common/datatype/NetScanResult;->today_network_traffic:D

    move-wide/from16 v25, v0

    .line 708
    .local v25, today:D
    move-object/from16 v0, v17

    iget-wide v0, v0, Lcom/zte/heartyservice/common/datatype/NetScanResult;->this_month_remainder_network_traffic:D

    move-wide/from16 v18, v0

    .line 709
    .local v18, remain:D
    move-object/from16 v0, v17

    iget-wide v2, v0, Lcom/zte/heartyservice/common/datatype/NetScanResult;->this_month_total_network_traffic:J

    long-to-double v0, v2

    move-wide/from16 v21, v0

    .line 711
    .local v21, restrict:D
    const-wide v2, 0x408c200000000000L

    cmpl-double v2, v25, v2

    if-lez v2, :cond_5

    .line 712
    const-wide/high16 v2, 0x4090

    div-double v2, v25, v2

    invoke-virtual {v10, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    .line 716
    :goto_1
    const-wide v2, 0x408c200000000000L

    cmpl-double v2, v18, v2

    if-lez v2, :cond_6

    .line 717
    const-wide/high16 v2, 0x4090

    div-double v2, v18, v2

    invoke-virtual {v10, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 722
    :cond_1
    :goto_2
    const-wide/16 v2, 0x0

    cmpl-double v2, v21, v2

    if-nez v2, :cond_7

    .line 723
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0069

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 724
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a006c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 738
    :goto_3
    cmpl-double v2, v21, v18

    if-lez v2, :cond_2

    .line 739
    const v3, 0x7f0e01ca

    const/4 v4, 0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    div-double v27, v18, v21

    const-wide v29, 0x40c3880000000000L

    mul-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v8, v0

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v8}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 763
    .end local v9           #df:Ljava/text/DecimalFormat;
    .end local v10           #dfG:Ljava/text/DecimalFormat;
    .end local v11           #flow1:Ljava/lang/String;
    .end local v12           #flow2:Ljava/lang/String;
    .end local v16           #netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    .end local v17           #nsr:Lcom/zte/heartyservice/common/datatype/NetScanResult;
    .end local v18           #remain:D
    .end local v21           #restrict:D
    .end local v25           #today:D
    :cond_2
    :goto_4
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 764
    const/4 v15, 0x0

    .line 765
    const v2, 0x7f0e01f8

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 767
    :cond_3
    const v2, 0x7f0e0001

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v14}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 768
    if-nez v15, :cond_d

    .line 769
    const v2, 0x7f0e0002

    const/16 v3, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 776
    :goto_5
    new-instance v13, Landroid/content/Intent;

    const-string v2, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    invoke-direct {v13, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 777
    .local v13, intent:Landroid/content/Intent;
    const-string v2, "notification_key"

    const/4 v3, 0x6

    invoke-virtual {v13, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 778
    const/high16 v2, 0x7f0e

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const/4 v4, 0x2

    const/high16 v5, 0x1000

    invoke-static {v3, v4, v13, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 780
    return-void

    .line 695
    .end local v13           #intent:Landroid/content/Intent;
    :cond_4
    const v2, 0x7f0e0212

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 696
    const v2, 0x7f0e0213

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, v24, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 714
    .restart local v9       #df:Ljava/text/DecimalFormat;
    .restart local v10       #dfG:Ljava/text/DecimalFormat;
    .restart local v11       #flow1:Ljava/lang/String;
    .restart local v12       #flow2:Ljava/lang/String;
    .restart local v16       #netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    .restart local v17       #nsr:Lcom/zte/heartyservice/common/datatype/NetScanResult;
    .restart local v18       #remain:D
    .restart local v21       #restrict:D
    .restart local v25       #today:D
    :cond_5
    move-wide/from16 v0, v25

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1

    .line 718
    :cond_6
    const-wide/16 v2, 0x0

    cmpl-double v2, v18, v2

    if-ltz v2, :cond_1

    .line 719
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_2

    .line 725
    :cond_7
    const-wide/16 v2, 0x0

    cmpl-double v2, v18, v2

    if-ltz v2, :cond_8

    .line 726
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0069

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 727
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a006a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 729
    :cond_8
    const-wide v2, -0x3f73e00000000000L

    cmpg-double v2, v18, v2

    if-gez v2, :cond_9

    .line 730
    const-wide/high16 v2, -0x4010

    mul-double v2, v2, v18

    const-wide/high16 v4, 0x4090

    div-double/2addr v2, v4

    invoke-virtual {v10, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    .line 734
    :goto_6
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a0069

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v11, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a006b

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v12, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    goto/16 :goto_3

    .line 732
    :cond_9
    const-wide/high16 v2, -0x4010

    mul-double v2, v2, v18

    invoke-virtual {v9, v2, v3}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_6

    .line 753
    .end local v9           #df:Ljava/text/DecimalFormat;
    .end local v10           #dfG:Ljava/text/DecimalFormat;
    .end local v11           #flow1:Ljava/lang/String;
    .end local v12           #flow2:Ljava/lang/String;
    .end local v16           #netUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;
    .end local v17           #nsr:Lcom/zte/heartyservice/common/datatype/NetScanResult;
    .end local v18           #remain:D
    .end local v21           #restrict:D
    .end local v25           #today:D
    :cond_a
    invoke-virtual/range {v23 .. v23}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v2

    if-nez v2, :cond_b

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/msim/SimManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    .line 754
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 755
    :cond_b
    invoke-virtual/range {v23 .. v23}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/msim/SimManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    const/4 v2, 0x1

    move-object/from16 v0, v23

    invoke-virtual {v0, v2}, Lcom/zte/heartyservice/msim/SimManager;->getSimState(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_c

    .line 758
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 760
    :cond_c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v3, 0x7f0a00cd

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto/16 :goto_4

    .line 771
    :cond_d
    const v2, 0x7f0e0002

    const/4 v3, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 772
    const v2, 0x7f0e0002

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v15}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method private setNotice(Landroid/widget/RemoteViews;Landroid/app/Notification;)I
    .locals 30
    .parameter "view"
    .parameter "notification"

    .prologue
    .line 241
    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v15

    .line 242
    .local v15, noticeProvider:Lcom/zte/heartyservice/indicator/NoticeProvider;
    const/4 v7, 0x0

    .line 243
    .local v7, complex:I
    const/16 v23, 0x0

    .line 244
    .local v23, virus:I
    const/16 v16, 0x0

    .line 245
    .local v16, pCall:I
    const/16 v17, 0x0

    .line 246
    .local v17, pMms:I
    const/4 v10, 0x0

    .line 247
    .local v10, iCall:I
    const/4 v11, 0x0

    .line 248
    .local v11, iMms:I
    const/4 v4, 0x0

    .line 249
    .local v4, ad:I
    const/16 v19, 0x0

    .line 250
    .local v19, power:I
    const/16 v18, 0x0

    .line 251
    .local v18, permission:I
    const/4 v5, 0x0

    .line 253
    .local v5, app_update:I
    const/16 v20, 0x0

    .line 255
    .local v20, privacy:I
    const/4 v6, -0x1

    .line 257
    .local v6, checkScore:I
    invoke-virtual {v15}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getCheckScore()I

    move-result v6

    .line 261
    invoke-virtual {v15}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getVirusCount()I

    move-result v23

    .line 263
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCallLogNumInPrivacy()I

    move-result v16

    .line 264
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMsgNumInPrivacy()I

    move-result v17

    .line 266
    add-int v20, v16, v17

    .line 268
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getInterceptedPhoneAndMsgList()Ljava/util/List;

    move-result-object v13

    .line 270
    .local v13, interceptList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/InterceptResult;>;"
    if-eqz v13, :cond_2

    .line 271
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/zte/heartyservice/common/datatype/InterceptResult;

    .line 272
    .local v21, result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    move-object/from16 v0, v21

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    move/from16 v24, v0

    if-nez v24, :cond_1

    .line 273
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 274
    :cond_1
    move-object/from16 v0, v21

    iget v0, v0, Lcom/zte/heartyservice/common/datatype/InterceptResult;->type:I

    move/from16 v24, v0

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_0

    .line 275
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 280
    .end local v9           #i$:Ljava/util/Iterator;
    .end local v21           #result:Lcom/zte/heartyservice/common/datatype/InterceptResult;
    :cond_2
    invoke-virtual {v15}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getAdCount()I

    move-result v4

    .line 281
    invoke-virtual {v15}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getPermissionCount()I

    move-result v18

    .line 283
    invoke-static {}, Lcom/zte/heartyservice/power/SmartPowerManager;->getNewAbnormalPkgNum()I

    move-result v19

    .line 284
    invoke-virtual {v15}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getAppUpdateCount()I

    move-result v5

    .line 286
    if-lez v23, :cond_3

    .line 287
    add-int/lit8 v7, v7, 0x1

    .line 289
    :cond_3
    if-lez v20, :cond_4

    .line 290
    add-int/lit8 v7, v7, 0x1

    .line 295
    :cond_4
    if-lez v10, :cond_5

    .line 296
    add-int/lit8 v7, v7, 0x1

    .line 298
    :cond_5
    if-lez v11, :cond_6

    .line 299
    add-int/lit8 v7, v7, 0x1

    .line 301
    :cond_6
    if-lez v4, :cond_7

    .line 302
    add-int/lit8 v7, v7, 0x1

    .line 304
    :cond_7
    if-lez v19, :cond_8

    .line 305
    add-int/lit8 v7, v7, 0x1

    .line 307
    :cond_8
    if-lez v18, :cond_9

    .line 308
    add-int/lit8 v7, v7, 0x1

    .line 310
    :cond_9
    if-ltz v6, :cond_a

    .line 311
    add-int/lit8 v7, v7, 0x1

    .line 313
    :cond_a
    if-lez v5, :cond_b

    .line 315
    add-int/lit8 v7, v7, 0x1

    .line 318
    :cond_b
    const v24, 0x7f0200ff

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 319
    const/4 v8, 0x0

    .line 321
    .local v8, complexState:Z
    const/16 v24, 0x1

    move/from16 v0, v24

    if-le v7, v0, :cond_c

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a008a

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 323
    const v24, 0x7f0201a1

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 324
    const/4 v8, 0x1

    .line 332
    :cond_c
    const v24, 0x7f0e01fc

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 333
    const v24, 0x7f0e0210

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 334
    const v24, 0x7f0e0200

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 335
    const v24, 0x7f0e01fe

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 336
    const v24, 0x7f0e0204

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 337
    const v24, 0x7f0e020a

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 338
    const v24, 0x7f0e020c

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 339
    const v24, 0x7f0e020e

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 340
    const v24, 0x7f0e0206

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 341
    const v24, 0x7f0e0208

    const-string v25, "setVisibility"

    const/16 v26, 0x8

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 343
    const/16 v24, 0x3

    move/from16 v0, v24

    if-le v7, v0, :cond_d

    .line 344
    const v24, 0x7f0e0210

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 345
    const v24, 0x7f0e0211

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 528
    :goto_1
    return v7

    .line 349
    :cond_d
    if-ltz v6, :cond_e

    .line 350
    const v24, 0x7f0e01fc

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 351
    const v24, 0x7f0e01fd

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const v26, 0x7f0a05c9

    const/16 v27, 0x1

    move/from16 v0, v27

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v27, v0

    const/16 v28, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    aput-object v29, v27, v28

    invoke-virtual/range {v25 .. v27}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 354
    if-nez v8, :cond_e

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a05ca

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 356
    const v24, 0x7f0201a0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 358
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 359
    .local v12, intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0xa

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 360
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 365
    .end local v12           #intent:Landroid/content/Intent;
    :cond_e
    if-lez v10, :cond_f

    .line 366
    const v24, 0x7f0e0200

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 367
    const v24, 0x7f0e0201

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 369
    if-nez v8, :cond_f

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0087

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 371
    const v24, 0x7f0201ab

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 373
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 375
    const-string v24, "notification_extra"

    const-string v25, "intercepted_phone"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 377
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 382
    .end local v12           #intent:Landroid/content/Intent;
    :cond_f
    if-lez v11, :cond_10

    .line 383
    const v24, 0x7f0e01fe

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 384
    const v24, 0x7f0e01ff

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 386
    if-nez v8, :cond_10

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0088

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 388
    const v24, 0x7f0201af

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 390
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0x2

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 392
    const-string v24, "notification_extra"

    const-string v25, "intercepted_msg"

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 394
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 399
    .end local v12           #intent:Landroid/content/Intent;
    :cond_10
    if-lez v20, :cond_12

    .line 400
    const v24, 0x7f0e0204

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 401
    const v24, 0x7f0e0203

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 403
    if-nez v8, :cond_11

    .line 404
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0508

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 405
    const v24, 0x7f0201ac

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 407
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 408
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0x7

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 412
    .end local v12           #intent:Landroid/content/Intent;
    :cond_11
    invoke-static {}, Lcom/zte/heartyservice/indicator/Notifier;->needSound()Z

    move-result v24

    if-eqz v24, :cond_12

    .line 413
    sget-object v24, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 437
    :cond_12
    if-lez v18, :cond_13

    .line 438
    const v24, 0x7f0e020a

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 439
    const v24, 0x7f0e020b

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 441
    if-nez v8, :cond_13

    .line 442
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a006d

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 443
    const v24, 0x7f0201aa

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 445
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 446
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0x3

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 447
    const-string v24, "notification_extra"

    invoke-static {}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getInstance()Lcom/zte/heartyservice/indicator/NoticeProvider;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lcom/zte/heartyservice/indicator/NoticeProvider;->getNewAppName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v24

    move-object/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 448
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 453
    .end local v12           #intent:Landroid/content/Intent;
    :cond_13
    if-lez v4, :cond_14

    .line 454
    const v24, 0x7f0e020c

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 455
    const v24, 0x7f0e020d

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 457
    if-nez v8, :cond_14

    .line 458
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0506

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 459
    const v24, 0x7f02019d

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 461
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0x9

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 463
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 468
    .end local v12           #intent:Landroid/content/Intent;
    :cond_14
    if-lez v19, :cond_15

    .line 469
    const v24, 0x7f0e020e

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 471
    if-nez v8, :cond_15

    .line 472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0507

    invoke-virtual/range {v24 .. v25}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 473
    const v24, 0x7f0201c8

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 475
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 476
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0x8

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 477
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 482
    .end local v12           #intent:Landroid/content/Intent;
    :cond_15
    if-lez v23, :cond_16

    .line 483
    const v24, 0x7f0e0206

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 484
    const v24, 0x7f0e0207

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 486
    if-nez v8, :cond_16

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0065

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static/range {v23 .. v23}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 488
    const v24, 0x7f0201b0

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 490
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 491
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0x1

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 495
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 500
    .end local v12           #intent:Landroid/content/Intent;
    :cond_16
    const-string v24, "Notifier"

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, " app_update ================"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v24 .. v25}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 501
    if-lez v5, :cond_18

    .line 503
    const v24, 0x7f0e0208

    const-string v25, "setVisibility"

    const/16 v26, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    move/from16 v3, v26

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    .line 504
    const v24, 0x7f0e0209

    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, ""

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 506
    if-nez v8, :cond_18

    .line 507
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-static/range {v24 .. v24}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v14

    .line 508
    .local v14, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    invoke-virtual {v14}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getUpdateSumIsSame()I

    move-result v24

    if-nez v24, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    invoke-direct {v0, v1}, Lcom/zte/heartyservice/indicator/Notifier;->isRunningForeground(Landroid/content/Context;)Z

    move-result v24

    if-nez v24, :cond_17

    .line 510
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    const v25, 0x7f0a0064

    const/16 v26, 0x1

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v26, v0

    const/16 v27, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v26, v27

    invoke-virtual/range {v24 .. v26}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 511
    const v24, 0x7f02019f

    move/from16 v0, v24

    move-object/from16 v1, p2

    iput v0, v1, Landroid/app/Notification;->icon:I

    .line 516
    :cond_17
    new-instance v12, Landroid/content/Intent;

    const-string v24, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    move-object/from16 v0, v24

    invoke-direct {v12, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 517
    .restart local v12       #intent:Landroid/content/Intent;
    const-string v24, "notification_key"

    const/16 v25, 0xb

    move-object/from16 v0, v24

    move/from16 v1, v25

    invoke-virtual {v12, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    const v24, 0x7f0e01fb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    const/high16 v27, 0x5000

    move-object/from16 v0, v25

    move/from16 v1, v26

    move/from16 v2, v27

    invoke-static {v0, v1, v12, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v25

    move-object/from16 v0, p1

    move/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 523
    .end local v12           #intent:Landroid/content/Intent;
    .end local v14           #netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    :cond_18
    new-instance v22, Landroid/widget/RemoteViews;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v24

    const v25, 0x7f0300b5

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    move/from16 v2, v25

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 525
    .local v22, rv:Landroid/widget/RemoteViews;
    move-object/from16 v0, v22

    move-object/from16 v1, p2

    iput-object v0, v1, Landroid/app/Notification;->tickerView:Landroid/widget/RemoteViews;

    goto/16 :goto_1
.end method

.method private setTitle(Landroid/widget/RemoteViews;)V
    .locals 5
    .parameter "view"

    .prologue
    const/4 v4, 0x0

    .line 783
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 784
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "notification_key"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 786
    const v1, 0x7f0e0004

    iget-object v2, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1000

    invoke-static {v2, v4, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 788
    return-void
.end method


# virtual methods
.method public cancelBatteryNotification()V
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f030094

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 214
    return-void
.end method

.method public cancelNotification()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0e0004

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 572
    return-void
.end method

.method public cancelShoppingNotification()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->mNotificationManager:Landroid/app/NotificationManager;

    const v1, 0x7f0300fa

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 238
    return-void
.end method

.method public dispatchClickEvent(ILjava/lang/String;)V
    .locals 16
    .parameter "event"
    .parameter "arg"

    .prologue
    .line 576
    :try_start_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mWindowManager:Landroid/view/IWindowManager;

    invoke-interface {v13}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 579
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .line 580
    .local v10, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 581
    .local v9, packageName:Ljava/lang/String;
    invoke-virtual {v10, v9}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v11

    .line 582
    .local v11, setting:I
    const/4 v13, 0x2

    if-eq v11, v13, :cond_0

    const/4 v13, 0x3

    if-ne v11, v13, :cond_1

    .line 584
    :cond_0
    const/4 v13, 0x1

    const/4 v14, 0x1

    invoke-virtual {v10, v9, v13, v14}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 588
    :cond_1
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 589
    .local v5, intent:Landroid/content/Intent;
    const/4 v6, 0x1

    .line 590
    .local v6, isIntentSafe:Z
    const/high16 v13, 0x1400

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 591
    packed-switch p1, :pswitch_data_0

    .line 664
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 672
    :goto_1
    return-void

    .line 593
    :pswitch_0
    const-string v13, "android.intent.action.MAIN"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 595
    const/high16 v13, 0x2000

    invoke-virtual {v5, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 596
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const-class v15, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 667
    :goto_2
    if-eqz v6, :cond_2

    .line 669
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 671
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    goto :goto_1

    .line 599
    :pswitch_1
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.VIRUS_SCANNER"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 602
    :pswitch_2
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.HARASSMENT_INTERCEPT"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 603
    const-string v13, "target"

    move-object/from16 v0, p2

    invoke-virtual {v5, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 610
    :pswitch_3
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.PERMISSION_SCANNER"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 611
    const-string v13, "notification_extra"

    move-object/from16 v0, p2

    invoke-virtual {v5, v13, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 612
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.zte.heartyservice.intent.action.clean_permission_notice"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_2

    .line 615
    :pswitch_4
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.EXAMINATION"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 618
    :pswitch_5
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.SPEED_UP"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 621
    :pswitch_6
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.NET_SCANNER"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2

    .line 630
    :pswitch_7
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const-class v15, Lcom/zte/heartyservice/power/AbnormalAppsActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 634
    :pswitch_8
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCallLogNumInPrivacy()I

    move-result v13

    sput v13, Lcom/zte/heartyservice/indicator/Notifier;->mPrivacyCall:I

    .line 635
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getMsgNumInPrivacy()I

    move-result v13

    sput v13, Lcom/zte/heartyservice/indicator/Notifier;->mPrivacyMms:I

    .line 636
    new-instance v13, Landroid/content/ComponentName;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const-class v15, Lcom/zte/heartyservice/main/HeartyServiceRealActivity;

    invoke-direct {v13, v14, v15}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 639
    :pswitch_9
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.ad_intercept"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    new-instance v14, Landroid/content/Intent;

    const-string v15, "com.zte.heartyservice.intent.action.clean_ad_notice"

    invoke-direct {v14, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v14}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_2

    .line 643
    :pswitch_a
    const-string v13, "com.zte.heartyservice.intent.action.startActivity.EXAMINATION"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_2

    .line 646
    :pswitch_b
    const-string v2, "com.tencent.android.qqplaza4zte"

    .line 647
    .local v2, PACKAGE_NAME:Ljava/lang/String;
    const-string v1, "tabIndex"

    .line 649
    .local v1, INTENT_TAB_INDEX_NAME:Ljava/lang/String;
    const-string v13, "Intent.ACTION_VIEW"

    invoke-virtual {v5, v13}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 650
    const/4 v12, 0x3

    .line 651
    .local v12, tabIndex:I
    new-instance v4, Landroid/content/ComponentName;

    const-string v13, "com.tencent.android.qqplaza4zte"

    const-string v14, "com.tencent.android.qqdownloader.QQDownloader"

    invoke-direct {v4, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    .local v4, comp:Landroid/content/ComponentName;
    invoke-virtual {v5, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 655
    invoke-virtual {v5, v1, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 656
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v13}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v7

    .line 657
    .local v7, netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    const/4 v13, 0x1

    invoke-virtual {v7, v13}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->setUpdateSumRead(I)V

    .line 658
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 659
    .local v8, packageManager:Landroid/content/pm/PackageManager;
    const/4 v13, 0x0

    invoke-virtual {v8, v5, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 660
    .local v3, activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v13, "Notifier"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " activities.size()  ==="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_3

    const/4 v6, 0x1

    .line 662
    :goto_3
    goto/16 :goto_2

    .line 661
    :cond_3
    const/4 v6, 0x0

    goto :goto_3

    .line 577
    .end local v1           #INTENT_TAB_INDEX_NAME:Ljava/lang/String;
    .end local v2           #PACKAGE_NAME:Ljava/lang/String;
    .end local v3           #activities:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4           #comp:Landroid/content/ComponentName;
    .end local v5           #intent:Landroid/content/Intent;
    .end local v6           #isIntentSafe:Z
    .end local v7           #netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .end local v8           #packageManager:Landroid/content/pm/PackageManager;
    .end local v9           #packageName:Ljava/lang/String;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    .end local v11           #setting:I
    .end local v12           #tabIndex:I
    :catch_0
    move-exception v13

    goto/16 :goto_0

    .line 591
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public notifyGarbageNeedClear(Ljava/lang/String;)V
    .locals 1
    .parameter "pkgName"

    .prologue
    .line 565
    const/4 v0, 0x1

    sput-boolean v0, Lcom/zte/heartyservice/indicator/Notifier;->garbageNeedClear:Z

    .line 566
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 567
    const/4 v0, 0x0

    sput-boolean v0, Lcom/zte/heartyservice/indicator/Notifier;->garbageNeedClear:Z

    .line 568
    return-void
.end method

.method public notifyNow()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 128
    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    .line 129
    .local v2, notification:Landroid/app/Notification;
    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v5, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030096

    invoke-direct {v3, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 131
    .local v3, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/indicator/Notifier;->setTitle(Landroid/widget/RemoteViews;)V

    .line 132
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/indicator/Notifier;->setFlowNew(Landroid/widget/RemoteViews;)V

    .line 134
    new-instance v0, Landroid/content/Intent;

    const-string v5, "com.zte.heartyservice.action.CLICK_NOTIFICATION"

    invoke-direct {v0, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 135
    .local v0, intent:Landroid/content/Intent;
    const-string v5, "notification_key"

    invoke-virtual {v0, v5, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    const v5, 0x7f0e01fb

    iget-object v6, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const/high16 v7, 0x5000

    invoke-static {v6, v10, v0, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 139
    iput-object v3, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 140
    iget v5, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v2, Landroid/app/Notification;->flags:I

    .line 142
    invoke-direct {p0, v3, v2}, Lcom/zte/heartyservice/indicator/Notifier;->setNotice(Landroid/widget/RemoteViews;Landroid/app/Notification;)I

    move-result v1

    .line 144
    .local v1, noticeNum:I
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->removeDismissNotifyMsg()V

    .line 146
    sget v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    packed-switch v5, :pswitch_data_0

    .line 171
    :goto_0
    sget-boolean v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->donotShowTickAndSound:Z

    if-ne v5, v10, :cond_0

    .line 172
    iput-object v9, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 173
    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 174
    sput-boolean v11, Lcom/zte/heartyservice/main/HeartyServiceApp;->donotShowTickAndSound:Z

    .line 178
    :cond_0
    const-string v5, "hs_statusbar_showing"

    invoke-static {v5}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSettingInt(Ljava/lang/String;)I

    move-result v4

    .line 179
    .local v4, statusBarsetting:I
    const/4 v5, 0x2

    if-ne v5, v4, :cond_1

    sget v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    if-nez v5, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/Notifier;->cancelNotification()V

    .line 189
    :goto_1
    return-void

    .line 148
    .end local v4           #statusBarsetting:I
    :pswitch_0
    const v5, 0x7f0201ad

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 149
    iget-object v5, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0630

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 150
    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 153
    :pswitch_1
    const v5, 0x7f0201ae

    iput v5, v2, Landroid/app/Notification;->icon:I

    .line 154
    iget-object v5, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v6, 0x7f0a0631

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 155
    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    goto :goto_0

    .line 159
    :pswitch_2
    iget-object v5, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v6, 0x7f0a062e

    new-array v7, v10, [Ljava/lang/Object;

    sget-object v8, Lcom/zte/heartyservice/main/HeartyServiceApp;->mShoppingSecurityInfo:Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;

    iget-object v8, v8, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    aput-object v8, v7, v11

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 160
    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 161
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->dismissNotifyAfter5S()V

    goto :goto_0

    .line 165
    :pswitch_3
    iget-object v5, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v6, 0x7f0a062f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 166
    iput-object v9, v2, Landroid/app/Notification;->sound:Landroid/net/Uri;

    .line 167
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->dismissNotifyAfter5S()V

    goto :goto_0

    .line 182
    .restart local v4       #statusBarsetting:I
    :cond_1
    if-ne v10, v4, :cond_2

    if-nez v1, :cond_2

    sget v5, Lcom/zte/heartyservice/main/HeartyServiceApp;->shoppingSecurityInfoType:I

    if-nez v5, :cond_2

    .line 184
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/Notifier;->cancelNotification()V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v5, p0, Lcom/zte/heartyservice/indicator/Notifier;->mNotificationManager:Landroid/app/NotificationManager;

    const v6, 0x7f0e0004

    invoke-virtual {v5, v6, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_1

    .line 146
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public notifySimStateChanged(I)V
    .locals 1
    .parameter "state"

    .prologue
    .line 539
    iget v0, p0, Lcom/zte/heartyservice/indicator/Notifier;->currentSimState:I

    if-ne v0, p1, :cond_0

    .line 547
    :goto_0
    return-void

    .line 542
    :cond_0
    iput p1, p0, Lcom/zte/heartyservice/indicator/Notifier;->currentSimState:I

    .line 546
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    goto :goto_0
.end method

.method public showBatteryNotification(I)V
    .locals 11
    .parameter "percent"

    .prologue
    const v10, 0x7f0e01f7

    const v9, 0x7f030094

    const/4 v3, -0x1

    .line 192
    new-instance v8, Landroid/app/Notification;

    invoke-direct {v8}, Landroid/app/Notification;-><init>()V

    .line 193
    .local v8, notification:Landroid/app/Notification;
    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v9}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 195
    .local v0, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, v0}, Lcom/zte/heartyservice/indicator/Notifier;->setTitle(Landroid/widget/RemoteViews;)V

    .line 196
    iget v1, v8, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x20

    iput v1, v8, Landroid/app/Notification;->flags:I

    .line 197
    iput-object v0, v8, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 198
    iget-object v1, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notify_icon_style3_"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "drawable"

    const-string v5, "com.zte.heartyservice"

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, v8, Landroid/app/Notification;->icon:I

    .line 200
    const v1, 0x7f0e01f9

    const/4 v2, 0x1

    const/4 v5, 0x0

    mul-int/lit8 v6, p1, 0x64

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Landroid/widget/RemoteViews;->setDrawableParameters(IZIILandroid/graphics/PorterDuff$Mode;I)V

    .line 201
    const v1, 0x7f0e01fa

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v4, 0x7f0a05c3

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 202
    const v1, 0x7f0e00ae

    invoke-direct {p0}, Lcom/zte/heartyservice/indicator/Notifier;->getPowerMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 204
    new-instance v7, Landroid/content/Intent;

    const-string v1, "com.zte.heartyservice.intent.action.startActivity.SAVE_ELECTRICITY"

    invoke-direct {v7, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 205
    .local v7, intent:Landroid/content/Intent;
    const/high16 v1, 0x1400

    invoke-virtual {v7, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 206
    iget-object v1, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const/high16 v2, 0x1000

    invoke-static {v1, v10, v7, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v10, v1}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 209
    iget-object v1, p0, Lcom/zte/heartyservice/indicator/Notifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v9, v8}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 210
    return-void
.end method

.method public showShoppingNotification(Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;)V
    .locals 13
    .parameter "info"

    .prologue
    const v12, 0x7f0e01fb

    const v11, 0x7f0300fa

    const/high16 v10, 0x1000

    .line 217
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0}, Landroid/app/Notification;-><init>()V

    .line 218
    .local v0, notification:Landroid/app/Notification;
    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v4, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v11}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 220
    .local v2, remoteViews:Landroid/widget/RemoteViews;
    invoke-direct {p0, v2}, Lcom/zte/heartyservice/indicator/Notifier;->setTitle(Landroid/widget/RemoteViews;)V

    .line 221
    iget v4, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/app/Notification;->flags:I

    .line 222
    iput-object v2, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 223
    const v4, 0x7f0200ff

    iput v4, v0, Landroid/app/Notification;->icon:I

    .line 224
    const v4, 0x7f0e035a

    iget-object v5, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    const v6, 0x7f0a062d

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->appName:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 226
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/zte/heartyservice/common/datatype/ShoppingSecurityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 227
    .local v1, packageURI:Landroid/net/Uri;
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.DELETE"

    invoke-direct {v3, v4, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .local v3, uninstallIntent:Landroid/content/Intent;
    invoke-virtual {v3, v10}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    iget-object v4, p0, Lcom/zte/heartyservice/indicator/Notifier;->mContext:Landroid/content/Context;

    invoke-static {v4, v12, v3, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v12, v4}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 233
    iget-object v4, p0, Lcom/zte/heartyservice/indicator/Notifier;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v4, v11, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 234
    return-void
.end method

.method public update()V
    .locals 0

    .prologue
    .line 802
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/Notifier;->cancelNotification()V

    .line 803
    invoke-virtual {p0}, Lcom/zte/heartyservice/indicator/Notifier;->notifyNow()V

    .line 804
    return-void
.end method

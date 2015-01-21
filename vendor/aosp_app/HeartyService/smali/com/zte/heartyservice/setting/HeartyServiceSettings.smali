.class public Lcom/zte/heartyservice/setting/HeartyServiceSettings;
.super Landroid/preference/PreferenceActivity;
.source "HeartyServiceSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;,
        Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;,
        Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;
    }
.end annotation


# static fields
.field private static autoCheckEnabled:Z

.field private static autoNetTrafficAdjustEnabled:Z

.field private static autoRunEnabled:Z

.field private static clearAppEnabled:Z

.field private static doNotDisturbEnabled:Z

.field private static lockScreenClean:Z

.field private static mSpPowerManager:Landroid/content/SharedPreferences;

.field private static memoryOptimizeEnabled:Z

.field private static powerSavingEnabled:Z

.field private static timingSaveElectricityEnabled:Z

.field private static virusScanEnabled:Z


# instance fields
.field private mHeaderAdapter:Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;

.field private mHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mSwitchCheckedChangeListener:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 771
    new-instance v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Lcom/zte/heartyservice/setting/HeartyServiceSettings$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    .line 773
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Landroid/content/Context;ILcom/zte/heartyservice/common/datatype/P3Switch;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setSwitch(Landroid/content/Context;ILcom/zte/heartyservice/common/datatype/P3Switch;)V

    return-void
.end method

.method static synthetic access$1002(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoCheckEnabled:Z

    return p0
.end method

.method static synthetic access$1102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->virusScanEnabled:Z

    return p0
.end method

.method static synthetic access$1202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoNetTrafficAdjustEnabled:Z

    return p0
.end method

.method static synthetic access$1300(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setPowerSavingSetting(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setPowerSavingSwitch(Z)V

    return-void
.end method

.method static synthetic access$1502(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->powerSavingEnabled:Z

    return p0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoRunEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/zte/heartyservice/setting/HeartyServiceSettings;ZLandroid/widget/CompoundButton;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V

    return-void
.end method

.method static synthetic access$1802(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->memoryOptimizeEnabled:Z

    return p0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->clearAppEnabled:Z

    return p0
.end method

.method static synthetic access$200(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-static {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getSummary(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method static synthetic access$400(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setDoNotDisturbSetting(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setDoNotDisturbSwitch(Z)V

    return-void
.end method

.method static synthetic access$602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->doNotDisturbEnabled:Z

    return p0
.end method

.method static synthetic access$700(Z)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    invoke-static {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setTimingSaveElectricitySetting(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->setTimingSaveElectricitySwitch(Z)V

    return-void
.end method

.method static synthetic access$902(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 43
    sput-boolean p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->timingSaveElectricityEnabled:Z

    return p0
.end method

.method private autoRunTipDlg()V
    .locals 6

    .prologue
    .line 779
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 780
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 782
    .local v2, dialogInflater:Landroid/view/LayoutInflater;
    const v3, 0x7f020017

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0386

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a0391

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f0a00ea

    new-instance v5, Lcom/zte/heartyservice/setting/HeartyServiceSettings$1;

    invoke-direct {v5, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$1;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 795
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 796
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 797
    return-void
.end method

.method private closeAutoRunDlg(ZLandroid/widget/CompoundButton;)V
    .locals 5
    .parameter "isChecked"
    .parameter "buttonView"

    .prologue
    .line 807
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 808
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const v2, 0x7f020017

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0385

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a0390

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00eb

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSettings$3;

    invoke-direct {v4, p0, p2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$3;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Landroid/widget/CompoundButton;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0a00ea

    new-instance v4, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;

    invoke-direct {v4, p0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$2;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Z)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 825
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 826
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 827
    return-void
.end method

.method private static getDoNotDisturbSetting()Z
    .locals 3

    .prologue
    .line 430
    sget-object v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v1, "do_not_disturb_switch"

    sget-boolean v2, Lcom/zte/heartyservice/power/SwitchTools;->DEF_DoNotDisturbSwitch:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getDoNotDisturbSummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .parameter "context"

    .prologue
    .line 435
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "at_night_do_not_disturb_from_hour"

    const/16 v16, 0x17

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 437
    .local v4, fhour:I
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "at_night_do_not_disturb_from_minute"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 439
    .local v5, fminute:I
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "at_night_do_not_disturb_to_hour"

    const/16 v16, 0x7

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 441
    .local v11, thour:I
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "at_night_do_not_disturb_to_minute"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 443
    .local v12, tminute:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 444
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 446
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d3

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v14

    const-string v15, "powermanager"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 478
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v14, "donotdisturbsetting"

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 480
    .local v3, donotdisturbsetting:I
    packed-switch v3, :pswitch_data_0

    .line 488
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 451
    .end local v3           #donotdisturbsetting:I
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 452
    .local v1, am:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 457
    .local v7, pm:Ljava/lang/String;
    const/16 v14, 0xc

    if-le v4, v14, :cond_1

    .line 458
    move-object v6, v7

    .line 459
    .local v6, funit:Ljava/lang/String;
    add-int/lit8 v9, v4, -0xc

    .line 464
    .local v9, tempfhour:I
    :goto_2
    const/16 v14, 0xc

    if-le v11, v14, :cond_2

    .line 465
    move-object v13, v7

    .line 466
    .local v13, tunit:Ljava/lang/String;
    add-int/lit8 v10, v11, -0xc

    .line 471
    .local v10, tempthour:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d2

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v6, v16, v17

    const/16 v17, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    aput-object v13, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 461
    .end local v6           #funit:Ljava/lang/String;
    .end local v9           #tempfhour:I
    .end local v10           #tempthour:I
    .end local v13           #tunit:Ljava/lang/String;
    :cond_1
    move-object v6, v1

    .line 462
    .restart local v6       #funit:Ljava/lang/String;
    move v9, v4

    .restart local v9       #tempfhour:I
    goto :goto_2

    .line 468
    :cond_2
    move-object v13, v1

    .line 469
    .restart local v13       #tunit:Ljava/lang/String;
    move v10, v11

    .restart local v10       #tempthour:I
    goto :goto_3

    .line 482
    .end local v1           #am:Ljava/lang/String;
    .end local v6           #funit:Ljava/lang/String;
    .end local v7           #pm:Ljava/lang/String;
    .end local v9           #tempfhour:I
    .end local v10           #tempthour:I
    .end local v13           #tunit:Ljava/lang/String;
    .restart local v3       #donotdisturbsetting:I
    .restart local v8       #sp:Landroid/content/SharedPreferences;
    :pswitch_0
    const v14, 0x7f0a03db

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 485
    :pswitch_1
    const v14, 0x7f0a03dd

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 480
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static getPeriodString(Landroid/content/Context;IJ)Ljava/lang/String;
    .locals 5
    .parameter "context"
    .parameter "resId"
    .parameter "period"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 494
    const-wide/16 v1, 0x7

    cmp-long v1, p2, v1

    if-nez v1, :cond_0

    .line 495
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0a00b3

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 505
    :goto_0
    return-object v1

    .line 497
    :cond_0
    const-wide/16 v1, 0x1e

    cmp-long v1, p2, v1

    if-nez v1, :cond_1

    .line 498
    new-array v1, v4, [Ljava/lang/Object;

    const v2, 0x7f0a00b4

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 500
    :cond_1
    const-wide/16 v1, 0x0

    cmp-long v1, p2, v1

    if-lez v1, :cond_2

    .line 501
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0a00b2

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 503
    .local v0, p:Ljava/lang/String;
    new-array v1, v4, [Ljava/lang/Object;

    aput-object v0, v1, v3

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 505
    .end local v0           #p:Ljava/lang/String;
    :cond_2
    const v1, 0x7f0a00b5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private static getPowerSavingSetting()Z
    .locals 3

    .prologue
    .line 510
    sget-object v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v1, "smart_low_switch"

    sget-boolean v2, Lcom/zte/heartyservice/power/SwitchTools;->DEF_SLowSwitch:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getSummary(Landroid/content/Context;I)Ljava/lang/String;
    .locals 17
    .parameter "context"
    .parameter "id"

    .prologue
    .line 515
    const/4 v7, 0x0

    .line 516
    .local v7, ret:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 609
    :goto_0
    return-object v7

    .line 519
    :pswitch_0
    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getDoNotDisturbSummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 520
    goto :goto_0

    .line 523
    :pswitch_1
    invoke-static/range {p0 .. p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getTimingSaveElectricitySummary(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 524
    goto :goto_0

    .line 528
    :pswitch_2
    sget-object v10, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v11, "auto_check_day"

    sget v12, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoCheckDay:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 530
    .local v2, choose:I
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getWeekDay(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 531
    .local v9, weekday:Ljava/lang/String;
    const v10, 0x7f0a00a4

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 533
    goto :goto_0

    .line 536
    .end local v2           #choose:I
    .end local v9           #weekday:Ljava/lang/String;
    :pswitch_3
    sget-object v10, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v11, "auto_virus_scan_day"

    sget v12, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoVirusScanDay:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 538
    .restart local v2       #choose:I
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getWeekDay(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 539
    .restart local v9       #weekday:Ljava/lang/String;
    const v10, 0x7f0a00a6

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 541
    goto :goto_0

    .line 544
    .end local v2           #choose:I
    .end local v9           #weekday:Ljava/lang/String;
    :pswitch_4
    sget-object v10, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v11, "auto_net_traffic_adjust_day"

    sget v12, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoNetTrafficAdjustDay:I

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 546
    .restart local v2       #choose:I
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getWeekDay(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v9

    .line 547
    .restart local v9       #weekday:Ljava/lang/String;
    const v10, 0x7f0a03d9

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v9, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 549
    goto :goto_0

    .line 553
    .end local v2           #choose:I
    .end local v9           #weekday:Ljava/lang/String;
    :pswitch_5
    sget-object v10, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v11, "smart_low_value"

    const/16 v12, 0xa

    invoke-interface {v10, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 554
    .local v5, low_value:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .local v1, builder:Ljava/lang/StringBuilder;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0a01d1

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f0a00f5

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-virtual {v10, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 560
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v10

    const-string v11, "powermanager"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 563
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v10, "choosemodeLow"

    const/4 v11, 0x0

    invoke-interface {v8, v10, v11}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 565
    .local v3, choosemodeLow:I
    packed-switch v3, :pswitch_data_1

    .line 579
    :goto_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 580
    goto/16 :goto_0

    .line 567
    :pswitch_6
    const v10, 0x7f0a0511

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 570
    :pswitch_7
    const v10, 0x7f0a0512

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 573
    :pswitch_8
    const v10, 0x7f0a0513

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 576
    :pswitch_9
    const v10, 0x7f0a0514

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 583
    .end local v1           #builder:Ljava/lang/StringBuilder;
    .end local v3           #choosemodeLow:I
    .end local v5           #low_value:I
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :pswitch_a
    const-string v10, "hs_memory_optimize_data"

    invoke-static {v10}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSettingInt(Ljava/lang/String;)I

    move-result v6

    .line 585
    .local v6, percent:I
    if-lez v6, :cond_0

    .line 586
    const v10, 0x7f0a00a8

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "%"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 589
    :cond_0
    const v10, 0x7f0a00b5

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 591
    goto/16 :goto_0

    .line 594
    .end local v6           #percent:I
    :pswitch_b
    const v10, 0x7f0a00aa

    move-object/from16 v0, p0

    invoke-virtual {v0, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 595
    goto/16 :goto_0

    .line 598
    :pswitch_c
    const-string v10, "lock_screen_clean_delay"

    const/4 v11, 0x1

    move-object/from16 v0, p0

    invoke-static {v0, v10, v11}, Lcom/zte/heartyservice/common/utils/SettingUtils;->getIntSetting(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v4

    .line 599
    .local v4, delay:I
    const/4 v10, 0x6

    if-ne v4, v10, :cond_1

    .line 600
    const v10, 0x7f0a067d

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const/4 v13, 0x1

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 602
    :cond_1
    const v10, 0x7f0a067c

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    mul-int/lit8 v13, v4, 0xa

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v11, v12

    move-object/from16 v0, p0

    invoke-virtual {v0, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 604
    goto/16 :goto_0

    .line 516
    :pswitch_data_0
    .packed-switch 0x7f0e03e6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_c
        :pswitch_5
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 565
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static getTimingSaveElectricitySetting()Z
    .locals 3

    .prologue
    .line 613
    sget-object v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v1, "timing_save_electricity_switch"

    sget-boolean v2, Lcom/zte/heartyservice/power/SwitchTools;->DEF_TimingSaveElectSwitch:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private static getTimingSaveElectricitySummary(Landroid/content/Context;)Ljava/lang/String;
    .locals 19
    .parameter "context"

    .prologue
    .line 618
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "timing_save_electricity_from_hour"

    const/16 v16, 0x17

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 620
    .local v4, fhour:I
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "timing_save_electricity_from_minute"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 622
    .local v5, fminute:I
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "timing_save_electricity_to_hour"

    const/16 v16, 0x7

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    .line 624
    .local v11, thour:I
    sget-object v14, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v15, "timing_save_electricity_to_minute"

    const/16 v16, 0x0

    invoke-interface/range {v14 .. v16}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v12

    .line 627
    .local v12, tminute:I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .local v2, builder:Ljava/lang/StringBuilder;
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 631
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d3

    const/16 v16, 0x4

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 660
    :goto_0
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v14

    const-string v15, "powermanager"

    const/16 v16, 0x2

    invoke-virtual/range {v14 .. v16}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v8

    .line 663
    .local v8, sp:Landroid/content/SharedPreferences;
    const-string v14, "choosemode"

    const/4 v15, 0x0

    invoke-interface {v8, v14, v15}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 665
    .local v3, choosemode:I
    packed-switch v3, :pswitch_data_0

    .line 679
    :goto_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    return-object v14

    .line 636
    .end local v3           #choosemode:I
    .end local v8           #sp:Landroid/content/SharedPreferences;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d8

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 637
    .local v1, am:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d9

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 642
    .local v7, pm:Ljava/lang/String;
    const/16 v14, 0xc

    if-le v4, v14, :cond_1

    .line 643
    move-object v6, v7

    .line 644
    .local v6, funit:Ljava/lang/String;
    add-int/lit8 v9, v4, -0xc

    .line 649
    .local v9, tempfhour:I
    :goto_2
    const/16 v14, 0xc

    if-le v11, v14, :cond_2

    .line 650
    move-object v13, v7

    .line 651
    .local v13, tunit:Ljava/lang/String;
    add-int/lit8 v10, v11, -0xc

    .line 656
    .local v10, tempthour:I
    :goto_3
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0a01d2

    const/16 v16, 0x6

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x2

    aput-object v6, v16, v17

    const/16 v17, 0x3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x4

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    const/16 v17, 0x5

    aput-object v13, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 646
    .end local v6           #funit:Ljava/lang/String;
    .end local v9           #tempfhour:I
    .end local v10           #tempthour:I
    .end local v13           #tunit:Ljava/lang/String;
    :cond_1
    move-object v6, v1

    .line 647
    .restart local v6       #funit:Ljava/lang/String;
    move v9, v4

    .restart local v9       #tempfhour:I
    goto :goto_2

    .line 653
    :cond_2
    move-object v13, v1

    .line 654
    .restart local v13       #tunit:Ljava/lang/String;
    move v10, v11

    .restart local v10       #tempthour:I
    goto :goto_3

    .line 667
    .end local v1           #am:Ljava/lang/String;
    .end local v6           #funit:Ljava/lang/String;
    .end local v7           #pm:Ljava/lang/String;
    .end local v9           #tempfhour:I
    .end local v10           #tempthour:I
    .end local v13           #tunit:Ljava/lang/String;
    .restart local v3       #choosemode:I
    .restart local v8       #sp:Landroid/content/SharedPreferences;
    :pswitch_0
    const v14, 0x7f0a0511

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 670
    :pswitch_1
    const v14, 0x7f0a0512

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 673
    :pswitch_2
    const v14, 0x7f0a0513

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 676
    :pswitch_3
    const v14, 0x7f0a0514

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_1

    .line 665
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private static getWeekDay(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "choose"

    .prologue
    const v1, 0x7f0a03df

    .line 684
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, weekDay:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 708
    :goto_0
    return-object v0

    .line 687
    :pswitch_0
    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 688
    goto :goto_0

    .line 690
    :pswitch_1
    const v1, 0x7f0a03e0

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 691
    goto :goto_0

    .line 693
    :pswitch_2
    const v1, 0x7f0a03e1

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 694
    goto :goto_0

    .line 696
    :pswitch_3
    const v1, 0x7f0a03e2

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 697
    goto :goto_0

    .line 699
    :pswitch_4
    const v1, 0x7f0a03e3

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 700
    goto :goto_0

    .line 702
    :pswitch_5
    const v1, 0x7f0a03e4

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 703
    goto :goto_0

    .line 705
    :pswitch_6
    const v1, 0x7f0a03e5

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 685
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public static isOptionOn(Ljava/lang/String;)Z
    .locals 1
    .parameter "key"

    .prologue
    .line 712
    invoke-static {p0}, Lcom/zte/heartyservice/main/HeartyServiceApp;->isOptionEnabled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static setDoNotDisturbSetting(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 716
    sget-object v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "do_not_disturb_switch"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 718
    return-void
.end method

.method private setDoNotDisturbSwitch(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 990
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 991
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    if-eqz p1, :cond_0

    .line 993
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfDoNotDisturb()V

    .line 998
    :goto_0
    return-void

    .line 996
    :cond_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutDoNotDisturb()V

    goto :goto_0
.end method

.method public static setOption(Ljava/lang/String;Z)V
    .locals 0
    .parameter "key"
    .parameter "enable"

    .prologue
    .line 721
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->setOption(Ljava/lang/String;Z)V

    .line 722
    return-void
.end method

.method private static setPowerSavingSetting(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 725
    sget-object v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "smart_low_switch"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 726
    return-void
.end method

.method private setPowerSavingSwitch(Z)V
    .locals 4
    .parameter "enable"

    .prologue
    .line 1014
    const-string v1, "setting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPowerSavingSwitch: enable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1015
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 1016
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    if-eqz p1, :cond_0

    .line 1017
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenSmartLow()V

    .line 1021
    :goto_0
    return-void

    .line 1019
    :cond_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutSmartLow()V

    goto :goto_0
.end method

.method private static setSummaryState(Landroid/widget/TextView;I)V
    .locals 1
    .parameter "view"
    .parameter "id"

    .prologue
    .line 729
    packed-switch p1, :pswitch_data_0

    .line 764
    :goto_0
    :pswitch_0
    return-void

    .line 732
    :pswitch_1
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->doNotDisturbEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 735
    :pswitch_2
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->timingSaveElectricityEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 739
    :pswitch_3
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoCheckEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 742
    :pswitch_4
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->virusScanEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 745
    :pswitch_5
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoNetTrafficAdjustEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 749
    :pswitch_6
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->powerSavingEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 753
    :pswitch_7
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoRunEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 756
    :pswitch_8
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->memoryOptimizeEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 759
    :pswitch_9
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->clearAppEnabled:Z

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_0

    .line 729
    :pswitch_data_0
    .packed-switch 0x7f0e03e6
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_7
        :pswitch_7
    .end packed-switch
.end method

.method private setSwitch(Landroid/content/Context;ILcom/zte/heartyservice/common/datatype/P3Switch;)V
    .locals 1
    .parameter "context"
    .parameter "id"
    .parameter "switch_"

    .prologue
    .line 1024
    invoke-virtual {p3, p2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setId(I)V

    .line 1025
    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1026
    packed-switch p2, :pswitch_data_0

    .line 1074
    :goto_0
    iget-object v0, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/setting/HeartyServiceSettings$SwitchCheckedChangeListener;

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1075
    return-void

    .line 1029
    :pswitch_0
    invoke-static {}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getTimingSaveElectricitySetting()Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->timingSaveElectricityEnabled:Z

    .line 1030
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->timingSaveElectricityEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1033
    :pswitch_1
    invoke-static {}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getDoNotDisturbSetting()Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->doNotDisturbEnabled:Z

    .line 1034
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->doNotDisturbEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1038
    :pswitch_2
    const-string v0, "hs_auto_check"

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoCheckEnabled:Z

    .line 1039
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoCheckEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1042
    :pswitch_3
    const-string v0, "hs_virus_scan"

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->virusScanEnabled:Z

    .line 1043
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->virusScanEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1046
    :pswitch_4
    const-string v0, "hs_auto_net_traffic_adjust"

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoNetTrafficAdjustEnabled:Z

    .line 1047
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoNetTrafficAdjustEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1051
    :pswitch_5
    invoke-static {}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getPowerSavingSetting()Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->powerSavingEnabled:Z

    .line 1052
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->powerSavingEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1056
    :pswitch_6
    invoke-static {p1}, Lcom/zte/heartyservice/common/utils/AutoRunSwitch;->isAutoRunOn(Landroid/content/Context;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoRunEnabled:Z

    .line 1057
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoRunEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1060
    :pswitch_7
    const-string v0, "hs_memory_optimize"

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->memoryOptimizeEnabled:Z

    .line 1061
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->memoryOptimizeEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1064
    :pswitch_8
    const-string v0, "hs_clear_app"

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->clearAppEnabled:Z

    .line 1065
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->clearAppEnabled:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto :goto_0

    .line 1068
    :pswitch_9
    const-string v0, "hs_lock_screen_clean"

    invoke-static {v0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->isOptionOn(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->lockScreenClean:Z

    .line 1069
    sget-boolean v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->lockScreenClean:Z

    invoke-virtual {p3, v0}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_0

    .line 1026
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03e6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_5
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method private static setTimingSaveElectricitySetting(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 767
    sget-object v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "timing_save_electricity_switch"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 769
    return-void
.end method

.method private setTimingSaveElectricitySwitch(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1078
    new-instance v0, Lcom/zte/heartyservice/power/SwitchTools;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/power/SwitchTools;-><init>(Landroid/content/Context;)V

    .line 1079
    .local v0, st:Lcom/zte/heartyservice/power/SwitchTools;
    if-eqz p1, :cond_0

    .line 1081
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->OpenTimerOfTimingSaveElectricity()V

    .line 1086
    :goto_0
    return-void

    .line 1084
    :cond_0
    invoke-virtual {v0}, Lcom/zte/heartyservice/power/SwitchTools;->ShutTimingSaveElectricity()V

    goto :goto_0
.end method


# virtual methods
.method public checkTimer(I)V
    .locals 0
    .parameter "id"

    .prologue
    .line 800
    invoke-static {p0, p1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->checkTimer(Landroid/content/Context;I)V

    .line 801
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 831
    .local p1, headers:Ljava/util/List;,"Ljava/util/List<Landroid/preference/PreferenceActivity$Header;>;"
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 832
    const v0, 0x7f050005

    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->loadHeadersFromResource(ILjava/util/List;)V

    .line 840
    :goto_0
    iput-object p1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    .line 841
    return-void

    .line 835
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isPresetCTVersion()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 836
    const v0, 0x7f050006

    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0

    .line 838
    :cond_1
    const v0, 0x7f050003

    invoke-virtual {p0, v0, p1}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->loadHeadersFromResource(ILjava/util/List;)V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 846
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 848
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 849
    iget-object v5, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    invoke-virtual {p0, v5}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->onBuildHeaders(Ljava/util/List;)V

    .line 851
    :cond_0
    const-string v5, "powermanager"

    const/4 v6, 0x2

    invoke-virtual {p0, v5, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    sput-object v5, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    .line 855
    :try_start_0
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 856
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOverscrollHeader(Landroid/graphics/drawable/Drawable;)V

    .line 857
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setOverscrollFooter(Landroid/graphics/drawable/Drawable;)V

    .line 858
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const v6, 0x7f020294

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setSelector(I)V

    .line 861
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/widget/ListView;->setDrawSelectorOnTop(Z)V

    .line 863
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 864
    .local v4, res:Landroid/content/res/Resources;
    const v5, 0x7f0b00d0

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 865
    .local v1, marginLeft:I
    move v2, v1

    .line 866
    .local v2, marginRight:I
    div-int/lit8 v3, v1, 0x2

    .line 867
    .local v3, marginTop:I
    move v0, v1

    .line 869
    .local v0, marginBottom:I
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->getListView()Landroid/widget/ListView;

    move-result-object v5

    invoke-virtual {v5, v1, v3, v2, v0}, Landroid/widget/ListView;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 872
    .end local v0           #marginBottom:I
    .end local v1           #marginLeft:I
    .end local v2           #marginRight:I
    .end local v3           #marginTop:I
    .end local v4           #res:Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 870
    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V
    .locals 9
    .parameter "header"
    .parameter "position"

    .prologue
    .line 887
    invoke-super {p0, p1, p2}, Landroid/preference/PreferenceActivity;->onHeaderClick(Landroid/preference/PreferenceActivity$Header;I)V

    .line 888
    iget-wide v6, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    long-to-int v6, v6

    packed-switch v6, :pswitch_data_0

    .line 980
    :goto_0
    return-void

    .line 891
    :pswitch_0
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/setting/AtNightDoNotDisturbSetting;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 894
    :pswitch_1
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/setting/TimingSaveElectricitySetting;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 898
    :pswitch_2
    sget-object v6, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v7, "auto_check_day"

    sget v8, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoCheckDay:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 901
    .local v3, auto_check_choose:I
    new-instance v6, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    invoke-direct {v6}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;-><init>()V

    new-instance v7, Lcom/zte/heartyservice/setting/HeartyServiceSettings$4;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$4;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;)V

    invoke-virtual {v6, p0, v3, v7}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->create(Landroid/content/Context;ILcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;)Lcom/zte/heartyservice/setting/ChooseCycleDialog;

    move-result-object v0

    .line 915
    .local v0, autoCheckDialog:Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    invoke-virtual {v0}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->show()V

    .line 916
    invoke-static {v0}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 919
    .end local v0           #autoCheckDialog:Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    .end local v3           #auto_check_choose:I
    :pswitch_3
    sget-object v6, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v7, "auto_virus_scan_day"

    sget v8, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoVirusScanDay:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    .line 922
    .local v5, auto_virus_scan_choose:I
    new-instance v6, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    invoke-direct {v6}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;-><init>()V

    new-instance v7, Lcom/zte/heartyservice/setting/HeartyServiceSettings$5;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$5;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;)V

    invoke-virtual {v6, p0, v5, v7}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->create(Landroid/content/Context;ILcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;)Lcom/zte/heartyservice/setting/ChooseCycleDialog;

    move-result-object v2

    .line 936
    .local v2, autoVirusScanDialog:Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    invoke-virtual {v2}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->show()V

    .line 937
    invoke-static {v2}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 940
    .end local v2           #autoVirusScanDialog:Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    .end local v5           #auto_virus_scan_choose:I
    :pswitch_4
    sget-object v6, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mSpPowerManager:Landroid/content/SharedPreferences;

    const-string v7, "auto_net_traffic_adjust_day"

    sget v8, Lcom/zte/heartyservice/power/SwitchTools;->DEF_AutoNetTrafficAdjustDay:I

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 943
    .local v4, auto_net_traffic_adjust_choose:I
    new-instance v6, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;

    invoke-direct {v6}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;-><init>()V

    new-instance v7, Lcom/zte/heartyservice/setting/HeartyServiceSettings$6;

    invoke-direct {v7, p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$6;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;)V

    invoke-virtual {v6, p0, v4, v7}, Lcom/zte/heartyservice/setting/ChooseCycleDialog$Builder;->create(Landroid/content/Context;ILcom/zte/heartyservice/setting/ChooseCycleDialog$writeChooseCB;)Lcom/zte/heartyservice/setting/ChooseCycleDialog;

    move-result-object v1

    .line 957
    .local v1, autoNetTrafficAdjustDialog:Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    invoke-virtual {v1}, Lcom/zte/heartyservice/setting/ChooseCycleDialog;->show()V

    .line 958
    invoke-static {v1}, Lcom/zte/heartyservice/common/ui/DialogActivity;->setCustomAlertDialogStyle(Landroid/app/AlertDialog;)V

    goto :goto_0

    .line 962
    .end local v1           #autoNetTrafficAdjustDialog:Lcom/zte/heartyservice/setting/ChooseCycleDialog;
    .end local v4           #auto_net_traffic_adjust_choose:I
    :pswitch_5
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/setting/MemoryOptimizeSettings;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 966
    :pswitch_6
    invoke-direct {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->autoRunTipDlg()V

    goto/16 :goto_0

    .line 969
    :pswitch_7
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/setting/ClearAppSettings;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 972
    :pswitch_8
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/setting/SmartModeLowSettings;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 975
    :pswitch_9
    new-instance v6, Landroid/content/Intent;

    const-class v7, Lcom/zte/heartyservice/setting/LockScreenCleanSettings;

    invoke-direct {v6, p0, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v6}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 888
    nop

    :pswitch_data_0
    .packed-switch 0x7f0e03e6
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_9
        :pswitch_8
        :pswitch_5
        :pswitch_7
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 876
    invoke-super/range {p0 .. p5}, Landroid/preference/PreferenceActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 878
    const-string v1, "HeartyServiceSettings"

    const-string v2, "liuji debug onTouch onListItemClick"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;

    .line 883
    .local v0, holder:Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderViewHolder;
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 984
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 985
    invoke-virtual {p0}, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->onContentChanged()V

    .line 986
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v0

    const/16 v1, 0x1e

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 987
    return-void
.end method

.method public setListAdapter(Landroid/widget/ListAdapter;)V
    .locals 3
    .parameter "adapter"

    .prologue
    .line 1002
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1003
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    .line 1004
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 1005
    iget-object v2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    invoke-interface {p1, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceActivity$Header;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1004
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1009
    .end local v0           #i:I
    :cond_0
    new-instance v1, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;

    iget-object v2, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaders:Ljava/util/List;

    invoke-direct {v1, p0, p0, v2}, Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;-><init>(Lcom/zte/heartyservice/setting/HeartyServiceSettings;Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaderAdapter:Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;

    .line 1010
    iget-object v1, p0, Lcom/zte/heartyservice/setting/HeartyServiceSettings;->mHeaderAdapter:Lcom/zte/heartyservice/setting/HeartyServiceSettings$HeaderAdapter;

    invoke-super {p0, v1}, Landroid/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 1011
    return-void
.end method

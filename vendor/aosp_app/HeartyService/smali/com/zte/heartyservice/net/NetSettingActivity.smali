.class public Lcom/zte/heartyservice/net/NetSettingActivity;
.super Landroid/app/Activity;
.source "NetSettingActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;,
        Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetSettingActivity"


# instance fields
.field private calculateDayLayout:Landroid/view/View;

.field private dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mAllSimReady:Z

.field private mCurrentSim:I

.field private mIdleHourSummary:Landroid/widget/TextView;

.field private mIdleHoursLayout:Landroid/view/View;

.field private mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSimManager:Lcom/zte/heartyservice/msim/SimManager;

.field private mSimSwitch:Landroid/widget/RadioGroup;

.field private mSwitchCheckedChangeListener:Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;

.field private maxMonthLayout:Landroid/view/View;

.field private monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

.field private msimSwitchLayout:Landroid/view/View;

.field private netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field private netSettingListener:Landroid/view/View$OnClickListener;

.field private statsAdjustmentLayout:Landroid/view/View;

.field private warnningDayLayout:Landroid/view/View;

.field private warnningMonthLayout:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mAllSimReady:Z

    .line 37
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    .line 40
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->maxMonthLayout:Landroid/view/View;

    .line 41
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->calculateDayLayout:Landroid/view/View;

    .line 42
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->warnningMonthLayout:Landroid/view/View;

    .line 43
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    .line 55
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHourSummary:Landroid/widget/TextView;

    .line 56
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursLayout:Landroid/view/View;

    .line 57
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 64
    new-instance v0, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;

    invoke-direct {v0, p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity;Lcom/zte/heartyservice/net/NetSettingActivity$1;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;

    .line 130
    new-instance v0, Lcom/zte/heartyservice/net/NetSettingActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetSettingActivity$1;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 340
    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/NetSettingActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/net/NetSettingActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 31
    iput p1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/net/NetSettingActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->updateUI()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/net/NetSettingActivity;)Lcom/zte/heartyservice/common/datatype/P3Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 31
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    return-object v0
.end method

.method private initMSimState()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 178
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    .line 179
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 180
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isAllSimReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mAllSimReady:Z

    .line 181
    iget-boolean v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mAllSimReady:Z

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 183
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    const v1, 0x7f0e01b7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 184
    iput v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    .line 192
    :goto_0
    return-void

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->getFirstReadyId()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    goto :goto_0

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->msimSwitchLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private setEventListener()V
    .locals 3

    .prologue
    .line 285
    new-instance v1, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/zte/heartyservice/net/NetSettingActivity$SettingListener;-><init>(Lcom/zte/heartyservice/net/NetSettingActivity;Lcom/zte/heartyservice/net/NetSettingActivity$1;)V

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    .line 286
    const v1, 0x7f0e01db

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->maxMonthLayout:Landroid/view/View;

    .line 287
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->maxMonthLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 288
    const v1, 0x7f0e01e5

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->calculateDayLayout:Landroid/view/View;

    .line 289
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->calculateDayLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    const v1, 0x7f0e01e0

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->warnningMonthLayout:Landroid/view/View;

    .line 291
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->warnningMonthLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    const v1, 0x7f0e01e7

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->warnningDayLayout:Landroid/view/View;

    .line 293
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->warnningDayLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    const v1, 0x7f0e01e3

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->statsAdjustmentLayout:Landroid/view/View;

    .line 295
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->statsAdjustmentLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 296
    const v1, 0x7f0e01e2

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 297
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 298
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 299
    const v1, 0x7f0e01e9

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 300
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 304
    const v1, 0x7f0e01de

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHourSummary:Landroid/widget/TextView;

    .line 305
    const v1, 0x7f0e01dd

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursLayout:Landroid/view/View;

    .line 306
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursLayout:Landroid/view/View;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    const v1, 0x7f0e01df

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/zte/heartyservice/common/datatype/P3Switch;

    iput-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    .line 308
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 309
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSwitchCheckedChangeListener:Lcom/zte/heartyservice/net/NetSettingActivity$SwitchCheckedChangeListener;

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 332
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->supportAutoTrafficCorrection()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    const v1, 0x7f0e01e4

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 334
    .local v0, simInfoSettingView:Landroid/view/View;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 335
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->statsAdjustmentLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 338
    .end local v0           #simInfoSettingView:Landroid/view/View;
    :cond_0
    return-void
.end method

.method private updateUI()V
    .locals 17

    .prologue
    .line 195
    const v11, 0x7f0e01dc

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 196
    .local v7, maxMonthFlowTxt:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v8

    .line 197
    .local v8, monthThreshold:I
    const/4 v11, -0x1

    if-ne v11, v8, :cond_1

    .line 198
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00e6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_0
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthFlowWarnPct(I)I

    move-result v10

    .line 208
    .local v10, percent:I
    const v11, 0x7f0e01e1

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 209
    .local v9, monthWarnPctTxt:Landroid/widget/TextView;
    const/4 v11, -0x1

    if-ne v11, v10, :cond_3

    .line 210
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00fa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    :goto_1
    const v11, 0x7f0e01e6

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 216
    .local v1, calDayTxt:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay(I)I

    move-result v2

    .line 217
    .local v2, calcDay:I
    const/4 v11, -0x1

    if-ne v11, v2, :cond_0

    .line 218
    const/4 v2, 0x1

    .line 220
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00ed

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v11, v12, v13}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 221
    .local v3, calcDayStr:Ljava/lang/CharSequence;
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    const v11, 0x7f0e01e8

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 224
    .local v6, maxDayFlowTxt:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayThreshold(I)I

    move-result v4

    .line 225
    .local v4, dayThreshold:I
    const/4 v11, -0x1

    if-ne v11, v4, :cond_4

    .line 226
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0a00e6

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 235
    :goto_2
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonWarnOpen(I)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 236
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 241
    :goto_3
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getDayWarnOpen(I)Z

    move-result v11

    if-eqz v11, :cond_7

    .line 242
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 248
    :goto_4
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v11

    if-eqz v11, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    .line 253
    :goto_5
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mCurrentSim:I

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v5

    .line 254
    .local v5, idleHoursThreshold:I
    if-gez v5, :cond_9

    .line 255
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHourSummary:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f0a00e6

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    :goto_6
    return-void

    .line 200
    .end local v1           #calDayTxt:Landroid/widget/TextView;
    .end local v2           #calcDay:I
    .end local v3           #calcDayStr:Ljava/lang/CharSequence;
    .end local v4           #dayThreshold:I
    .end local v5           #idleHoursThreshold:I
    .end local v6           #maxDayFlowTxt:Landroid/widget/TextView;
    .end local v9           #monthWarnPctTxt:Landroid/widget/TextView;
    .end local v10           #percent:I
    :cond_1
    const/16 v11, 0x400

    if-lt v8, v11, :cond_2

    rem-int/lit16 v11, v8, 0x400

    if-nez v11, :cond_2

    .line 201
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v12, v8, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "G"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 203
    :cond_2
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "M"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 212
    .restart local v9       #monthWarnPctTxt:Landroid/widget/TextView;
    .restart local v10       #percent:I
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "%"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 228
    .restart local v1       #calDayTxt:Landroid/widget/TextView;
    .restart local v2       #calcDay:I
    .restart local v3       #calcDayStr:Ljava/lang/CharSequence;
    .restart local v4       #dayThreshold:I
    .restart local v6       #maxDayFlowTxt:Landroid/widget/TextView;
    :cond_4
    const/16 v11, 0x400

    if-lt v4, v11, :cond_5

    rem-int/lit16 v11, v4, 0x400

    if-nez v11, :cond_5

    .line 229
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v12, v4, 0x400

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "G"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 231
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "M"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 238
    :cond_6
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->monthWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_3

    .line 244
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->dayWarnSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_4

    .line 251
    :cond_8
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHoursSwitchIcon:Lcom/zte/heartyservice/common/datatype/P3Switch;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/zte/heartyservice/common/datatype/P3Switch;->setChecked(Z)V

    goto/16 :goto_5

    .line 257
    .restart local v5       #idleHoursThreshold:I
    :cond_9
    const/16 v11, 0x400

    if-lt v5, v11, :cond_a

    rem-int/lit16 v11, v5, 0x400

    if-nez v11, :cond_a

    .line 258
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHourSummary:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v13, v5, 0x400

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "G"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 260
    :cond_a
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/zte/heartyservice/net/NetSettingActivity;->mIdleHourSummary:Landroid/widget/TextView;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "M"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 151
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetSettingActivity;->requestWindowFeature(I)Z

    .line 153
    const v0, 0x7f03008a

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetSettingActivity;->setContentView(I)V

    .line 154
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->netSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 155
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->setEventListener()V

    .line 158
    const v0, 0x7f0e01b5

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->msimSwitchLayout:Landroid/view/View;

    .line 159
    const v0, 0x7f0e01b6

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetSettingActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    .line 160
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetSettingActivity;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 161
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->initMSimState()V

    .line 163
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 174
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 167
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 168
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetSettingActivity;->updateUI()V

    .line 169
    return-void
.end method

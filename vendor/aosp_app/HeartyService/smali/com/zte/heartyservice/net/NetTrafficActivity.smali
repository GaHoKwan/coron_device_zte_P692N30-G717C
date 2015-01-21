.class public Lcom/zte/heartyservice/net/NetTrafficActivity;
.super Landroid/app/Activity;
.source "NetTrafficActivity.java"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "NetTrafficActivity"


# instance fields
.field adjustBtn:Landroid/widget/Button;

.field chartLayout:Landroid/widget/LinearLayout;

.field private dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field private dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

.field private mAllSimReady:Z

.field private mChartView:Lorg/achartengine/GraphicalView;

.field private mCurrentSim:I

.field private mDataQuota:Landroid/widget/TextView;

.field private mDataTimeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mDataTimeSwitch:Landroid/widget/RadioGroup;

.field final mDateFormat:Ljava/text/SimpleDateFormat;

.field mMonthLeft:Landroid/widget/TextView;

.field mMonthLeftPrefix:Landroid/widget/TextView;

.field mMonthUsed:Landroid/widget/TextView;

.field private mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

.field mNetTrafficChart:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSim0:Landroid/widget/RadioButton;

.field private mSim0Idle:Landroid/widget/RadioButton;

.field private mSim1:Landroid/widget/RadioButton;

.field private mSim1Idle:Landroid/widget/RadioButton;

.field private mSim1_mid:Landroid/widget/RadioButton;

.field private mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

.field private mSimManager:Lcom/zte/heartyservice/msim/SimManager;

.field private mSimSwitch:Landroid/widget/RadioGroup;

.field private mTab:I

.field mTodayUsed:Landroid/widget/TextView;

.field mTrafficIcon:Landroid/widget/ImageView;

.field mTrafficImage:Landroid/widget/ImageView;

.field mTrafficPercent:Landroid/widget/TextView;

.field private mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

.field mWlanTrafficChart:Landroid/widget/TextView;

.field private normalMaxStats:D

.field private renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

.field private warnMaxStats:D


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 57
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mAllSimReady:Z

    .line 62
    iput v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    .line 64
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    .line 66
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    .line 67
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficIcon:Landroid/widget/ImageView;

    .line 68
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficPercent:Landroid/widget/TextView;

    .line 69
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTodayUsed:Landroid/widget/TextView;

    .line 70
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthUsed:Landroid/widget/TextView;

    .line 71
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    .line 72
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    .line 74
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetTrafficChart:Landroid/widget/TextView;

    .line 75
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mWlanTrafficChart:Landroid/widget/TextView;

    .line 77
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->chartLayout:Landroid/widget/LinearLayout;

    .line 78
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 80
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 82
    iput-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 86
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 92
    iput v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    .line 105
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficActivity$1;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficActivity$1;-><init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 237
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficActivity$2;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficActivity$2;-><init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 281
    new-instance v0, Lcom/zte/heartyservice/net/NetTrafficActivity$3;

    invoke-direct {v0, p0}, Lcom/zte/heartyservice/net/NetTrafficActivity$3;-><init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/zte/heartyservice/net/NetTrafficActivity;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/zte/heartyservice/net/NetTrafficActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    return v0
.end method

.method static synthetic access$102(Lcom/zte/heartyservice/net/NetTrafficActivity;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    iput p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    return p1
.end method

.method static synthetic access$200(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    return-object v0
.end method

.method static synthetic access$300(Lcom/zte/heartyservice/net/NetTrafficActivity;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V

    return-void
.end method

.method static synthetic access$400(Lcom/zte/heartyservice/net/NetTrafficActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateAdjustBtn()V

    return-void
.end method

.method static synthetic access$500(Lcom/zte/heartyservice/net/NetTrafficActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->showAdjDialog()V

    return-void
.end method

.method static synthetic access$600(Lcom/zte/heartyservice/net/NetTrafficActivity;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    return v0
.end method

.method static synthetic access$700(Lcom/zte/heartyservice/net/NetTrafficActivity;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    return-object v0
.end method

.method static synthetic access$800(Lcom/zte/heartyservice/net/NetTrafficActivity;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustTraffic()V

    return-void
.end method

.method private adjustTraffic()V
    .locals 3

    .prologue
    .line 517
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->supportAutoTrafficCorrection()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 518
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->simIsReady()Z

    move-result v1

    if-nez v1, :cond_0

    .line 519
    const v1, 0x7f0a03ab

    invoke-virtual {p0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 539
    :goto_0
    return-void

    .line 525
    :cond_0
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->getCurrentVirusDBEngine()Lcom/zte/heartyservice/porting/All/VirusDBEngine;

    move-result-object v1

    invoke-virtual {v1}, Lcom/zte/heartyservice/porting/All/VirusDBEngine;->getTrafficCorrection()Lcom/zte/heartyservice/net/TrafficCorrectionAPI;

    move-result-object v0

    .line 528
    .local v0, tc:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->isLastConfigSim(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 529
    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->switchConfig(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 530
    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    const/4 v2, 0x1

    invoke-static {v1, p0, v2}, Lcom/zte/heartyservice/net/SimInfoSettingActivity;->startSelf(ILandroid/app/Activity;Z)V

    goto :goto_0

    .line 535
    :cond_1
    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/TrafficCorrectionAPI;->startCorrection(I)V

    goto :goto_0

    .line 537
    .end local v0           #tc:Lcom/zte/heartyservice/net/TrafficCorrectionAPI;
    :cond_2
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->showAdjDialog()V

    goto :goto_0
.end method

.method private chartDataInit()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 745
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v2, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getCalcDay(I)I

    move-result v9

    .line 746
    .local v9, calDay:I
    invoke-static {v9}, Lorg/achartengine/util/BarChartFactory;->getInstance(I)Lorg/achartengine/util/BarChartFactory;

    move-result-object v7

    .line 748
    .local v7, barChartFactory:Lorg/achartengine/util/BarChartFactory;
    const-string v2, "lixi"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##normalMaxStats in chartDataInit() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v0, Lorg/achartengine/chart/BarChartSection;

    const-wide/16 v1, 0x0

    iget-wide v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    const-string v5, "#ff70A63F"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-direct/range {v0 .. v5}, Lorg/achartengine/chart/BarChartSection;-><init>(DDI)V

    .line 750
    .local v0, sectionNormal:Lorg/achartengine/chart/BarChartSection;
    new-instance v1, Lorg/achartengine/chart/BarChartSection;

    iget-wide v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    const-wide v4, 0x7fefffffffffffffL

    const/high16 v6, -0x1

    invoke-direct/range {v1 .. v6}, Lorg/achartengine/chart/BarChartSection;-><init>(DDI)V

    .line 751
    .local v1, sectionWarn:Lorg/achartengine/chart/BarChartSection;
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 752
    .local v8, barChartSections:Ljava/util/List;,"Ljava/util/List<Lorg/achartengine/chart/BarChartSection;>;"
    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 753
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 755
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    if-nez v2, :cond_0

    .line 756
    invoke-virtual {v7, v8}, Lorg/achartengine/util/BarChartFactory;->generateSeriesRenderer(Ljava/util/List;)Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    .line 757
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, v11, v11}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setZoomEnabled(ZZ)V

    .line 763
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getChartDayTrafficStats(Lorg/achartengine/util/BarChartFactory;)[I

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lorg/achartengine/util/BarChartFactory;->generateDataset(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;[I)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    .line 765
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-direct {p0, v7}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getWifiChartDayTrafficStats(Lorg/achartengine/util/BarChartFactory;)[I

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Lorg/achartengine/util/BarChartFactory;->generateDatasetWifi(Lorg/achartengine/renderer/XYMultipleSeriesRenderer;[I)Lorg/achartengine/model/XYMultipleSeriesDataset;

    move-result-object v2

    iput-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 770
    :goto_1
    return-void

    .line 759
    :cond_0
    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    invoke-virtual {v2, v8}, Lorg/achartengine/renderer/XYMultipleSeriesRenderer;->setBarChartSections(Ljava/util/List;)V

    goto :goto_0

    .line 767
    :catch_0
    move-exception v10

    .line 768
    .local v10, ex:Ljava/lang/Exception;
    const-string v2, "NetTrafficActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "catch exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private getChartDayTrafficStats(Lorg/achartengine/util/BarChartFactory;)[I
    .locals 13
    .parameter "barChartFactory"

    .prologue
    .line 695
    invoke-virtual {p1}, Lorg/achartengine/util/BarChartFactory;->generateDateInfo()Ljava/util/List;

    move-result-object v0

    .line 696
    .local v0, dateList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DateInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 700
    .local v8, size:I
    new-array v2, v8, [I

    .line 701
    .local v2, dayTraffics:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 702
    .local v6, localCalendar:Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 705
    .local v9, year:I
    const/4 v3, 0x0

    .line 706
    .local v3, i:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/DateInfo;

    .line 707
    .local v5, info:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-virtual {v5}, Lcom/zte/heartyservice/common/datatype/DateInfo;->getDay()I

    move-result v1

    .line 708
    .local v1, day:I
    invoke-virtual {v5}, Lcom/zte/heartyservice/common/datatype/DateInfo;->getMonth()I

    move-result v7

    .line 709
    .local v7, month:I
    iget-object v10, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    iget v11, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    add-int/lit8 v12, v7, -0x1

    invoke-virtual {v10, v11, v9, v12, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficUsedByDate(IIII)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v2, v3

    .line 713
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 715
    .end local v1           #day:I
    .end local v5           #info:Lcom/zte/heartyservice/common/datatype/DateInfo;
    .end local v7           #month:I
    :cond_0
    return-object v2
.end method

.method private getIdleHoursString()Ljava/lang/String;
    .locals 18

    .prologue
    .line 1180
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1182
    .local v2, builder:Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v13, v14}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartHour(I)I

    move-result v8

    .line 1183
    .local v8, startHour:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v13, v14}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursStartMinute(I)I

    move-result v9

    .line 1184
    .local v9, startMinute:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v13, v14}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndHour(I)I

    move-result v3

    .line 1185
    .local v3, endHour:I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v14, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v13, v14}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursEndMinute(I)I

    move-result v4

    .line 1186
    .local v4, endMinute:I
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a0114

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1187
    invoke-static/range {p0 .. p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1188
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a01d3

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, " -"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1219
    .local v7, res:Ljava/lang/String;
    :goto_0
    return-object v7

    .line 1193
    .end local v7           #res:Ljava/lang/String;
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a01d8

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1194
    .local v1, am:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a01d9

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 1199
    .local v6, pm:Ljava/lang/String;
    const/16 v13, 0xc

    if-le v8, v13, :cond_1

    .line 1200
    move-object v5, v6

    .line 1201
    .local v5, funit:Ljava/lang/String;
    add-int/lit8 v10, v8, -0xc

    .line 1207
    .local v10, tempfhour:I
    :goto_1
    const/16 v13, 0xc

    if-le v3, v13, :cond_2

    .line 1208
    move-object v12, v6

    .line 1209
    .local v12, tunit:Ljava/lang/String;
    add-int/lit8 v11, v3, -0xc

    .line 1214
    .local v11, tempthour:I
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f0a01d2

    const/4 v15, 0x6

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    aput-object v5, v15, v16

    const/16 v16, 0x3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x5

    aput-object v12, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1217
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, " -"

    const-string v16, ""

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "\n"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .restart local v7       #res:Ljava/lang/String;
    goto :goto_0

    .line 1203
    .end local v5           #funit:Ljava/lang/String;
    .end local v7           #res:Ljava/lang/String;
    .end local v10           #tempfhour:I
    .end local v11           #tempthour:I
    .end local v12           #tunit:Ljava/lang/String;
    :cond_1
    move-object v5, v1

    .line 1204
    .restart local v5       #funit:Ljava/lang/String;
    move v10, v8

    .restart local v10       #tempfhour:I
    goto :goto_1

    .line 1211
    :cond_2
    move-object v12, v1

    .line 1212
    .restart local v12       #tunit:Ljava/lang/String;
    move v11, v3

    .restart local v11       #tempthour:I
    goto :goto_2
.end method

.method private getWifiChartDayTrafficStats(Lorg/achartengine/util/BarChartFactory;)[I
    .locals 12
    .parameter "barChartFactory"

    .prologue
    .line 720
    invoke-virtual {p1}, Lorg/achartengine/util/BarChartFactory;->generateDateInfo()Ljava/util/List;

    move-result-object v0

    .line 721
    .local v0, dateList:Ljava/util/List;,"Ljava/util/List<Lcom/zte/heartyservice/common/datatype/DateInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    .line 725
    .local v8, size:I
    new-array v2, v8, [I

    .line 726
    .local v2, dayTraffics:[I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 727
    .local v6, localCalendar:Ljava/util/Calendar;
    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/util/Calendar;->get(I)I

    move-result v9

    .line 730
    .local v9, year:I
    const/4 v3, 0x0

    .line 731
    .local v3, i:I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/zte/heartyservice/common/datatype/DateInfo;

    .line 732
    .local v5, info:Lcom/zte/heartyservice/common/datatype/DateInfo;
    invoke-virtual {v5}, Lcom/zte/heartyservice/common/datatype/DateInfo;->getDay()I

    move-result v1

    .line 733
    .local v1, day:I
    invoke-virtual {v5}, Lcom/zte/heartyservice/common/datatype/DateInfo;->getMonth()I

    move-result v7

    .line 734
    .local v7, month:I
    iget-object v10, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    add-int/lit8 v11, v7, -0x1

    invoke-virtual {v10, v9, v11, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getWifiTrafficUsedByDate(III)J

    move-result-wide v10

    long-to-int v10, v10

    aput v10, v2, v3

    .line 738
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 740
    .end local v1           #day:I
    .end local v5           #info:Lcom/zte/heartyservice/common/datatype/DateInfo;
    .end local v7           #month:I
    :cond_0
    return-object v2
.end method

.method private initMSimState()V
    .locals 3

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 498
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    .line 499
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 500
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isAllSimReady()Z

    move-result v0

    iput-boolean v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mAllSimReady:Z

    .line 501
    iget-boolean v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mAllSimReady:Z

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 503
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    const v1, 0x7f0e01b7

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 504
    iput v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    .line 505
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateSimSwitch()V

    .line 514
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 508
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->getFirstReadyId()I

    move-result v0

    iput v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    .line 509
    const-string v0, "TrafficAdjustUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "liuji debug adjustTraffic mCurrentSim:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 512
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private setTab(I)V
    .locals 2
    .parameter "which"

    .prologue
    .line 1058
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1059
    iput p1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    .line 1064
    :goto_0
    iget v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    if-nez v0, :cond_1

    .line 1065
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataQuota:Landroid/widget/TextView;

    const v1, 0x7f0a0113

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1071
    :goto_1
    return-void

    .line 1061
    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    goto :goto_0

    .line 1066
    :cond_1
    iget v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1067
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataQuota:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getIdleHoursString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1069
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataQuota:Landroid/widget/TextView;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private showAdjDialog()V
    .locals 3

    .prologue
    .line 303
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 304
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "subscription"

    iget v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 305
    const-string v1, "tab"

    iget v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 306
    invoke-static {p0, v0}, Lcom/zte/heartyservice/common/utils/AppUtils;->realShowAdjDialog(Landroid/app/Activity;Landroid/os/Bundle;)Landroid/app/Dialog;

    .line 307
    return-void
.end method

.method private updateAdjustBtn()V
    .locals 5

    .prologue
    const v4, 0x7f0a0587

    const v3, 0x7f0a00e5

    const/4 v2, -0x1

    .line 939
    iget v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 940
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursMax(I)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 941
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 953
    :goto_0
    return-void

    .line 943
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 947
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthThreshold(I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 948
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 950
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private updateChart()V
    .locals 5

    .prologue
    const/4 v4, -0x1

    .line 773
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->chartDataInit()V

    .line 774
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mChartView:Lorg/achartengine/GraphicalView;

    if-nez v0, :cond_0

    .line 776
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    sget-object v3, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    invoke-static {p0, v0, v1, v2, v3}, Lorg/achartengine/ChartFactory;->getBarChartView(Landroid/content/Context;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)Lorg/achartengine/GraphicalView;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mChartView:Lorg/achartengine/GraphicalView;

    .line 778
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mChartView:Lorg/achartengine/GraphicalView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/achartengine/GraphicalView;->setHorizontalFadingEdgeEnabled(Z)V

    .line 779
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mChartView:Lorg/achartengine/GraphicalView;

    const-string v1, "#ffdee3e6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/achartengine/GraphicalView;->setBackgroundColor(I)V

    .line 780
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->chartLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mChartView:Lorg/achartengine/GraphicalView;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 784
    :goto_0
    return-void

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mChartView:Lorg/achartengine/GraphicalView;

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset:Lorg/achartengine/model/XYMultipleSeriesDataset;

    iget-object v2, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->dataset1:Lorg/achartengine/model/XYMultipleSeriesDataset;

    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->renderer:Lorg/achartengine/renderer/XYMultipleSeriesRenderer;

    sget-object v4, Lorg/achartengine/chart/BarChart$Type;->DEFAULT:Lorg/achartengine/chart/BarChart$Type;

    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/achartengine/GraphicalView;->repaintBarChart(Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/model/XYMultipleSeriesDataset;Lorg/achartengine/renderer/XYMultipleSeriesRenderer;Lorg/achartengine/chart/BarChart$Type;)V

    goto :goto_0
.end method

.method private updateDTimeSwitch()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 1074
    invoke-static {}, Lcom/zte/heartyservice/msim/SimManager;->getInstance()Lcom/zte/heartyservice/msim/SimManager;

    move-result-object v0

    iput-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    .line 1075
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimManager:Lcom/zte/heartyservice/msim/SimManager;

    invoke-virtual {v0}, Lcom/zte/heartyservice/msim/SimManager;->isAllSimReady()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1076
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1089
    :cond_0
    :goto_0
    return-void

    .line 1078
    :cond_1
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    iget v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    invoke-virtual {v0, v1}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1079
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 1080
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v3}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeSwitch:Landroid/widget/RadioGroup;

    const v1, 0x7f0e01c8

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 1082
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V

    goto :goto_0

    .line 1085
    :cond_2
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1086
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V

    goto :goto_0
.end method

.method private updateSimSwitch()V
    .locals 8

    .prologue
    const v7, 0x7f0e01c5

    const v6, 0x7f0b0147

    const v5, 0x7f0e01b8

    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 1092
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1093
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1094
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1095
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1097
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1098
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1099
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v5, :cond_0

    .line 1100
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 1102
    :cond_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1103
    .local v0, lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1104
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1105
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1106
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1107
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1166
    :goto_0
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0e01b7

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-eq v1, v5, :cond_1

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v7, :cond_d

    .line 1169
    :cond_1
    invoke-direct {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V

    .line 1177
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    :goto_1
    return-void

    .line 1108
    :cond_3
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v1

    if-nez v1, :cond_6

    .line 1109
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1110
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1112
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1113
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1114
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0e01c6

    if-ne v1, v2, :cond_4

    .line 1115
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1117
    :cond_4
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v7, :cond_5

    .line 1118
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1120
    :cond_5
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1121
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1122
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1123
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1124
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1125
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1126
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_6
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    invoke-virtual {v1, v3}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getIdleHoursOpen(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 1127
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1128
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1130
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1131
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1132
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0e01c4

    if-ne v1, v2, :cond_7

    .line 1133
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    const v2, 0x7f0e01b7

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 1135
    :cond_7
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v5, :cond_8

    .line 1136
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v7}, Landroid/widget/RadioGroup;->check(I)V

    .line 1138
    :cond_8
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1139
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1140
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1141
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1142
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1143
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1145
    .end local v0           #lp:Landroid/view/ViewGroup$LayoutParams;
    :cond_9
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1146
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1Idle:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1148
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1149
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    invoke-virtual {v1, v4}, Landroid/widget/RadioButton;->setVisibility(I)V

    .line 1150
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0e01c4

    if-ne v1, v2, :cond_a

    .line 1151
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    const v2, 0x7f0e01b7

    invoke-virtual {v1, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 1153
    :cond_a
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0e01c6

    if-ne v1, v2, :cond_b

    .line 1154
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1156
    :cond_b
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, v7, :cond_c

    .line 1157
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v5}, Landroid/widget/RadioGroup;->check(I)V

    .line 1159
    :cond_c
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1160
    .restart local v0       #lp:Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1161
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1162
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 1163
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0146

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 1164
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    invoke-virtual {v1, v0}, Landroid/widget/RadioButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_0

    .line 1170
    :cond_d
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0e01c4

    if-eq v1, v2, :cond_e

    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    const v2, 0x7f0e01c6

    if-ne v1, v2, :cond_f

    .line 1172
    :cond_e
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V

    goto/16 :goto_1

    .line 1174
    :cond_f
    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->setTab(I)V

    goto/16 :goto_1
.end method

.method private updateUI(Z)V
    .locals 20
    .parameter "updateChart"

    .prologue
    .line 795
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_3

    .line 796
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayIdleHoursUsed(I)D

    move-result-wide v10

    .line 797
    .local v10, mTodayUsedStats:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTodayUsed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 799
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthIdleHoursUsed(I)D

    move-result-wide v8

    .line 800
    .local v8, mMonthUsedStats:D
    const-wide/16 v15, 0x0

    cmpg-double v15, v8, v15

    if-gez v15, :cond_0

    .line 801
    const-wide/16 v8, 0x0

    .line 803
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthUsed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 804
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthIdleHoursThreshold(I)J

    move-result-wide v6

    .line 834
    .local v6, mMonthThreshold:J
    :goto_0
    const-string v15, "fengbo"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "tab = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " todayUsed = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Moth = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " Month max = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 839
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDayThreshold(I)J

    move-result-wide v2

    .line 840
    .local v2, mDayThreshold:J
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getMonthFlowWarnPct(I)I

    move-result v14

    .line 841
    .local v14, warnPercent:I
    const/4 v15, -0x1

    if-ne v14, v15, :cond_1

    .line 842
    const/16 v14, 0x5a

    .line 844
    :cond_1
    const-string v15, "lixi"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "##mDayThreshold in updateUI()= "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 858
    const-wide/16 v15, 0x0

    cmp-long v15, v2, v15

    if-nez v15, :cond_8

    .line 859
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_6

    .line 860
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v15

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-eqz v15, :cond_5

    .line 861
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v16

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x403e

    invoke-virtual/range {v15 .. v19}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x4090

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4090

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    .line 881
    :goto_1
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080048

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 882
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f080048

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 883
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficIcon:Landroid/widget/ImageView;

    const v16, 0x7f020084

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 884
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    const v16, 0x7f02026d

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 886
    const-wide/16 v15, 0x0

    cmp-long v15, v15, v6

    if-nez v15, :cond_9

    .line 888
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    const-string v16, "-"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 889
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficPercent:Landroid/widget/TextView;

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 933
    :goto_2
    if-eqz p1, :cond_2

    .line 934
    invoke-direct/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateChart()V

    .line 935
    :cond_2
    return-void

    .line 824
    .end local v2           #mDayThreshold:J
    .end local v6           #mMonthThreshold:J
    .end local v8           #mMonthUsedStats:D
    .end local v10           #mTodayUsedStats:D
    .end local v14           #warnPercent:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficTodayUsed(I)D

    move-result-wide v10

    .line 825
    .restart local v10       #mTodayUsedStats:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTodayUsed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v10, v11}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 826
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthUsed(I)D

    move-result-wide v8

    .line 827
    .restart local v8       #mMonthUsedStats:D
    const-wide/16 v15, 0x0

    cmpg-double v15, v8, v15

    if-gez v15, :cond_4

    .line 828
    const-wide/16 v8, 0x0

    .line 830
    :cond_4
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthUsed:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v8, v9}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mCurrentSim:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficMonthThreshold(I)J

    move-result-wide v6

    .restart local v6       #mMonthThreshold:J
    goto/16 :goto_0

    .line 863
    .restart local v2       #mDayThreshold:J
    .restart local v14       #warnPercent:I
    :cond_5
    const-wide v15, 0x7fefffffffffffffL

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    goto/16 :goto_1

    .line 866
    :cond_6
    const-wide/16 v15, 0x0

    cmp-long v15, v6, v15

    if-eqz v15, :cond_7

    .line 867
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    long-to-double v0, v6

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x403e

    invoke-virtual/range {v15 .. v19}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getDivisionValue(DD)D

    move-result-wide v15

    const-wide/high16 v17, 0x4090

    mul-double v15, v15, v17

    const-wide/high16 v17, 0x4090

    mul-double v15, v15, v17

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    goto/16 :goto_1

    .line 869
    :cond_7
    const-wide v15, 0x7fefffffffffffffL

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    goto/16 :goto_1

    .line 873
    :cond_8
    const-wide/16 v15, 0x400

    mul-long/2addr v15, v2

    const-wide/16 v17, 0x400

    mul-long v15, v15, v17

    long-to-double v15, v15

    move-object/from16 v0, p0

    iput-wide v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->normalMaxStats:D

    goto/16 :goto_1

    .line 895
    :cond_9
    long-to-double v15, v6

    cmpl-double v15, v15, v8

    if-lez v15, :cond_c

    .line 896
    long-to-double v15, v6

    sub-double v4, v15, v8

    .line 897
    .local v4, mMonthLeftStats:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    const v16, 0x7f0a00de

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 898
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    long-to-double v0, v6

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v15, v8, v9, v0, v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getPercentValue(DD)J

    move-result-wide v12

    .line 900
    .local v12, percent:J
    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    if-eqz v15, :cond_a

    move-object/from16 v0, p0

    iget v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTab:I

    const/16 v16, -0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_b

    .line 901
    :cond_a
    int-to-long v15, v14

    cmp-long v15, v12, v15

    if-ltz v15, :cond_b

    .line 902
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08006a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 903
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08006a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 904
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficIcon:Landroid/widget/ImageView;

    const v16, 0x7f02026a

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 905
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    const v16, 0x7f02026b

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 908
    :cond_b
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficPercent:Landroid/widget/TextView;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "%"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 909
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const-wide/16 v16, 0x4e

    mul-long v16, v16, v12

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    add-int/lit16 v0, v0, 0x44c

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 930
    .end local v12           #percent:J
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4, v5}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getTrafficDisplayString(D)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 914
    .end local v4           #mMonthLeftStats:D
    :cond_c
    long-to-double v15, v6

    sub-double v4, v8, v15

    .line 915
    .restart local v4       #mMonthLeftStats:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    const v16, 0x7f0a00df

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(I)V

    .line 916
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficPercent:Landroid/widget/TextView;

    const-string v16, "100%"

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 917
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficIcon:Landroid/widget/ImageView;

    const v16, 0x7f02026a

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 918
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    const v16, 0x7f02026b

    invoke-virtual/range {v15 .. v16}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 919
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    invoke-virtual {v15}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v15

    const/16 v16, 0x2710

    invoke-virtual/range {v15 .. v16}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 926
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08006a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    .line 927
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    const v17, 0x7f08006a

    invoke-virtual/range {v16 .. v17}, Landroid/content/res/Resources;->getColor(I)I

    move-result v16

    invoke-virtual/range {v15 .. v16}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const/16 v8, 0x14

    const/16 v7, 0x8

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 312
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 313
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->requestWindowFeature(I)Z

    .line 314
    const v3, 0x7f030089

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->setContentView(I)V

    .line 316
    const v3, 0x7f0e01d3

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    .line 317
    const v3, 0x7f0e01d2

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    .line 319
    const v3, 0x7f0e01d5

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 320
    .local v2, tip:Landroid/view/View;
    new-instance v3, Lcom/zte/heartyservice/net/NetTrafficActivity$4;

    invoke-direct {v3, p0}, Lcom/zte/heartyservice/net/NetTrafficActivity$4;-><init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 333
    const v3, 0x7f0e01d4

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    .line 334
    invoke-static {}, Lcom/zte/heartyservice/common/utils/XmlParseUtils;->isForeignVersion()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    invoke-virtual {v3, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 336
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeft:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 337
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthLeftPrefix:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 338
    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 339
    const v3, 0x7f0e01d8

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f0a041b

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 451
    :goto_0
    const v3, 0x7f0e01ca

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficImage:Landroid/widget/ImageView;

    .line 452
    const v3, 0x7f0e01cb

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficIcon:Landroid/widget/ImageView;

    .line 453
    const v3, 0x7f0e01cc

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTrafficPercent:Landroid/widget/TextView;

    .line 454
    const v3, 0x7f0e01d0

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mTodayUsed:Landroid/widget/TextView;

    .line 455
    const v3, 0x7f0e01d1

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mMonthUsed:Landroid/widget/TextView;

    .line 458
    const v3, 0x7f0e01d6

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetTrafficChart:Landroid/widget/TextView;

    .line 459
    const v3, 0x7f0e01d7

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mWlanTrafficChart:Landroid/widget/TextView;

    .line 460
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020303

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 461
    .local v0, drawable1:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0, v6, v6, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 462
    invoke-virtual {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f020304

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 463
    .local v1, drawable2:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1, v6, v6, v8, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 464
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetTrafficChart:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 465
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mWlanTrafficChart:Landroid/widget/TextView;

    invoke-virtual {v3, v1, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 468
    const v3, 0x7f0e01d9

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->chartLayout:Landroid/widget/LinearLayout;

    .line 470
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficUtils;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficUtils;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    .line 471
    invoke-static {p0}, Lcom/zte/heartyservice/net/NetTrafficSettingDatas;->getInstance(Landroid/content/Context;)Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    move-result-object v3

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mNetSettingDatas:Lcom/zte/heartyservice/net/NetTrafficSettingDatas;

    .line 474
    invoke-static {}, Lcom/zte/heartyservice/common/utils/StandardInterfaceUtils;->hasSystemPermission()Z

    move-result v3

    if-nez v3, :cond_0

    .line 475
    const v3, 0x7f0e01cf

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 476
    const v3, 0x7f0e01ce

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 480
    :cond_0
    const v3, 0x7f0e01c7

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeSwitch:Landroid/widget/RadioGroup;

    .line 481
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeSwitch:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataTimeListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 482
    const v3, 0x7f0e01cd

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mDataQuota:Landroid/widget/TextView;

    .line 483
    const v3, 0x7f0e01c4

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0Idle:Landroid/widget/RadioButton;

    .line 484
    const v3, 0x7f0e01c6

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1Idle:Landroid/widget/RadioButton;

    .line 485
    const v3, 0x7f0e01b7

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim0:Landroid/widget/RadioButton;

    .line 486
    const v3, 0x7f0e01b8

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1:Landroid/widget/RadioButton;

    .line 487
    const v3, 0x7f0e01c5

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioButton;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSim1_mid:Landroid/widget/RadioButton;

    .line 491
    const v3, 0x7f0e01b6

    invoke-virtual {p0, v3}, Lcom/zte/heartyservice/net/NetTrafficActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RadioGroup;

    iput-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    .line 492
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->initMSimState()V

    .line 493
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimSwitch:Landroid/widget/RadioGroup;

    iget-object v4, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mSimListener:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v3, v4}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 495
    return-void

    .line 341
    .end local v0           #drawable1:Landroid/graphics/drawable/Drawable;
    .end local v1           #drawable2:Landroid/graphics/drawable/Drawable;
    :cond_1
    iget-object v3, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->adjustBtn:Landroid/widget/Button;

    new-instance v4, Lcom/zte/heartyservice/net/NetTrafficActivity$5;

    invoke-direct {v4, p0}, Lcom/zte/heartyservice/net/NetTrafficActivity$5;-><init>(Lcom/zte/heartyservice/net/NetTrafficActivity;)V

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 0

    .prologue
    .line 572
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 573
    return-void
.end method

.method protected onPause()V
    .locals 1

    .prologue
    .line 566
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 567
    iget-object v0, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 568
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 543
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 544
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mUtils:Lcom/zte/heartyservice/net/NetTrafficUtils;

    invoke-virtual {v1}, Lcom/zte/heartyservice/net/NetTrafficUtils;->refreshNetStats()V

    .line 546
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateDTimeSwitch()V

    .line 547
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateSimSwitch()V

    .line 549
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateUI(Z)V

    .line 550
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.zte.heartyservice.TRAFFIC_CORRECTION_FINISH"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 551
    .local v0, filter:Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/zte/heartyservice/net/NetTrafficActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 559
    invoke-direct {p0}, Lcom/zte/heartyservice/net/NetTrafficActivity;->updateAdjustBtn()V

    .line 561
    invoke-static {}, Lcom/zte/heartyservice/main/HeartyServiceApp;->getDefault()Lcom/zte/heartyservice/main/HeartyServiceApp;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/zte/heartyservice/main/HeartyServiceApp;->check(I)V

    .line 562
    return-void
.end method

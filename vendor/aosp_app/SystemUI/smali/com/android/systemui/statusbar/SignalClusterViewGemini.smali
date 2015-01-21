.class public Lcom/android/systemui/statusbar/SignalClusterViewGemini;
.super Landroid/widget/LinearLayout;
.source "SignalClusterViewGemini.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/NetworkControllerGemini$SignalCluster;


# static fields
.field static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "SignalClusterViewGemini"


# instance fields
.field private mDataActivity:[Landroid/widget/ImageView;

.field private mDataConnectionGroup:Landroid/view/ViewGroup;

.field private mDataNetType:[Lcom/mediatek/systemui/ext/NetworkType;

.field private mDataType:[Landroid/widget/ImageView;

.field private mFlightMode:Landroid/view/View;

.field private mGeminiSimNum:I

.field private mIsAirplaneMode:Z

.field private mIsRoamingGGMode:Z

.field private mMobile:[Landroid/widget/ImageView;

.field private mMobile2:[Landroid/widget/ImageView;

.field private mMobileActivity:[Landroid/widget/ImageView;

.field private mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mMobileDescription:[Ljava/lang/String;

.field private mMobileGroup:[Landroid/view/ViewGroup;

.field private mMobileNetType:[Landroid/widget/ImageView;

.field private mMobileRoam:[Landroid/widget/ImageView;

.field private mMobileSlotIndicator:[Landroid/widget/ImageView;

.field private mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mMobileStrengthIdNum:I

.field private mMobileType:[Landroid/widget/ImageView;

.field private mMobileTypeDescription:[Ljava/lang/String;

.field private mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mMobileVisible:[Z

.field private mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

.field private mNeedShowOfflineSimId:I

.field private mOfflineIcon:[Landroid/widget/ImageView;

.field private mRoaming:[Z

.field private mRoamingId:[I

.field private mSIMColorId:[I

.field private mShowSimIndicator:[Z

.field private mSignalClusterCombo:[Landroid/view/ViewGroup;

.field private mSignalNetworkType:[Landroid/widget/ImageView;

.field private mSimIndicatorResource:[I

.field private mSpacer:[Landroid/view/View;

.field private mWifi:Landroid/widget/ImageView;

.field private mWifiActivity:Landroid/widget/ImageView;

.field private mWifiActivityId:Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mWifiDescription:Ljava/lang/String;

.field private mWifiGroup:Landroid/view/ViewGroup;

.field private mWifiStrengthId:Lcom/mediatek/systemui/ext/IconIdWrapper;

.field private mWifiVisible:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/SignalClusterViewGemini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/SignalClusterViewGemini;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 123
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 64
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsAirplaneMode:Z

    .line 65
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsRoamingGGMode:Z

    .line 67
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    .line 68
    new-instance v2, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v2}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiStrengthId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 69
    new-instance v2, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v2}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivityId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 110
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->GEMINI_SIM_NUM:I

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    .line 111
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthIdNum:I

    .line 112
    iput v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mNeedShowOfflineSimId:I

    .line 125
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mRoaming:[Z

    .line 126
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mRoamingId:[I

    .line 127
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileDescription:[Ljava/lang/String;

    .line 128
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeDescription:[Ljava/lang/String;

    .line 129
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    .line 130
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    .line 131
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileGroup:[Landroid/view/ViewGroup;

    .line 132
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    .line 133
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile:[Landroid/widget/ImageView;

    .line 134
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    .line 135
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    .line 136
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    .line 137
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSpacer:[Landroid/view/View;

    .line 138
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    .line 139
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Lcom/mediatek/systemui/ext/NetworkType;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataNetType:[Lcom/mediatek/systemui/ext/NetworkType;

    .line 140
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileNetType:[Landroid/widget/ImageView;

    .line 141
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSIMColorId:[I

    .line 142
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 143
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 144
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [[Lcom/mediatek/systemui/ext/IconIdWrapper;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 145
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mShowSimIndicator:[Z

    .line 146
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [I

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSimIndicatorResource:[I

    .line 147
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Z

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileVisible:[Z

    .line 148
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    .line 149
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    .line 150
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    new-array v2, v2, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mOfflineIcon:[Landroid/widget/ImageView;

    .line 152
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    if-ge v0, v2, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthIdNum:I

    new-array v3, v3, [Lcom/mediatek/systemui/ext/IconIdWrapper;

    aput-object v3, v2, v0

    .line 154
    const/4 v1, 0x0

    .local v1, j:I
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthIdNum:I

    if-ge v1, v2, :cond_0

    .line 155
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v2, v2, v0

    new-instance v3, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v3, v2, v1

    .line 154
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 157
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    new-instance v3, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v3, v2, v0

    .line 158
    iget-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    new-instance v3, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v3, v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    aput-object v3, v2, v0

    .line 152
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 160
    .end local v1           #j:I
    :cond_1
    return-void
.end method

.method private isSimValid(I)Z
    .locals 3
    .parameter "simId"

    .prologue
    const/4 v1, 0x1

    .line 592
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSimIndicatorStateGemini(I)I

    move-result v0

    .line 593
    .local v0, state:I
    const/4 v2, 0x2

    if-eq v2, v0, :cond_0

    const/4 v2, 0x4

    if-eq v2, v0, :cond_0

    const/4 v2, 0x3

    if-eq v2, v0, :cond_0

    if-eq v1, v0, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private shouldMobileGroupVisible(I)Z
    .locals 4
    .parameter "slotId"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 548
    invoke-static {p1}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getMobileGroupVisible()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    move v1, v2

    .line 558
    :cond_1
    :goto_0
    return v1

    .line 550
    :cond_2
    if-nez p1, :cond_1

    .line 551
    const/4 v0, 0x1

    .local v0, i:I
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    if-ge v0, v3, :cond_3

    .line 552
    invoke-static {v0}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 551
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v1, v2

    .line 556
    goto :goto_0
.end method

.method private shouldShowOffline()Z
    .locals 11

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 563
    const/4 v4, 0x0

    .line 564
    .local v4, showOffline:Z
    iget-object v9, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v9}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMInfoList(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    .line 565
    .local v5, simInfos:Ljava/util/List;,"Ljava/util/List<Lcom/mediatek/telephony/SimInfoManager$SimInfoRecord;>;"
    if-eqz v5, :cond_2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_2

    move v6, v7

    .line 566
    .local v6, twoSimInsert:Z
    :goto_0
    iget-boolean v9, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsRoamingGGMode:Z

    if-eqz v9, :cond_1

    if-eqz v6, :cond_1

    .line 567
    invoke-static {}, Lcom/android/systemui/statusbar/util/SIMHelper;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 568
    .local v3, iTelephony:Lcom/android/internal/telephony/ITelephony;
    const/4 v0, 0x0

    .line 569
    .local v0, callState1:I
    const/4 v1, 0x0

    .line 571
    .local v1, callState2:I
    const/4 v9, 0x0

    :try_start_0
    invoke-interface {v3, v9}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I

    move-result v0

    .line 573
    const/4 v9, 0x1

    invoke-interface {v3, v9}, Lcom/android/internal/telephony/ITelephony;->getCallStateGemini(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 578
    :goto_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 580
    :cond_0
    const/4 v4, 0x1

    .line 581
    if-eqz v0, :cond_3

    .line 582
    iput v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mNeedShowOfflineSimId:I

    .line 588
    .end local v0           #callState1:I
    .end local v1           #callState2:I
    .end local v3           #iTelephony:Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :goto_2
    return v4

    .end local v6           #twoSimInsert:Z
    :cond_2
    move v6, v8

    .line 565
    goto :goto_0

    .line 575
    .restart local v0       #callState1:I
    .restart local v1       #callState2:I
    .restart local v3       #iTelephony:Lcom/android/internal/telephony/ITelephony;
    .restart local v6       #twoSimInsert:Z
    :catch_0
    move-exception v2

    .line 576
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1

    .line 584
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    iput v8, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mNeedShowOfflineSimId:I

    goto :goto_2
.end method


# virtual methods
.method public apply()V
    .locals 15

    .prologue
    const v14, 0x7f02022b

    const/4 v13, 0x1

    const/4 v12, 0x0

    const/16 v8, 0x8

    const/4 v9, 0x0

    .line 316
    const/4 v3, 0x0

    .line 317
    .local v3, needShowOffline:Z
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 319
    invoke-direct {p0}, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->shouldShowOffline()Z

    move-result v3

    .line 320
    const-string v7, "SignalClusterViewGemini"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apply() For CT needShowOffline = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mIsRoamingGGMode = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsRoamingGGMode:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mNeedShowOfflineSimId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mNeedShowOfflineSimId:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_0
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    .line 325
    const-string v7, "SignalClusterViewGemini"

    const-string v8, "apply(), mWifiGroup is null, return"

    invoke-static {v7, v8}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    :goto_0
    return-void

    .line 329
    :cond_1
    const-string v7, "SignalClusterViewGemini"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apply(), mWifiVisible is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    if-eqz v7, :cond_f

    .line 331
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 332
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiStrengthId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_d

    .line 333
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifi:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiStrengthId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 337
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivityId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_e

    .line 338
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivity:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivityId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 342
    :goto_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiDescription:Ljava/lang/String;

    invoke-virtual {v7, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 352
    :goto_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_4
    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    if-ge v0, v7, :cond_29

    .line 353
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->shouldMobileGroupVisible(I)Z

    move-result v2

    .line 354
    .local v2, mShouldMobileGroupVisible:Z
    const-string v7, "SignalClusterViewGemini"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apply(), slotId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mMobileVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileVisible:[Z

    aget-boolean v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mShouldMobileGroupVisible="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileVisible:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_27

    if-eqz v2, :cond_27

    .line 356
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 357
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mRoaming:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_10

    .line 358
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mRoamingId:[I

    aget v10, v10, v0

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 359
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 364
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthNullIconGemini(I)I

    move-result v10

    if-eq v7, v10, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-ne v7, v14, :cond_3

    .line 366
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 369
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 370
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 378
    :goto_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 379
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v13

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_13

    .line 380
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    aget-object v10, v10, v13

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 389
    :goto_7
    sget-object v7, Lcom/mediatek/systemui/ext/NetworkType;->Type_1X3G:Lcom/mediatek/systemui/ext/NetworkType;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataNetType:[Lcom/mediatek/systemui/ext/NetworkType;

    aget-object v10, v10, v0

    if-eq v7, v10, :cond_4

    .line 390
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 392
    :cond_4
    const-string v7, "SignalClusterViewGemini"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apply(), slotId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mRoaming="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mRoaming:[Z

    aget-boolean v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mMobileActivityId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mMobileTypeId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v0

    invoke-virtual {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mMobileStrengthId[0] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v0

    aget-object v11, v11, v9

    invoke-virtual {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " mMobileStrengthId[1] = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v11, v11, v0

    aget-object v11, v11, v13

    invoke-virtual {v11}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_16

    .line 399
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v7

    if-eqz v7, :cond_15

    .line 401
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 419
    :goto_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_1a

    .line 420
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v7

    if-eqz v7, :cond_19

    .line 422
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 442
    :goto_9
    invoke-static {v0}, Lcom/android/systemui/statusbar/util/SIMHelper;->isSimInserted(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->isSimValid(I)Z

    move-result v7

    if-eqz v7, :cond_1f

    .line 443
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7, v0}, Lcom/android/systemui/statusbar/util/SIMHelper;->getSIMColorIdBySlot(Landroid/content/Context;I)I

    move-result v6

    .line 444
    .local v6, simColorId:I
    const/4 v7, -0x1

    if-le v6, v7, :cond_7

    const/4 v7, 0x4

    if-ge v6, v7, :cond_7

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataNetType:[Lcom/mediatek/systemui/ext/NetworkType;

    aget-object v7, v7, v0

    if-eqz v7, :cond_7

    .line 445
    new-instance v4, Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-direct {v4, v9}, Lcom/mediatek/systemui/ext/IconIdWrapper;-><init>(I)V

    .line 446
    .local v4, resId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataNetType:[Lcom/mediatek/systemui/ext/NetworkType;

    aget-object v10, v10, v0

    invoke-interface {v7, v10, v6}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getDataNetworkTypeIconGemini(Lcom/mediatek/systemui/ext/NetworkType;I)I

    move-result v1

    .line 448
    .local v1, id:I
    const/4 v7, -0x1

    if-eq v1, v7, :cond_5

    .line 449
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setResources(Landroid/content/res/Resources;)V

    .line 450
    invoke-virtual {v4, v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->setIconId(I)V

    .line 452
    :cond_5
    const-string v7, "SignalClusterViewGemini"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apply(), slot="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", mDataNetType="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataNetType:[Lcom/mediatek/systemui/ext/NetworkType;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " resId= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " simColorId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    if-eqz v7, :cond_1d

    .line 455
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 463
    :goto_a
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 464
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthNullIconGemini(I)I

    move-result v10

    if-eq v7, v10, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-ne v7, v14, :cond_7

    .line 466
    :cond_6
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 473
    .end local v1           #id:I
    .end local v4           #resId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v6           #simColorId:I
    :cond_7
    :goto_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    iget-object v10, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v10}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v10

    invoke-interface {v10, v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthNullIconGemini(I)I

    move-result v10

    if-eq v7, v10, :cond_8

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-ne v7, v14, :cond_20

    .line 475
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    const/4 v10, 0x4

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 479
    :goto_c
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeDescription:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileDescription:[Ljava/lang/String;

    aget-object v11, v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 480
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mShowSimIndicator:[Z

    aget-boolean v7, v7, v0

    if-eqz v7, :cond_21

    .line 481
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSimIndicatorResource:[I

    aget v10, v10, v0

    invoke-virtual {v7, v10}, Landroid/view/View;->setBackgroundResource(I)V

    .line 485
    :goto_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    const/4 v10, 0x3

    invoke-virtual {v7, v9, v9, v9, v10}, Landroid/view/View;->setPadding(IIII)V

    .line 487
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v7

    if-eqz v7, :cond_24

    .line 489
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 490
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 491
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    aget-object v10, v7, v0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    if-eqz v7, :cond_9

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-eqz v7, :cond_22

    :cond_9
    move v7, v9

    :goto_e
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 492
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 493
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsRoamingGGMode:Z

    if-eqz v7, :cond_23

    if-eqz v3, :cond_23

    .line 494
    iget v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mNeedShowOfflineSimId:I

    if-ne v0, v7, :cond_a

    .line 495
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 496
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 497
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 498
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mOfflineIcon:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 521
    :cond_a
    :goto_f
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthSearchingIconGemini(I)I

    move-result v4

    .line 522
    .local v4, resId:I
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7, v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalStrengthNullIconGemini(I)I

    move-result v5

    .line 523
    .local v5, resId1:I
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-eq v4, v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-eq v5, v7, :cond_b

    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-ne v7, v14, :cond_c

    .line 525
    :cond_b
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 531
    .end local v4           #resId:I
    .end local v5           #resId1:I
    :cond_c
    :goto_10
    const-string v7, "SignalClusterViewGemini"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "apply(). mIsAirplaneMode is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsAirplaneMode:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsAirplaneMode:Z

    if-eqz v7, :cond_28

    .line 533
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 534
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mFlightMode:Landroid/view/View;

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    .line 352
    :goto_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    .line 335
    .end local v0           #i:I
    .end local v2           #mShouldMobileGroupVisible:Z
    :cond_d
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifi:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiStrengthId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 340
    :cond_e
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivity:Landroid/widget/ImageView;

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivityId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    .line 344
    :cond_f
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 361
    .restart local v0       #i:I
    .restart local v2       #mShouldMobileGroupVisible:Z
    :cond_10
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5

    .line 372
    :cond_11
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v9

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-nez v7, :cond_12

    .line 373
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_6

    .line 375
    :cond_12
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    aget-object v10, v10, v9

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_6

    .line 382
    :cond_13
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    aget-object v7, v7, v13

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-nez v7, :cond_14

    .line 383
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_7

    .line 385
    :cond_14
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    aget-object v10, v10, v13

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_7

    .line 404
    :cond_15
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 407
    :cond_16
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-nez v7, :cond_17

    .line 408
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 409
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_8

    .line 411
    :cond_17
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v7

    if-eqz v7, :cond_18

    .line 413
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 415
    :cond_18
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_8

    .line 425
    :cond_19
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 429
    :cond_1a
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v7, v7, v0

    invoke-virtual {v7}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-nez v7, :cond_1b

    .line 430
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 431
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_9

    .line 433
    :cond_1b
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataConnectInTheFront()Z

    move-result v7

    if-eqz v7, :cond_1c

    .line 435
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 437
    :cond_1c
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    iget-object v10, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v10, v10, v0

    invoke-virtual {v10}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_9

    .line 457
    .restart local v1       #id:I
    .local v4, resId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .restart local v6       #simColorId:I
    :cond_1d
    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v7

    if-nez v7, :cond_1e

    .line 458
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_a

    .line 460
    :cond_1e
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_a

    .line 470
    .end local v1           #id:I
    .end local v4           #resId:Lcom/mediatek/systemui/ext/IconIdWrapper;
    .end local v6           #simColorId:I
    :cond_1f
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 471
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_b

    .line 477
    :cond_20
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_c

    .line 483
    :cond_21
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    invoke-virtual {v7, v12}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_d

    :cond_22
    move v7, v8

    .line 491
    goto/16 :goto_e

    .line 501
    :cond_23
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mOfflineIcon:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 502
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_f

    .line 505
    :cond_24
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 506
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 507
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 508
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 511
    iget-object v7, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v7

    invoke-interface {v7}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->supportDataTypeAlwaysDisplayWhileOn()Z

    move-result v7

    if-eqz v7, :cond_25

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->isSimValid(I)Z

    move-result v7

    if-eqz v7, :cond_25

    .line 514
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v7, v7, v0

    invoke-virtual {v7, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    .line 516
    :cond_25
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aget-object v10, v7, v0

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    if-nez v7, :cond_26

    move v7, v9

    :goto_12
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_f

    :cond_26
    move v7, v8

    goto :goto_12

    .line 528
    :cond_27
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    aget-object v7, v7, v0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_10

    .line 536
    :cond_28
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mFlightMode:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_11

    .line 540
    .end local v2           #mShouldMobileGroupVisible:Z
    :cond_29
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    if-eqz v7, :cond_2a

    .line 541
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSpacer:[Landroid/view/View;

    aget-object v7, v7, v9

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 543
    :cond_2a
    iget-object v7, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSpacer:[Landroid/view/View;

    aget-object v7, v7, v9

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 285
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 288
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileVisible:[Z

    aget-boolean v0, v0, v2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityRecord;->getText()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileGroup:[Landroid/view/ViewGroup;

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 171
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 173
    const v3, 0x7f08001b

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    .line 174
    const v3, 0x7f08001c

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifi:Landroid/widget/ImageView;

    .line 175
    const v3, 0x7f08001d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivity:Landroid/widget/ImageView;

    .line 177
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile:[Landroid/widget/ImageView;

    const v3, 0x7f080030

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 178
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    const v3, 0x7f080031

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 179
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileGroup:[Landroid/view/ViewGroup;

    const v3, 0x7f08002f

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v6

    .line 180
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    const v3, 0x7f080034

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 181
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    const v3, 0x7f080032

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 182
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    const v3, 0x7f080033

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 183
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSpacer:[Landroid/view/View;

    const v4, 0x7f08001e

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v6

    .line 184
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    const v3, 0x7f080035

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 185
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    const v3, 0x7f08002d

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v6

    .line 186
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    const v3, 0x7f08002e

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 187
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    const v3, 0x7f080021

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 188
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    const v3, 0x7f080022

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 189
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mOfflineIcon:[Landroid/widget/ImageView;

    const v3, 0x7f08002c

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v6

    .line 191
    const/4 v0, 0x1

    .local v0, i:I
    :goto_0
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    if-ge v0, v3, :cond_0

    .line 192
    add-int/lit8 v1, v0, 0x1

    .line 193
    .local v1, k:I
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_signal_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 194
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_signal2_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 195
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileGroup:[Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_combo_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 196
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_inout_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 197
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_type_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 198
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_roaming_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 199
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSpacer:[Landroid/view/View;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spacer_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v0

    .line 200
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mobile_slot_indicator_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 201
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalClusterCombo:[Landroid/view/ViewGroup;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "signal_cluster_combo_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    aput-object v3, v4, v0

    .line 202
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSignalNetworkType:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "network_type_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 203
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_type_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 204
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data_inout_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 205
    iget-object v4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mOfflineIcon:[Landroid/widget/ImageView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "offline_"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    aput-object v3, v4, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 208
    .end local v1           #k:I
    :cond_0
    const v3, 0x7f080057

    invoke-virtual {p0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mFlightMode:Landroid/view/View;

    .line 210
    const/4 v0, 0x0

    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    if-ge v0, v3, :cond_2

    .line 211
    iget-object v3, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getSignalIndicatorIconGemini(I)I

    move-result v2

    .line 212
    .local v2, resId:I
    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 213
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    iget-object v4, p0, Landroid/view/View;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/mediatek/systemui/ext/PluginFactory;->getStatusBarPlugin(Landroid/content/Context;)Lcom/mediatek/systemui/ext/IStatusBarPlugin;

    move-result-object v4

    invoke-interface {v4}, Lcom/mediatek/systemui/ext/IStatusBarPlugin;->getPluginResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 214
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 210
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 216
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 217
    iget-object v3, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileSlotIndicator:[Landroid/widget/ImageView;

    aget-object v3, v3, v0

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 220
    .end local v2           #resId:I
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->apply()V

    .line 221
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 225
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiGroup:Landroid/view/ViewGroup;

    .line 226
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifi:Landroid/widget/ImageView;

    .line 227
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivity:Landroid/widget/ImageView;

    .line 228
    iput-object v2, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataConnectionGroup:Landroid/view/ViewGroup;

    .line 230
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 231
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileGroup:[Landroid/view/ViewGroup;

    aput-object v2, v1, v0

    .line 232
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 233
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 234
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 235
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSpacer:[Landroid/view/View;

    aput-object v2, v1, v0

    .line 236
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileRoam:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileNetType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 238
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobile2:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 239
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataType:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 240
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataActivity:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 241
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mOfflineIcon:[Landroid/widget/ImageView;

    aput-object v2, v1, v0

    .line 230
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 244
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 245
    return-void
.end method

.method public setDataNetType3G(ILcom/mediatek/systemui/ext/NetworkType;)V
    .locals 3
    .parameter "slotId"
    .parameter "dataNetType"

    .prologue
    .line 310
    const-string v0, "SignalClusterViewGemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataNetType3G("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), dataNetType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mDataNetType:[Lcom/mediatek/systemui/ext/NetworkType;

    aput-object p2, v0, p1

    .line 312
    return-void
.end method

.method public setIsAirplaneMode(Z)V
    .locals 3
    .parameter "is"

    .prologue
    .line 272
    const-string v0, "SignalClusterViewGemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsAirplaneMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsAirplaneMode:Z

    .line 274
    return-void
.end method

.method public setIsRoamingGGMode(Z)V
    .locals 3
    .parameter "is"

    .prologue
    .line 277
    const-string v0, "SignalClusterViewGemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setIsRoamingGGMode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mIsRoamingGGMode:Z

    .line 279
    return-void
.end method

.method public setMobileDataIndicators(IZ[Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "slotId"
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "typeIcon"
    .parameter "contentDescription"
    .parameter "typeContentDescription"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 259
    const-string v0, "SignalClusterViewGemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMobileDataIndicators("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", strengthIcon[0] ~ [1] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v3

    invoke-virtual {v2}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ~ "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p3, v4

    invoke-virtual {v2}, Lcom/mediatek/systemui/ext/IconIdWrapper;->getIconId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileVisible:[Z

    aput-boolean p2, v0, p1

    .line 263
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v0, v0, p1

    aget-object v1, p3, v3

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v1

    aput-object v1, v0, v3

    .line 264
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileStrengthId:[[Lcom/mediatek/systemui/ext/IconIdWrapper;

    aget-object v0, v0, p1

    aget-object v1, p3, v4

    invoke-virtual {v1}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v1

    aput-object v1, v0, v4

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileActivityId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {p4}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v1

    aput-object v1, v0, p1

    .line 266
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeId:[Lcom/mediatek/systemui/ext/IconIdWrapper;

    invoke-virtual {p5}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v1

    aput-object v1, v0, p1

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileDescription:[Ljava/lang/String;

    aput-object p6, v0, p1

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mMobileTypeDescription:[Ljava/lang/String;

    aput-object p7, v0, p1

    .line 269
    return-void
.end method

.method public setNetworkControllerGemini(Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;)V
    .locals 0
    .parameter "nc"

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mNC:Lcom/android/systemui/statusbar/policy/NetworkControllerGemini;

    .line 167
    return-void
.end method

.method public setRoamingFlagandResource([Z[I)V
    .locals 4
    .parameter "roaming"
    .parameter "roamingId"

    .prologue
    .line 295
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mGeminiSimNum:I

    if-ge v0, v1, :cond_0

    .line 296
    const-string v1, "SignalClusterViewGemini"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRoamingFlagandResource("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "), roaming="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-boolean v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", roamingId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p2, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mRoaming:[Z

    aget-boolean v2, p1, v0

    aput-boolean v2, v1, v0

    .line 298
    iget-object v1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mRoamingId:[I

    aget v2, p2, v0

    aput v2, v1, v0

    .line 295
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    :cond_0
    return-void
.end method

.method public setShowSimIndicator(IZI)V
    .locals 3
    .parameter "slotId"
    .parameter "showSimIndicator"
    .parameter "simIndicatorResource"

    .prologue
    .line 303
    const-string v0, "SignalClusterViewGemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setShowSimIndicator("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), showSimIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " simIndicatorResource = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mShowSimIndicator:[Z

    aput-boolean p2, v0, p1

    .line 306
    iget-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mSimIndicatorResource:[I

    aput p3, v0, p1

    .line 307
    return-void
.end method

.method public setWifiIndicators(ZLcom/mediatek/systemui/ext/IconIdWrapper;Lcom/mediatek/systemui/ext/IconIdWrapper;Ljava/lang/String;)V
    .locals 3
    .parameter "visible"
    .parameter "strengthIcon"
    .parameter "activityIcon"
    .parameter "contentDescription"

    .prologue
    .line 249
    const-string v0, "SignalClusterViewGemini"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setWifiIndicators, visible="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", strengthIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", activityIcon="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", contentDescription="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiVisible:Z

    .line 252
    invoke-virtual {p2}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiStrengthId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 253
    invoke-virtual {p3}, Lcom/mediatek/systemui/ext/IconIdWrapper;->clone()Lcom/mediatek/systemui/ext/IconIdWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiActivityId:Lcom/mediatek/systemui/ext/IconIdWrapper;

    .line 254
    iput-object p4, p0, Lcom/android/systemui/statusbar/SignalClusterViewGemini;->mWifiDescription:Ljava/lang/String;

    .line 255
    return-void
.end method

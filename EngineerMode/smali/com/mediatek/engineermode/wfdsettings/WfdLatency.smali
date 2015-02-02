.class public Lcom/mediatek/engineermode/wfdsettings/WfdLatency;
.super Landroid/app/Activity;
.source "WfdLatency.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EM/WFD_LATENCY"


# instance fields
.field private mCapabilityStr:Ljava/lang/String;

.field private mCapabilityTv:Landroid/widget/TextView;

.field private mCbProfiling:Landroid/widget/CheckBox;

.field mHandler:Landroid/os/Handler;

.field private mLatencyStr:Ljava/lang/String;

.field private mLatencyTv:Landroid/widget/TextView;

.field private mObserver:Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;

.field private mProfilingInfo:I

.field private mWifiInfoStr:Ljava/lang/String;

.field private mWifiInfoTv:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 54
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 57
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityTv:Landroid/widget/TextView;

    .line 58
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoTv:Landroid/widget/TextView;

    .line 59
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyTv:Landroid/widget/TextView;

    .line 60
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    .line 66
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityStr:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoStr:Ljava/lang/String;

    .line 77
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyStr:Ljava/lang/String;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    .line 89
    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mObserver:Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;

    .line 198
    new-instance v0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$2;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$2;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mHandler:Landroid/os/Handler;

    .line 250
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    return v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    iput p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setProfilingInfo(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->updateOtherInfo()V

    return-void
.end method

.method private registerContentObserver()V
    .locals 4

    .prologue
    .line 218
    new-instance v1, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;

    iget-object v2, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mObserver:Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;

    .line 219
    const-string v1, "wifi_display_wfd_latency"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 220
    .local v0, mUri:Landroid/net/Uri;
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mObserver:Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 221
    return-void
.end method

.method private setCapabilityInfo()V
    .locals 4

    .prologue
    .line 136
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_chosen_capability"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityStr:Ljava/lang/String;

    .line 137
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 138
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityTv:Landroid/widget/TextView;

    const-string v2, "Audio: \nVideo: \nResolution/Frame rate:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    return-void

    .line 142
    :cond_0
    const-string v1, "EM/WFD_LATENCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Chosen capability info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityStr:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, strA:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 146
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Audio: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nVideo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nResolution/Frame rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 151
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityTv:Landroid/widget/TextView;

    const-string v2, "Audio: \nVideo: \nResolution/Frame rate:"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setProfilingInfo(I)V
    .locals 3
    .parameter "state"

    .prologue
    .line 130
    const-string v0, "EM/WFD_LATENCY"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setProfilingInfo "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    iput p1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    .line 132
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_latency_profiling"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 133
    return-void
.end method

.method private updateOtherInfo()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wifi_info"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoStr:Ljava/lang/String;

    .line 159
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoStr:Ljava/lang/String;

    if-nez v1, :cond_0

    .line 160
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoTv:Landroid/widget/TextView;

    const-string v2, "WFD channel id: \nSurrounding AP num: \nWifi score: \nWifi data rate: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    :goto_0
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wfd_latency"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyStr:Ljava/lang/String;

    .line 183
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyStr:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 184
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyTv:Landroid/widget/TextView;

    const-string v2, "Latency(avg): "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    :goto_1
    return-void

    .line 165
    :cond_0
    const-string v1, "EM/WFD_LATENCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update wifi info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoStr:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 168
    .local v0, strA:[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 169
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WFD channel id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nSurrounding AP num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nWifi score: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\nWifi data rate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 175
    :cond_1
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoTv:Landroid/widget/TextView;

    const-string v2, "WFD channel id: \nSurrounding AP num: \nWifi score: \nWifi data rate: "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 186
    .end local v0           #strA:[Ljava/lang/String;
    :cond_2
    const-string v1, "EM/WFD_LATENCY"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update latency info: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyStr:Ljava/lang/String;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 189
    .restart local v0       #strA:[Ljava/lang/String;
    array-length v1, v0

    if-ne v1, v5, :cond_3

    .line 190
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latency(avg): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 193
    :cond_3
    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyTv:Landroid/widget/TextView;

    const-string v2, "Latency(avg): "

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030096

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 96
    const v0, 0x7f0b0476

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCapabilityTv:Landroid/widget/TextView;

    .line 97
    const v0, 0x7f0b0478

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mWifiInfoTv:Landroid/widget/TextView;

    .line 98
    const v0, 0x7f0b047a

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mLatencyTv:Landroid/widget/TextView;

    .line 100
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setCapabilityInfo()V

    .line 102
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->updateOtherInfo()V

    .line 104
    invoke-direct {p0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->registerContentObserver()V

    .line 106
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_latency_profiling"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    .line 108
    const v0, 0x7f0b047b

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    .line 109
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 111
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setProfilingInfo(I)V

    .line 117
    :goto_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency$1;-><init>(Lcom/mediatek/engineermode/wfdsettings/WfdLatency;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void

    .line 113
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 114
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setProfilingInfo(I)V

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 247
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mObserver:Lcom/mediatek/engineermode/wfdsettings/WfdLatency$WfdContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 248
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 249
    return-void
.end method

.method protected onRestart()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 232
    const-string v0, "EM/WFD_LATENCY"

    const-string v1, "onRestart"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_latency_profiling"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    .line 235
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    if-eq v0, v3, :cond_0

    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 237
    invoke-direct {p0, v3}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setProfilingInfo(I)V

    .line 242
    :goto_0
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 243
    return-void

    .line 239
    :cond_1
    iget-object v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mCbProfiling:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 240
    invoke-direct {p0, v2}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setProfilingInfo(I)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 225
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 226
    const-string v0, "EM/WFD_LATENCY"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/mediatek/engineermode/Elog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    iget v0, p0, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->mProfilingInfo:I

    add-int/lit8 v0, v0, 0x2

    invoke-direct {p0, v0}, Lcom/mediatek/engineermode/wfdsettings/WfdLatency;->setProfilingInfo(I)V

    .line 228
    return-void
.end method

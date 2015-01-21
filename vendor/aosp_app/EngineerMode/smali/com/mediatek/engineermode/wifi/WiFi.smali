.class public Lcom/mediatek/engineermode/wifi/WiFi;
.super Landroid/app/Activity;
.source "WiFi.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final BIT_16:I = 0x10

.field private static final BIT_8:I = 0x8

.field private static final DIALOG_WIFI_ERROR:I = 0x3

.field private static final DIALOG_WIFI_FAIL:I = 0x2

.field private static final DIALOG_WIFI_INIT:I = 0x0

.field private static final DIALOG_WIFI_WARN:I = 0x1

.field private static final FUNC_INDEX_VERSION:J = 0x2fL

.field private static final HANDLER_EVENT_INIT:I = 0x11

.field private static final ITEM_INDEX_0:I = 0x0

.field private static final ITEM_INDEX_1:I = 0x1

.field private static final ITEM_INDEX_2:I = 0x2

.field private static final ITEM_INDEX_3:I = 0x3

.field private static final ITEM_INDEX_4:I = 0x4

.field protected static final KEY_CHIP_ID:Ljava/lang/String; = "WiFiChipID"

.field private static final KEY_PROP_CTIA:Ljava/lang/String; = "mediatek.wlan.ctia"

.field private static final KEY_PROP_WPAWPA2:Ljava/lang/String; = "persist.radio.wifi.wpa2wpaalone"

.field private static final KEY_PROP_WPS2_SUPPORT:Ljava/lang/String; = "persist.radio.wifi.wps2support"

.field private static final KEY_PROP_WPS_TEST_MODE:Ljava/lang/String; = "persist.radio.hotspot.probe.rq"

.field private static final MASK_8_BIT:J = 0xffL

.field private static final MASK_HIGH_16_BIT:J = -0x10000L

.field private static final MASK_HIGH_8_BIT:J = 0xff00L

.field private static final TAG:Ljava/lang/String; = "EM/WiFi"

.field private static final VALUE_0:Ljava/lang/String; = "0"

.field private static final VALUE_1:Ljava/lang/String; = "1"

.field private static final VALUE_FALSE:Ljava/lang/String; = "false"

.field private static final VALUE_TRUE:Ljava/lang/String; = "true"


# instance fields
.field private mCbCtia:Landroid/widget/CheckBox;

.field private mCbOpenWps2:Landroid/widget/CheckBox;

.field private mCbWfa:Landroid/widget/CheckBox;

.field private mCbWps:Landroid/widget/CheckBox;

.field private mChipID:I

.field private final mHandler:Landroid/os/Handler;

.field private mListTestItem:Landroid/widget/ListView;

.field private mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 65
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 93
    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 94
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I

    .line 95
    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    .line 96
    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mListTestItem:Landroid/widget/ListView;

    .line 97
    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWfa:Landroid/widget/CheckBox;

    .line 98
    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbCtia:Landroid/widget/CheckBox;

    .line 99
    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbOpenWps2:Landroid/widget/CheckBox;

    .line 100
    iput-object v1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWps:Landroid/widget/CheckBox;

    .line 102
    new-instance v0, Lcom/mediatek/engineermode/wifi/WiFi$1;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/WiFi$1;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/engineermode/wifi/WiFi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFi;->checkWiFiChipStatus()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/engineermode/wifi/WiFi;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I

    return v0
.end method

.method static synthetic access$1000(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/mediatek/engineermode/wifi/WiFi;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput p1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I

    return p1
.end method

.method static synthetic access$200(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mListTestItem:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mediatek/engineermode/wifi/WiFi;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 65
    invoke-direct {p0}, Lcom/mediatek/engineermode/wifi/WiFi;->showVersion()V

    return-void
.end method

.method static synthetic access$400(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWfa:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$500(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbCtia:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbOpenWps2:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$700(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/widget/CheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWps:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mediatek/engineermode/wifi/WiFi;)Landroid/net/wifi/WifiManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/mediatek/engineermode/wifi/WiFi;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    return-object v0
.end method

.method static synthetic access$902(Lcom/mediatek/engineermode/wifi/WiFi;Lcom/mediatek/engineermode/wifi/WiFiStateManager;)Lcom/mediatek/engineermode/wifi/WiFiStateManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    return-object p1
.end method

.method private checkWiFiChipStatus()V
    .locals 1

    .prologue
    .line 360
    iget v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I

    sparse-switch v0, :sswitch_data_0

    .line 375
    :goto_0
    :sswitch_0
    return-void

    .line 362
    :sswitch_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 367
    :sswitch_2
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 360
    :sswitch_data_0
    .sparse-switch
        -0x4 -> :sswitch_2
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_2
        -0x1 -> :sswitch_1
        0x5920 -> :sswitch_0
        0x6620 -> :sswitch_0
    .end sparse-switch
.end method

.method private showVersion()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 314
    const v4, 0x7f0b04a1

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 315
    .local v0, mVersion:Landroid/widget/TextView;
    sget-boolean v4, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v4, :cond_1

    .line 316
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 317
    .local v2, stringBuild:Ljava/lang/StringBuilder;
    const-string v4, "VERSION: CHIP = MT"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 318
    const/4 v4, 0x1

    new-array v3, v4, [J

    .line 319
    .local v3, version:[J
    const-wide/16 v4, 0x2f

    invoke-static {v4, v5, v3}, Lcom/mediatek/engineermode/wifi/EMWifi;->getATParam(J[J)I

    move-result v1

    .line 320
    .local v1, result:I
    if-nez v1, :cond_0

    .line 321
    const-string v4, "EM/WiFi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "version number is: 0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-wide v6, v3, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    aget-wide v4, v3, v8

    const-wide/32 v6, -0x10000

    and-long/2addr v4, v6

    const/16 v6, 0x10

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    const-string v4, "  FW VER = v"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    aget-wide v4, v3, v8

    const-wide/32 v6, 0xff00

    and-long/2addr v4, v6

    const/16 v6, 0x8

    shr-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    aget-wide v4, v3, v8

    const-wide/16 v6, 0xff

    and-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 335
    .end local v1           #result:I
    .end local v2           #stringBuild:Ljava/lang/StringBuilder;
    .end local v3           #version:[J
    :goto_0
    const-string v4, "EM/WiFi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wifi Chip Version is: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    return-void

    .line 330
    .restart local v1       #result:I
    .restart local v2       #stringBuild:Ljava/lang/StringBuilder;
    .restart local v3       #version:[J
    :cond_0
    const-string v4, "VERSION: Get fail"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 333
    .end local v1           #result:I
    .end local v2           #stringBuild:Ljava/lang/StringBuilder;
    .end local v3           #version:[J
    :cond_1
    const-string v4, "VERSION: UNKNOWN"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x1

    .line 129
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 130
    const v0, 0x7f03009c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 131
    const v0, 0x7f0b049d

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWfa:Landroid/widget/CheckBox;

    .line 132
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWfa:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wifi/WiFi$2;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wifi/WiFi$2;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v0, 0x7f0b049e

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbCtia:Landroid/widget/CheckBox;

    .line 140
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbCtia:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wifi/WiFi$3;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wifi/WiFi$3;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f0b049f

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbOpenWps2:Landroid/widget/CheckBox;

    .line 148
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbOpenWps2:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wifi/WiFi$4;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wifi/WiFi$4;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    const v0, 0x7f0b04a0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWps:Landroid/widget/CheckBox;

    .line 156
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWps:Landroid/widget/CheckBox;

    new-instance v1, Lcom/mediatek/engineermode/wifi/WiFi$5;

    invoke-direct {v1, p0}, Lcom/mediatek/engineermode/wifi/WiFi$5;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 164
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 166
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 167
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 192
    :goto_0
    return-void

    .line 170
    :cond_0
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    if-eq v2, v0, :cond_1

    .line 171
    invoke-virtual {p0, v2}, Landroid/app/Activity;->showDialog(I)V

    goto :goto_0

    .line 175
    :cond_1
    const v0, 0x7f0b049c

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mListTestItem:Landroid/widget/ListView;

    .line 176
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mListTestItem:Landroid/widget/ListView;

    if-nez v0, :cond_2

    .line 177
    const-string v0, "EM/WiFi"

    const-string v1, "findViewById(R.id.ListView_WiFi) failed"

    invoke-static {v0, v1}, Lcom/mediatek/xlog/Xlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :goto_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->showDialog(I)V

    .line 182
    new-instance v0, Lcom/mediatek/engineermode/wifi/WiFi$6;

    invoke-direct {v0, p0}, Lcom/mediatek/engineermode/wifi/WiFi$6;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 191
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/wifi/WifiStateListener;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 179
    :cond_2
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mListTestItem:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_1
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .parameter "id"

    .prologue
    const v5, 0x7f0801df

    const/4 v4, 0x0

    .line 196
    const/4 v1, 0x0

    .line 197
    .local v1, dialog:Landroid/app/Dialog;
    const/4 v0, 0x0

    .line 198
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    packed-switch p1, :pswitch_data_0

    .line 248
    const-string v3, "EM/WiFi"

    const-string v4, "error dialog ID"

    invoke-static {v3, v4}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    :goto_0
    return-object v1

    .line 200
    :pswitch_0
    new-instance v2, Landroid/app/ProgressDialog;

    invoke-direct {v2, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 201
    .local v2, innerDialog:Landroid/app/ProgressDialog;
    const v3, 0x7f0801d6

    invoke-virtual {v2, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 202
    const v3, 0x7f0801d7

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 204
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 205
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 206
    move-object v1, v2

    .line 207
    goto :goto_0

    .line 209
    .end local v2           #innerDialog:Landroid/app/ProgressDialog;
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 210
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0801d4

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 211
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 212
    const v3, 0x7f0801d5

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 213
    new-instance v3, Lcom/mediatek/engineermode/wifi/WiFi$7;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/wifi/WiFi$7;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 219
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 220
    goto :goto_0

    .line 222
    :pswitch_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 223
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0801d8

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 224
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 225
    const v3, 0x7f0801d9

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 226
    new-instance v3, Lcom/mediatek/engineermode/wifi/WiFi$8;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/wifi/WiFi$8;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 232
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 233
    goto :goto_0

    .line 235
    :pswitch_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .end local v0           #builder:Landroid/app/AlertDialog$Builder;
    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 236
    .restart local v0       #builder:Landroid/app/AlertDialog$Builder;
    const v3, 0x7f0801da

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 238
    const v3, 0x7f0801db

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 239
    new-instance v3, Lcom/mediatek/engineermode/wifi/WiFi$9;

    invoke-direct {v3, p0}, Lcom/mediatek/engineermode/wifi/WiFi$9;-><init>(Lcom/mediatek/engineermode/wifi/WiFi;)V

    invoke-virtual {v0, v5, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 246
    goto/16 :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWiFiStateManager:Lcom/mediatek/engineermode/wifi/WiFiStateManager;

    .line 346
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/mediatek/engineermode/wifi/WifiStateListener;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/content/ContextWrapper;->stopService(Landroid/content/Intent;)Z

    .line 347
    sget-boolean v0, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    if-eqz v0, :cond_0

    .line 348
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->setNormalMode()I

    .line 349
    invoke-static {}, Lcom/mediatek/engineermode/wifi/EMWifi;->unInitial()I

    .line 350
    sput-boolean v2, Lcom/mediatek/engineermode/wifi/EMWifi;->sIsInitialed:Z

    .line 351
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 353
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 354
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 273
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const-string v1, "EM/WiFi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "-->onItemClick, item index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v0, 0x0

    .line 275
    .local v0, intent:Landroid/content/Intent;
    const/16 v1, 0x6620

    iget v2, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I

    if-ne v1, v2, :cond_0

    .line 276
    packed-switch p3, :pswitch_data_0

    .line 300
    :goto_0
    if-nez v0, :cond_1

    .line 301
    const v1, 0x7f0801dd

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 303
    const-string v1, "EM/WiFi"

    const-string v2, "select test item error"

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    :goto_1
    return-void

    .line 278
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/wifi/WiFiTx6620;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 279
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 281
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/wifi/WiFiRx6620;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 282
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 284
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/wifi/WiFiMcr;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 285
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 287
    :pswitch_3
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/wifi/WiFiEeprom;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 288
    .restart local v0       #intent:Landroid/content/Intent;
    goto :goto_0

    .line 290
    :pswitch_4
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-class v1, Lcom/mediatek/engineermode/FeatureHelpPage;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 291
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v1, "helpTitle"

    const v2, 0x7f08047a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 292
    const-string v1, "helpMessage"

    const v2, 0x7f08022a

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 298
    :cond_0
    const-string v1, "EM/WiFi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknown chip ID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/mediatek/xlog/Xlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 305
    :cond_1
    const-string v1, "WiFiChipID"

    iget v2, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mChipID:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 306
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 276
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method protected onResume()V
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 261
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 262
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWfa:Landroid/widget/CheckBox;

    const-string v3, "true"

    const-string v4, "persist.radio.wifi.wpa2wpaalone"

    const-string v5, "false"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 264
    iget-object v2, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbCtia:Landroid/widget/CheckBox;

    const-string v3, "mediatek.wlan.ctia"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-ne v0, v3, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 265
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbOpenWps2:Landroid/widget/CheckBox;

    const-string v1, "true"

    const-string v2, "persist.radio.wifi.wps2support"

    const-string v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 267
    iget-object v0, p0, Lcom/mediatek/engineermode/wifi/WiFi;->mCbWps:Landroid/widget/CheckBox;

    const-string v1, "true"

    const-string v2, "persist.radio.hotspot.probe.rq"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 269
    return-void

    :cond_0
    move v0, v1

    .line 264
    goto :goto_0
.end method

.method protected onStart()V
    .locals 0

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 257
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 340
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 341
    return-void
.end method
